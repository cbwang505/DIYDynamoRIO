import os
import logging
import weakref

from lighthouse.ui.functrace_table import FunctionTraceTableModel, FunctionTraceTableController, FunctionTraceTableView
from lighthouse.util.qt import *
from lighthouse.util.misc import plugin_resource
from lighthouse.util.disassembler import disassembler, DockableWindow
from lighthouse.composer import ComposingShell



logger = logging.getLogger("Lighthouse.UI.Overview")

#------------------------------------------------------------------------------
# FunctionTrace Overview
#------------------------------------------------------------------------------

class FunctionTraceOverview(DockableWindow):
    """
    The FunctionTrace Overview Widget.
    """

    def __init__(self, core):
        super(FunctionTraceOverview, self).__init__(
            "FunctionTraceOverview",
            plugin_resource(os.path.join("icons", "overview.png"))
        )
        self._core = core
        self._visible = False

        # see the EventProxy class below for more details
        self._events = EventProxy(self)
        self._widget.installEventFilter(self._events)

        # initialize the plugin UI
        self._ui_init()

        # refresh the data UI such that it reflects the most recent data
        self.refresh()

    #--------------------------------------------------------------------------
    # Pseudo Widget Functions
    #--------------------------------------------------------------------------

    def show(self):
        """
        Show the FunctionTraceOverview UI / widget.
        """
        self.refresh()
        super(FunctionTraceOverview, self).show()
        self._visible = True

        #
        # if no metadata had been collected prior to showing the FunctionTrace
        # overview (eg, through loading FunctionTrace), we should do that now
        # before the user can interact with the view...
        #

        if not self._core.director.metadata.cached:
            self._table_controller.refresh_metadata()

    def terminate(self):
        """
        The FunctionTraceOverview is being hidden / deleted.
        """
        self._visible = False
        self._combobox = None
        self._shell = None
        self._table_view = None
        self._table_controller = None
        self._table_model = None
        self._widget = None

    def isVisible(self):
        return self._visible

    #--------------------------------------------------------------------------
    # Initialization - UI
    #--------------------------------------------------------------------------

    def _ui_init(self):
        """
        Initialize UI elements.
        """

        # initialize our ui elements
        self._ui_init_table()

        self._ui_init_signals()

        # layout the populated ui just before showing it
        self._ui_layout()

    def _ui_init_table(self):
        """
        Initialize the FunctionTrace table.
        """
        self._table_model = FunctionTraceTableModel(self._core.director, self._widget)
        self._table_controller = FunctionTraceTableController(self._table_model)
        self._table_view = FunctionTraceTableView(
            self._table_controller,
            self._table_model,
            self._widget
        )


    def _ui_init_signals(self):
        pass

    def _ui_layout(self):
        """
        Layout the major UI elements of the widget.
        """

        # layout the major elements of our widget
        layout = QtWidgets.QGridLayout()
        layout.setSpacing(get_dpi_scale()*5.0)
        layout.addWidget(self._table_view)

        # apply the layout to the containing form
        self._widget.setLayout(layout)

    #--------------------------------------------------------------------------
    # Signal Handlers
    #--------------------------------------------------------------------------

    #--------------------------------------------------------------------------
    # Refresh
    #--------------------------------------------------------------------------

    @disassembler.execute_ui
    def refresh(self):
        """
        Refresh the FunctionTrace Overview.
        """
        self._table_model.refresh()


#------------------------------------------------------------------------------
# Qt Event Filter
#------------------------------------------------------------------------------

debugger_docked = False

class EventProxy(QtCore.QObject):

    def __init__(self, target):
        super(EventProxy, self).__init__()
        self._target = target

    def eventFilter(self, source, event):

        #
        # hook the destroy event of the FunctionTrace overview widget so that we can
        # cleanup after ourselves in the interest of stability
        #

        if int(event.type()) == 16: # NOTE/COMPAT: QtCore.QEvent.Destroy not in IDA7?
            self._target.terminate()

        #
        # this is an unknown event, but it seems to fire when the widget is
        # being saved/restored by a QMainWidget. we use this to try and ensure
        # the FunctionTrace Overview stays docked when flipping between Reversing
        # and Debugging states in IDA.
        #
        # See issue #16 on github for more information.
        #

        if int(event.type()) == 2002 and disassembler.NAME == "IDA":
            import idaapi

            #
            # if the general registers IDA View exists, we make the assumption
            # that the user has probably started debugging.
            #

            # NOTE / COMPAT:
            if disassembler.USING_IDA7API:
                debug_mode = bool(idaapi.find_widget("General registers"))
            else:
                debug_mode = bool(idaapi.find_tform("General registers"))

            #
            # if this is the first time the user has started debugging, dock
            # the FunctionTrace overview in the debug QMainWidget workspace. its
            # dock status / position should persist future debugger launches.
            #

            global debugger_docked
            if debug_mode and not debugger_docked:
                idaapi.set_dock_pos(self._target._title, "Structures", idaapi.DP_TAB)
                debugger_docked = True

        return False
