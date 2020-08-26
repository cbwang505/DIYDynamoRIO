import os
import time
import string
import logging
from operator import itemgetter, attrgetter



from lighthouse.util import lmsg
from lighthouse.util.qt import *
from lighthouse.util.misc import mainthread
from lighthouse.util.disassembler import disassembler
from lighthouse.coverage import FunctionCoverage, BADADDR


logger = logging.getLogger("Lighthouse.UI.EexcTree")

class ExecuteTreeView(QtWidgets.QTreeWidget):
    def __init__(self,controller, model, parent=None):
        super(ExecuteTreeView, self).__init__(parent)
        # underlying table controller object (MVC)
        self._controller = controller

        # underlying data model for the coverage table
        self._model = model
        self.setObjectName(self.__class__.__name__)
        self.setColumnCount(3)
        self.setColumnHidden(1, True)  # reference address
        self.setColumnHidden(2, True)  # reference address
        self.itemClicked.connect(self._onClickItem)
        self.populate()

    def buid_sub_tree(self,ls,root):
        for funcov in ls:
            sub = QtWidgets.QTreeWidgetItem(root)  # QTreeWidgetItem object: root
            sub.setText(0, funcov.get_to_func_name_full())  # set text of root1
            sub.setText(1, funcov.get_to_address_hex_str())  # reference address
            sub.setText(2, str(funcov.to_mod))  # reference to_mod
            self.buid_sub_tree(funcov.sub_func_coverage,sub)

    def populate(self):
        self.clear()
        if self._model.main_data is None:
            return
        if self._model.title is not None:
            self.setHeaderLabel(self._model.title)
        for funcov in self._model.main_data:
            root = QtWidgets.QTreeWidgetItem(self)  # QTreeWidgetItem object: root
            root.setText(0, funcov.get_to_func_name_full())  # set text of root1
            root.setText(1, funcov.get_to_address_hex_str())  # reference address
            root.setText(2, str(funcov.to_mod))  # reference to_mod
            self.buid_sub_tree(funcov.sub_func_coverage, root)

    @disassembler.execute_ui
    def refresh(self):
        self.populate()
        # all done
        disassembler.hide_wait_box()

    def _onClickItem(self, item):

        xref = int(item.text(1), 16)
        mod = int(item.text(2))
        self._controller.jump_to_func(xref,mod)
