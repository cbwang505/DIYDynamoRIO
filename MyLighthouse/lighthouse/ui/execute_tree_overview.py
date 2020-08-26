import os
import logging
import weakref
import idaapi
from PyQt5.QtWidgets import QHeaderView

from lighthouse.ui.execute_tree import ExecuteTreeView
from lighthouse.ui.functrace_table import FunctionTraceTableModel, FunctionTraceTableController, FunctionTraceTableView
from lighthouse.util.qt import *
from lighthouse.util.misc import plugin_resource
from lighthouse.util.disassembler import disassembler, DockableWindow
from lighthouse.composer import ComposingShell



logger = logging.getLogger("Lighthouse.UI.Overview")

#------------------------------------------------------------------------------
# FunctionTrace Overview
#------------------------------------------------------------------------------



class ExecuteTreeOverview(DockableWindow):
    def __init__(self, core):
        super(ExecuteTreeOverview, self).__init__(
            "ExecuteTreeOverview",
            plugin_resource(os.path.join("icons", "overview.png"))
        )
        self._core = core
        self._visible = False
        self._tree_view= None
        # see the EventProxy class below for more details
        # self._events = EventProxy(self)
        # self._widget.installEventFilter(self._events)

        # initialize the plugin UI
        self._ui_init()
        self._ui_layout()

        # refresh the data UI such that it reflects the most recent data
        self.refresh()

        # --------------------------------------------------------------------------
        # Pseudo Widget Functions
        # --------------------------------------------------------------------------

    def show(self):
        """
        Show the FunctionTraceOverview UI / widget.
        """
        self.refresh()
        super(ExecuteTreeOverview, self).show()
        self._visible = True

        #
        # if no metadata had been collected prior to showing the FunctionTrace
        # overview (eg, through loading FunctionTrace), we should do that now
        # before the user can interact with the view...
        #

        # if not self._core.director.metadata.cached:
        #     self._table_controller.refresh_metadata()
    def isVisible(self):
        return self._visible

    #--------------------------------------------------------------------------
    # Initialization - UI
    #--------------------------------------------------------------------------

    def _ui_init(self):
        self._tree_model = ExecuteTreeModel(self._core.director, self._widget)
        self._tree_controller = ExecuteTreeController(self._tree_model)
        self._tree_view = ExecuteTreeView(self._tree_controller, self._tree_model,self._widget)


    def _ui_layout(self):
        """
        Layout the major UI elements of the widget.
        """

        # layout the major elements of our widget
        layout = QtWidgets.QHBoxLayout()

        layout.addWidget(self._tree_view)

        # apply the layout to the containing form
        self._widget.setLayout(layout)

    @disassembler.execute_ui
    def refresh(self):
        """
        Refresh the FunctionTrace Overview.
        """
        self._tree_controller.refresh_metadata()
        self._tree_model.refresh()
        self._tree_view.refresh()


class ExecuteTreeModel(object):
    def __init__(self, director, parent=None):
        self._director = director
        self.main_data=None
        self.title=None
    def refresh(self):
        pass

class ExecuteTreeController(object):
    def __init__(self, model):
        self._model = model

    def refresh_metadata(self):
        """
        Hard refresh of the director and table metadata layers.
        """
        disassembler.replace_wait_box("Building execute trace metadata...")

        self._model._director.refresh_execute_trace(self._model)

        # ensure the table's model gets refreshed
        disassembler.replace_wait_box("Refreshing execute trace Overview...")


    def jump_to_func(self,addr,mod):
        if mod==self._model._director.main_module.id:
            idaapi.jumpto(self._model._director.metadata.imagebase+addr)

