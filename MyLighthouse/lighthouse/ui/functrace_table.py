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

logger = logging.getLogger("Lighthouse.UI.Table")

#------------------------------------------------------------------------------
# FunctionTraceTableView
#------------------------------------------------------------------------------

class FunctionTraceTableView(QtWidgets.QTableView):
    """
    The Coverage Table View (UI)
    """

    def __init__(self, controller, model, parent=None):
        super(FunctionTraceTableView, self).__init__(parent)
        self.setObjectName(self.__class__.__name__)

        # underlying table controller object (MVC)
        self._controller = controller

        # underlying data model for the coverage table
        self._model = model
        self.setModel(self._model)

        # configure the widget for use
        self._ui_init()

    #--------------------------------------------------------------------------
    # QTableView Overloads
    #--------------------------------------------------------------------------

    def keyPressEvent(self, event):
        """
        Overload QTableView key press events.
        """

        # remap h/j/k/l to arrow keys (VIM bindings)
        if event.key() == QtCore.Qt.Key_J:
            event = remap_key_event(event, QtCore.Qt.Key_Down)
        elif event.key() == QtCore.Qt.Key_K:
            event = remap_key_event(event, QtCore.Qt.Key_Up)
        elif event.key() == QtCore.Qt.Key_H:
            event = remap_key_event(event, QtCore.Qt.Key_Left)
        elif event.key() == QtCore.Qt.Key_L:
            event = remap_key_event(event, QtCore.Qt.Key_Right)

        # handle the keypress as normal
        super(FunctionTraceTableView, self).keyPressEvent(event)

        #
        # after handling the keypress, immediately repaint the table. we use
        # this to try to cut down on flicker / row skipping while scrolling
        # using the keypad
        #

        self.repaint()
        flush_qt_events()

    #--------------------------------------------------------------------------
    # Initialization - UI
    #--------------------------------------------------------------------------

    def _ui_init(self):
        """
        Initialize UI elements.
        """
        self._ui_init_table()
        self._ui_init_table_ctx_menu_actions()
        self._ui_init_header_ctx_menu_actions()
        self._ui_init_signals()

    def _ui_init_table(self):
        """
        Initialize the coverage table.
        """
        palette = self._model._director._palette
        self.setFocusPolicy(QtCore.Qt.StrongFocus)

        # widget style
        self.setStyleSheet(
            "QTableView {"
            "  gridline-color: black;"
            "  background-color: %s;" % palette.overview_bg.name() +
            #"  color: %s;" % palette.combobox_fg.name() +
            "  outline: none; "
            "} " +
            "QTableView::item:selected {"
            "  color: white; "
            "  background-color: %s;" % palette.selection.name() +
            "}"
        )

        # these properties will allow the user shrink the table to any size
        self.setMinimumHeight(0)
        self.setSizePolicy(
            QtWidgets.QSizePolicy.Ignored,
            QtWidgets.QSizePolicy.Ignored
        )

        #
        # Column Width
        #

        # get the font used by the table headers
        title_font = self._model.headerData(0, QtCore.Qt.Horizontal, QtCore.Qt.FontRole)
        title_fm = QtGui.QFontMetricsF(title_font)

        # get the font used by the table cell entries
        entry_font = self._model.data(0, QtCore.Qt.FontRole)
        entry_fm = QtGui.QFontMetricsF(entry_font)

        # set the initial column widths based on their title or contents
        for i in xrange(self._model.columnCount()):

            # determine the pixel width of the column header text
            title_text = self._model.headerData(i, QtCore.Qt.Horizontal)
            title_rect = title_fm.boundingRect(title_text)

            # determine the pixel width of sample column entry text
            entry_text = self._model.SAMPLE_CONTENTS[i]
            entry_rect = entry_fm.boundingRect(entry_text)

            # select the lager of the two potential column widths
            column_width = max(title_rect.width(), entry_rect.width())

            # pad the final column width to make the table less dense
            column_width = int(column_width * 1.2)

            # save the final column width
            self.setColumnWidth(i, column_width)

        #
        # Misc
        #

        # clicking the table will select the entire row, not a single cell
        self.setSelectionBehavior(QtWidgets.QAbstractItemView.SelectRows)

        # more code-friendly, readable aliases
        vh = self.verticalHeader()
        hh = self.horizontalHeader()

        # hide the *vertical* (row) headers because we don't use them
        vh.hide()

        # stretch last table column (which is blank) to fill remaining space
        hh.setStretchLastSection(True)

        # disable bolding of table column headers when table is selected
        hh.setHighlightSections(False)

        # allow sorting of the table by clicking table headers, and set the
        # default table state to be sorted by function address
        self.setSortingEnabled(True)
        hh.setSortIndicator(
            FunctionTraceTableModel.FuncID,
            QtCore.Qt.AscendingOrder
        )

        #
        # Row Height
        #

        # force the table row heights to be fixed height
        if USING_PYQT5:
            vh.setSectionResizeMode(QtWidgets.QHeaderView.Fixed)
        else:
            vh.setResizeMode(QtWidgets.QHeaderView.Fixed)

        # specify the fixed pixel height for the table headers
        spacing = title_fm.height() - title_fm.xHeight()
        tweak = 26*get_dpi_scale() - spacing
        hh.setFixedHeight(entry_fm.height()+tweak)

        # specify the fixed pixel height for the table rows
        # NOTE: don't ask too many questions about this voodoo math :D
        spacing = entry_fm.height() - entry_fm.xHeight()
        tweak = (17*get_dpi_scale() - spacing)/get_dpi_scale()
        vh.setDefaultSectionSize(entry_fm.height()+tweak)

    def _ui_init_table_ctx_menu_actions(self):
        """
        Initialize the right click context menu actions for the table view.
        """

        # function actions
        self._action_trace = QtWidgets.QAction("Trace Coverage", None)


    def _ui_init_header_ctx_menu_actions(self):
        """
        Initialize the right click context menu actions for the table header.
        """
        self._action_alignment = QtWidgets.QAction("Center Aligned", None)
        self._action_alignment.setCheckable(True)
        self._action_alignment.setChecked(True)

    def _ui_init_signals(self):
        """
        Connect UI signals.
        """

        # jump to disassembly on table row double click
        self.doubleClicked.connect(self._ui_entry_double_click)

        # right click popup menu (table)
        self.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
        self.customContextMenuRequested.connect(self._ui_table_ctx_menu_handler)

        # right click popup menu (table header)
        hh = self.horizontalHeader()
        hh.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
        hh.customContextMenuRequested.connect(self._ui_header_ctx_menu_handler)
        self.clicked.connect(self._ui_entry_tooltip)
    #--------------------------------------------------------------------------
    # Signal Handlers
    #--------------------------------------------------------------------------

    def _ui_entry_tooltip(self, index): #--------------------------------------------------------------------------
    # Signal Handlers
        self.setToolTip(self._model.data_display(index))


    #--------------------------------------------------------------------------

    def _ui_entry_double_click(self, index):
        pass
        """
        Handle double click event on the coverage table.
        pass
        A double click on the coverage table view will jump the user to
        the corresponding function in the IDA disassembly view.
        """
        # self._controller.navigate_to_function(index.row())


    def _ui_table_ctx_menu_handler(self, position):
        """
        Handle right click context menu event on the coverage table.
        """

        # create a right click menu based on the state and context
        ctx_menu = self._populate_table_ctx_menu()
        if not ctx_menu:
            return

        # show the popup menu to the user, and wait for their selection
        action = ctx_menu.exec_(self.viewport().mapToGlobal(position))

        # process the user action
        self._process_table_ctx_menu_action(action)

    def _ui_header_ctx_menu_handler(self, position):
        """
        Handle right click context menu event on the coverage table header.
        """
        hh = self.horizontalHeader()

        # get the table column where the right-click occurred
        column = hh.logicalIndexAt(position)

        # create a right click menu based on the state and context
        ctx_menu = self._populate_header_ctx_menu()
        if not ctx_menu:
            return

        # show the popup menu to the user, and wait for their selection
        action = ctx_menu.exec_(hh.viewport().mapToGlobal(position))

        # process the user action
        self._process_header_ctx_menu_action(action, column)

    #--------------------------------------------------------------------------
    # Context Menu (Table Rows)
    #--------------------------------------------------------------------------

    def _populate_table_ctx_menu(self):
        """
        Populate a context menu for the table view based on selection.

        Returns a populated QMenu, or None.
        """

        # get the list rows currently selected in the coverage table
        selected_rows = self.selectionModel().selectedRows()
        if len(selected_rows) == 0:
            return None

        # the context menu we will dynamically populate
        ctx_menu = QtWidgets.QMenu()

        #
        # if there is only one table row selected (a function entry), then
        # show the menu actions available for a single function such as
        # copy function name, address, or renaming the function.
        #
        ctx_menu.addAction(self._action_trace)


        # return the completed context menu
        return ctx_menu

    def _process_table_ctx_menu_action(self, action):
        """
        Process the given (user selected) table view context menu action.
        """

        # a right click menu action was not clicked. nothing else to do
        if not action:
            return

        # get the list rows currently selected in the coverage table
        row_indexes = self.selectionModel().selectedRows()
        rows = [index.row() for index in row_indexes]
        if len(rows) == 0:
            return

        # handle the 'Rename' action (only applies to a single function)
        if action == self._action_trace:
            self._controller.trace_table_function(rows)



    #--------------------------------------------------------------------------
    # Context Menu (Table Header)
    #--------------------------------------------------------------------------

    def _populate_header_ctx_menu(self):
        """
        Populate a context menu for the table header.

        Return a populated QMenu, or None.
        """
        ctx_menu = QtWidgets.QMenu()
        ctx_menu.addAction(self._action_alignment)
        return ctx_menu

    def _process_header_ctx_menu_action(self, action, column):
        """
        Process the given (user selected) table header context menu action.
        """

        # a right click menu action was not clicked. nothing else to do
        if not action:
            return

        # handle the 'Center Aligned' toggle action
        if action == self._action_alignment:
            self._controller.toggle_column_alignment(column)

#------------------------------------------------------------------------------
# CoverageTableController
#------------------------------------------------------------------------------

class FunctionTraceTableController(object):
    """
    The Coverage Table Controller (Logic)
    """

    def __init__(self, model):
        self._model = model
        self._last_directory = None

    def trace_table_function(self,rows):
        funcid_List=[]
        for rw in rows:
         dt = self._model.row2func[rw]
         funcid_List.append(dt.funcid)
        created_coverage, errors =self._model._director.rebuid__coverage_from_drcov_list(funcid_List)
        self._model._director.select_coverage(created_coverage[0])
        self._model._director._core.open_coverage_overview()

    def toggle_column_alignment(self, column):
        """
        Toggle the text alignment of given column.
        """
        index = self._model.index(0, column)
        alignment = self._model.data(index, QtCore.Qt.TextAlignmentRole)

        # toggle the column alignment between center (default) and left
        if alignment == QtCore.Qt.AlignCenter:
            new_alignment = QtCore.Qt.AlignLeft | QtCore.Qt.AlignVCenter
        else:
            new_alignment = QtCore.Qt.AlignCenter

        # send the new alignment to the model
        self._model.set_column_alignment(column, new_alignment)

    def refresh_metadata(self):
        """
        Hard refresh of the director and table metadata layers.
        """
        disassembler.show_wait_box("Building database metadata...")
        self._model._director.refresh()

        # ensure the table's model gets refreshed
        disassembler.replace_wait_box("Refreshing Coverage Overview...")
        self._model.refresh()

        # all done
        disassembler.hide_wait_box()


#------------------------------------------------------------------------------
# CoverageTableModel
#------------------------------------------------------------------------------

class FunctionTraceTableModel(QtCore.QAbstractTableModel):
    """
    A Qt model interface to format coverage data for Qt views.
    """

    # named constants for coverage table column indexes
    FuncID  = 0
    TIMESTAMP    = 1
    FUNCADDR    = 2
    RETURNVALUE   = 3
    FUNCARG0     = 4
    FUNCARG1    = 5
    FUNCARG2   = 6
    FUNCARG3 = 7
    FUNCARG4 = 8
    FUNCARG5 = 9
    FUNCARG6 = 10

    METADATA_ATTRIBUTES = [FuncID, TIMESTAMP, RETURNVALUE, FUNCARG0,FUNCARG1,FUNCARG2,FUNCARG3,FUNCARG4,FUNCARG5,FUNCARG6]

    # column index -> object attribute mapping
    COLUMN_TO_FIELD = \
    {
        FuncID:  "funcid",
        TIMESTAMP:    "timestamp",
        FUNCADDR:    "funcaddr",
        RETURNVALUE:   "retval",
        FUNCARG0:     "arg0",
        FUNCARG1:     "arg1",
        FUNCARG2:     "arg2",
        FUNCARG3:     "arg3",
        FUNCARG4:     "arg4",
        FUNCARG5:     "arg5",
        FUNCARG6:     "arg6",

    }

    # column headers of the table
    COLUMN_HEADERS = \
    {
        FuncID:  "Function ID",
        TIMESTAMP:    "Time Stamp",
        FUNCADDR:    "Function Addr",
        RETURNVALUE:   "Return Value",
        FUNCARG0:     "Function Arg0",
        FUNCARG1:     "Function Arg1",
        FUNCARG2:     "Function Arg2",
        FUNCARG3:     "Function Arg3",
        FUNCARG4:     "Function Arg4",
        FUNCARG5:     "Function Arg5",
        FUNCARG6:     "Function Arg6",


    }

    # sample column
    SAMPLE_CONTENTS = \
    [
        " 0x140001b20 ",
        " 0x140001b20140 ",
        " 0x140001b20 ",
        " 0x140001b20 ",
        " 0x140001b20 ",
        " 0x140001b20 ",
        " 0x140001b20 ",
        " 0x140001b20 ",
        " 0x140001b20 ",
        " 0x140001b20 ",
        " 0x140001b20 ",
        " 0x140001b20 ",
        ""
    ]

    def __init__(self, director, parent=None):
        super(FunctionTraceTableModel, self).__init__(parent)
        self._director = director

        # convenience mapping from row_number --> function_address
        self.row2func = {}
        self._row_count = 0



        # a fallback coverage object for functions with no coverage
        self.function_trace_data=[]


        # set the default column text alignment for each column (centered)
        self._default_alignment = QtCore.Qt.AlignCenter
        self._column_alignment = [
            self._default_alignment for x in self.COLUMN_HEADERS
        ]

        # initialize a monospace font to use for table row / cell text
        self._entry_font = MonospaceFont()
        self._entry_font.setStyleStrategy(QtGui.QFont.ForceIntegerMetrics)
        self._entry_font.setPointSizeF(normalize_to_dpi(9))

        # use the default / system font for the column titles
        self._title_font = QtGui.QFont()
        self._title_font.setPointSizeF(normalize_to_dpi(9))

        #----------------------------------------------------------------------
        # Sorting
        #----------------------------------------------------------------------

        # attributes to track the model's last known (column) sort state
        self._last_sort = self.FuncID
        self._last_sort_order = QtCore.Qt.AscendingOrder

        #----------------------------------------------------------------------
        # Filters
        #----------------------------------------------------------------------

        # OPTION: display 0% coverage entries
        self._hide_zero = False

        # OPTION: display functions matching search_string (substring)
        self._search_string = ""

        #----------------------------------------------------------------------
        # Signals
        #----------------------------------------------------------------------

        # register for cues from the director
        self._director.coverage_switched(self._internal_refresh)
        self._director.coverage_modified(self._internal_refresh)
        self._director.metadata_modified(self._data_changed)

    #--------------------------------------------------------------------------
    # QAbstractTableModel Overloads
    #--------------------------------------------------------------------------

    def flags(self, index):
        return QtCore.Qt.ItemIsEnabled | QtCore.Qt.ItemIsSelectable

    def rowCount(self, index=QtCore.QModelIndex()):
        """
        The number of table rows.
        """
        return self._row_count

    def columnCount(self, index=QtCore.QModelIndex()):
        """
        The number of table columns.
        """
        return len(self.COLUMN_HEADERS)

    def headerData(self, column, orientation, role=QtCore.Qt.DisplayRole):
        """
        Define the properties of the table rows & columns.
        """

        if orientation == QtCore.Qt.Horizontal:

            # the title of the header columns has been requested
            if role == QtCore.Qt.DisplayRole:
                return self.COLUMN_HEADERS[column]

            # the text alignment of the header has been requested
            elif role == QtCore.Qt.TextAlignmentRole:

                # center align all columns
                return self._column_alignment[column]

            # font format request
            elif role == QtCore.Qt.FontRole:
                return self._title_font

        # unhandeled header request
        return None

    def data_display(self, index):
        """
               Define how Qt should access the underlying model data.
               """

        # a request has been made for what text to show in a table cell


        # alias the requested column number once, for readability & perf
        column = index.column()

        # lookup the function info for this row
        try:
            dt = self.row2func[index.row()]


        #
        # if we hit a KeyError, it is probably because the database metadata
        # is being refreshed and the model (this object) has yet to be
        # updated.
        #
        # this should only ever happen as a result of the user using the
        # right click 'Refresh metadata' action. And even then, only when
        # a function they undefined in the IDB is visible in the coverage
        # overview table view.
        #
        # In theory, the table should get refreshed *after* the metadata
        # refresh completes. So for now, we simply return return the filler
        # string '?'
        #

        except KeyError:
            return "?"

        #
        # remember, if a function does *not* have coverage data, it will
        # not have an entry in the coverage map. that means we should
        # yield a default, 'blank', coverage item in these instances
        #

        # Coverage % - (by instruction execution)
        if column == self.FuncID:
            return "0x%X" % dt.funcid

        # Function Name
        elif column == self.TIMESTAMP:
            return dt.timestamp

        # Function Address
        elif column == self.FUNCADDR:
            return "0x%X" % dt.funcaddr

        # Basic Blocks
        elif column == self.RETURNVALUE:
            return self._director.get_org_memory_display(dt.funcid,0)

        elif column == self.FUNCARG0:
            return self._director.get_org_memory_display(dt.funcid,1)

        elif column == self.FUNCARG1:
            return self._director.get_org_memory_display(dt.funcid,2)

        elif column == self.FUNCARG2:
            return self._director.get_org_memory_display(dt.funcid,3)

        elif column == self.FUNCARG3:
            return self._director.get_org_memory_display(dt.funcid,4)

        elif column == self.FUNCARG4:
            return self._director.get_org_memory_display(dt.funcid,5)

        elif column == self.FUNCARG5:
            return self._director.get_org_memory_display(dt.funcid,6)

        elif column == self.FUNCARG6:
            return self._director.get_org_memory_display(dt.funcid,7)



        # unhandeled request, nothing to do
        return ''

    def data(self, index, role=QtCore.Qt.DisplayRole):
        """
        Define how Qt should access the underlying model data.
        """

        # a request has been made for what text to show in a table cell
        if role == QtCore.Qt.DisplayRole:

            # alias the requested column number once, for readability & perf
            column = index.column()

            # lookup the function info for this row
            try:
                dt  = self.row2func[index.row()]


            #
            # if we hit a KeyError, it is probably because the database metadata
            # is being refreshed and the model (this object) has yet to be
            # updated.
            #
            # this should only ever happen as a result of the user using the
            # right click 'Refresh metadata' action. And even then, only when
            # a function they undefined in the IDB is visible in the coverage
            # overview table view.
            #
            # In theory, the table should get refreshed *after* the metadata
            # refresh completes. So for now, we simply return return the filler
            # string '?'
            #

            except KeyError:
                return "?"

            #
            # remember, if a function does *not* have coverage data, it will
            # not have an entry in the coverage map. that means we should
            # yield a default, 'blank', coverage item in these instances
            #


            # Coverage % - (by instruction execution)
            if column == self.FuncID:
                return "0x%X" % dt.funcid

            # Function Name
            elif column == self.TIMESTAMP:
                return dt.timestamp

            # Function Address
            elif column == self.FUNCADDR:
                return "0x%X" % dt.funcaddr

            # Basic Blocks
            elif column == self.RETURNVALUE:
                return "0x%X" % dt.retval

            elif column == self.FUNCARG0:
                return "0x%X" % dt.arg0

            elif column == self.FUNCARG1:
                return "0x%X" % dt.arg1

            elif column == self.FUNCARG2:
                return "0x%X" % dt.arg2

            elif column == self.FUNCARG3:
                return "0x%X" % dt.arg3

            elif column == self.FUNCARG4:
                return "0x%X" % dt.arg4

            elif column == self.FUNCARG5:
                return "0x%X" % dt.arg5

            elif column == self.FUNCARG6:
                return "0x%X" % dt.arg6

        # cell background color request
        elif role == QtCore.Qt.BackgroundRole:
            return 0

        # cell text color request
        elif role == QtCore.Qt.ForegroundRole:
            return QtGui.QColor(QtCore.Qt.white)

        # cell font style format request
        elif role == QtCore.Qt.FontRole:
            return self._entry_font

        # cell text alignment request
        elif role == QtCore.Qt.TextAlignmentRole:
            return self._column_alignment[index.column()]

        # unhandeled request, nothing to do
        return None

    #--------------------------------------------------------------------------
    # Sorting
    #--------------------------------------------------------------------------

    def sort(self, column, sort_order):
        """
        Sort the coverage table rows by the selected column, and direction.
        """

        #
        # look up the name of field in the FunctionCoverage class object
        # that we would like to sort by based on the selected column
        #

        try:
            sort_field = self.COLUMN_TO_FIELD[column]

        # column has not been enlightened to sorting
        except KeyError as e:
            logger.warning("TODO/FUTURE: implement column %u sorting?" % column)
            self.layoutChanged.emit()
            return

        #
        # NOTE: attrgetter appears to profile ~8-12% faster than lambdas
        #   accessing the member on the member, hence the strange paradigm
        #

        # sort the table entries by a function metadata attribute
        if column in self.METADATA_ATTRIBUTES:
            sorted_functions = sorted(
                self.function_trace_data,
                key=attrgetter(sort_field),
                reverse=sort_order
            )

            #
            # we sorted only the functions items that have known coverage.
            # but since some functions may not have had coverage, they were
            # not included in the sort.
            #
            # we simply append (or prepend) these unsortable (no coverage)
            # functions to the sorted list as they are still members of
            # the visible set regardless of their coverage status
            #

            #
            # if the sort was descending (100% --> 0%), the no_coverage
            # items (0%) should be appended to the *end*
            #



        # finally, rebuild the row2func mapping and notify views of this change
        self.row2func = dict(zip(xrange(len(sorted_functions)), sorted_functions))
        self.func2row = {v: k for k, v in self.row2func.iteritems()}
        self.layoutChanged.emit()

        # save the details of this sort event as they may be needed later
        self._last_sort = column
        self._last_sort_order = sort_order

    #--------------------------------------------------------------------------
    # Public
    #--------------------------------------------------------------------------

    def set_column_alignment(self, column, alignment):
        """
        Set the text alignment of the given column.
        """
        self._column_alignment[column] = alignment

        # redraw the column header & row contents with the new alignment
        self._alignment_changed(column)


    #--------------------------------------------------------------------------
    # Filters
    #--------------------------------------------------------------------------

    def filter_zero_coverage(self, hide):
        """
        Filter out zero coverage functions from the model.
        """

        # the hide/unhide request matches the current state, ignore
        if self._hide_zero == hide:
            return

        # the filter is changing states, so we need to recompute the model
        self._hide_zero = hide
        self._internal_refresh()

    def filter_string(self, search_string):
        """
        Filter out functions whose names do not contain the given substring.
        """

        # the filter string matches the current string, ignore
        if search_string == self._search_string:
            return

        # the filter is changing states, so we need to recompute the model
        self._search_string = search_string
        self._internal_refresh()

    #--------------------------------------------------------------------------
    # Refresh
    #--------------------------------------------------------------------------

    def refresh(self):
        """
        Public refresh of the coverage model.
        """
        self._internal_refresh()

    @disassembler.execute_ui
    def _internal_refresh(self):
        """
        Internal refresh of the coverage model.
        """
        self._refresh_data()

        # sort the data set according to the last selected sorted column
        self.sort(self._last_sort, self._last_sort_order)

    @mainthread
    def _refresh_data(self):
        """
        Initialize the mapping to go from displayed row to function.
        """
        row = 0
        self.row2func = {}
        self.func2row = {}
        self._row_count = 0
        self.function_trace_data = self._director.function_trace_data




        #
        # if the search string is all lowercase, then we are going to perform
        # a case insensitive search/filter.
        #
        # that means we want to 'normalize' all the function names by making
        # them lowercase before searching for our needle (search str)
        #

        normalize = lambda x: x
        if not (set(self._search_string) & set(string.ascii_uppercase)):
            normalize = lambda x: string.lower(x)

        #
        # it's time to rebuild the list of coverage items to make visible in
        # the coverage overview list. during this process, we filter out entries
        # that do not meet the criteria as specified by the user.
        #

        # loop through *all* the functions as defined in the active metadata
        for dt in self.function_trace_data:

            self.row2func[row] = dt
            row += 1

        # build the inverse func --> row mapping
        self.func2row = {v: k for k, v in self.row2func.iteritems()}

        # bake the final number of rows into the model
        self._row_count = len(self.row2func)

    #--------------------------------------------------------------------------
    # Qt Notifications
    #--------------------------------------------------------------------------

    @disassembler.execute_ui
    def _data_changed(self):
        """
        Notify attached views that simple model data has been updated/modified.
        """
        self.dataChanged.emit(QtCore.QModelIndex(), QtCore.QModelIndex())

    @disassembler.execute_ui
    def _alignment_changed(self, column):
        """
        Notify attached views that the column alignment has been changed.
        """
        self.dataChanged.emit(QtCore.QModelIndex(), QtCore.QModelIndex())
        self.headerDataChanged.emit(QtCore.Qt.Horizontal, column, column)
