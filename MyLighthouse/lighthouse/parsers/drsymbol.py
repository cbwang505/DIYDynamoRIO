#!/usr/bin/python
import collections
import os
import sys
import mmap
import struct
import re
from ctypes import *
import re
from lighthouse.util.disassembler import disassembler
#------------------------------------------------------------------------------
# drcov log parser
#------------------------------------------------------------------------------

from lighthouse.parsers.drcov import DrcovModule

class DrSymbolData(object):
    """
    A drcov log parser.
    """
    def __init__(self, filepath=None):

        # original filepath
        self.filepath = filepath
        self.modules = []
        self.all_symbol = []
        # drcov header attributes
        self.version = 0
        self.flavor  = None
        self._parse_symbol_file(filepath)

    def _parse_symbol_file(self, filepath):
        with open(filepath, "rb") as f:
            all_lines = len(f.read().splitlines())
            f.seek(0)

            rexp = "(?P<addr>[0-9a-fA-F]+)(\s+)(?P<symbol>.+)"
            reg = re.compile(rexp)
            self._parse_module_symbol(f, reg, all_lines)
            self._parse_symbol_header(f)
            self._parse_module_table(f)
            self._fix_symbol(f)
            disassembler.replace_wait_box("Building module_symbol metadata Successfully")

    def _parse_symbol_header(self, f):
        while 1:
            module_line = f.readline().strip()
            if "start" in module_line:
                break
            else:
                continue
    def _parse_module_table(self, f):

        while 1:
            data = f.readline().strip()
            if "Closing" in data:
                break
            else:
                module = SymbolModule(data)
                self.modules.append(module)

    def _parse_module_symbol(self, f, reg, all_lines):
        disassembler.replace_wait_box("Building module_symbol metadata...")
        len_idx = 1
        while 1:
            try:
                module_line = f.readline().strip()
                if ("Opened" in module_line or "start" in module_line) and "!" not in module_line:
                    break
                if module_line == None or module_line == "":
                    break
                else:
                    len_idx = len_idx + 1
                    disassembler.replace_wait_box("Building module symbol metadata %u/%u" % (len_idx, all_lines))
                    regMatch = reg.match(module_line)
                    linebits = regMatch.groupdict()
                    dic = {}
                    for k, v in linebits.iteritems():
                        if k == "addr":
                            dic["addr"] = v
                        if k == "symbol":
                            module = v[0:v.find("!")]
                            symbol = v[v.find("!")+1:]
                            dic["module"] = module
                            dic["symbol"] = symbol
                    self.all_symbol.append(dic)
            except Exception as e:
                continue


    def _fix_symbol(self, f):
        len_idx = 1;
        all_lines = len(self.all_symbol)
        for dic in self.all_symbol:
            len_idx = len_idx + 1
            disassembler.replace_wait_box("Fixing module symbol metadata %u/%u" % (len_idx, all_lines))
            for md in self.modules:
                if md.name == dic["module"]:
                    offset = int(dic["addr"], 16) - int(md.base, 16)
                    md.SymbolDic[offset] = dic["symbol"].split(' ')[0] if "" in dic["symbol"] else dic["symbol"]


#------------------------------------------------------------------------------
# drcov module parser
#------------------------------------------------------------------------------

class SymbolModule(object):
    """
    Parser & wrapper for module details as found in a drcov coverage log.

    A 'module' in this context is a .EXE, .DLL, ELF, MPachO, etc.
    """
    def __init__(self, module_data):
        self.id = 0
        self.base = 0
        self.end = 0
        self.name = ""
        self.SymbolDic = collections.defaultdict(int)
        rexp="(?P<base>[0-9a-fA-F]+)(\s+)(?P<end>[0-9a-fA-F]+)(\s+)(?P<name>\S+)(.*)"
        reg = re.compile(rexp)
        self._parse_module(module_data,reg)

    def _parse_module(self, module_line,reg):
        """
        Parse a module table entry.
        """
        regMatch = reg.match(module_line)
        linebits = regMatch.groupdict()
        for k, v in linebits.iteritems():
            if k == "base":
                self.base=v
            if k == "end":
                self.end=v
            if k == "name":
                self.name=v



