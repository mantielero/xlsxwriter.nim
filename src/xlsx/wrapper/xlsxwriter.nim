{.passL:"-lxlsxwriter".}

import fixme

const
  internal_ISupper* = cuint(256)
const
  internal_ISlower* = cuint(512)
const
  internal_ISalpha* = cuint(1024)
const
  internal_ISdigit* = cuint(2048)
const
  internal_ISxdigit* = cuint(4096)
const
  internal_ISspace* = cuint(8192)
const
  internal_ISprint* = cuint(16384)
const
  internal_ISgraph* = cuint(32768)
const
  internal_ISblank* = cuint(1)
const
  internal_IScntrl* = cuint(2)
const
  internal_ISpunct* = cuint(4)
const
  internal_ISalnum* = cuint(8)
type
  enum_lxw_boolean* {.size: sizeof(cuint).} = enum
    LXW_FALSE = 0, LXW_TRUE = 1, LXW_EXPLICIT_FALSE = 2
type
  enum_lxw_error* {.size: sizeof(cuint).} = enum
    LXW_NO_ERROR = 0, LXW_ERROR_MEMORY_MALLOC_FAILED = 1,
    LXW_ERROR_CREATING_XLSX_FILE = 2, LXW_ERROR_CREATING_TMPFILE = 3,
    LXW_ERROR_READING_TMPFILE = 4, LXW_ERROR_ZIP_FILE_OPERATION = 5,
    LXW_ERROR_ZIP_PARAMETER_ERROR = 6, LXW_ERROR_ZIP_BAD_ZIP_FILE = 7,
    LXW_ERROR_ZIP_INTERNAL_ERROR = 8, LXW_ERROR_ZIP_FILE_ADD = 9,
    LXW_ERROR_ZIP_CLOSE = 10, LXW_ERROR_FEATURE_NOT_SUPPORTED = 11,
    LXW_ERROR_NULL_PARAMETER_IGNORED = 12, LXW_ERROR_PARAMETER_VALIDATION = 13,
    LXW_ERROR_PARAMETER_IS_EMPTY = 14, LXW_ERROR_SHEETNAME_LENGTH_EXCEEDED = 15,
    LXW_ERROR_INVALID_SHEETNAME_CHARACTER = 16,
    LXW_ERROR_SHEETNAME_START_END_APOSTROPHE = 17,
    LXW_ERROR_SHEETNAME_ALREADY_USED = 18,
    LXW_ERROR_32_STRING_LENGTH_EXCEEDED = 19,
    LXW_ERROR_128_STRING_LENGTH_EXCEEDED = 20,
    LXW_ERROR_255_STRING_LENGTH_EXCEEDED = 21,
    LXW_ERROR_MAX_STRING_LENGTH_EXCEEDED = 22,
    LXW_ERROR_SHARED_STRING_INDEX_NOT_FOUND = 23,
    LXW_ERROR_WORKSHEET_INDEX_OUT_OF_RANGE = 24,
    LXW_ERROR_WORKSHEET_MAX_URL_LENGTH_EXCEEDED = 25,
    LXW_ERROR_WORKSHEET_MAX_NUMBER_URLS_EXCEEDED = 26,
    LXW_ERROR_IMAGE_DIMENSIONS = 27, LXW_MAX_ERRNO = 28
type
  enum_lxw_custom_property_types* {.size: sizeof(cuint).} = enum
    LXW_CUSTOM_NONE = 0, LXW_CUSTOM_STRING = 1, LXW_CUSTOM_DOUBLE = 2,
    LXW_CUSTOM_INTEGER = 3, LXW_CUSTOM_BOOLEAN = 4, LXW_CUSTOM_DATETIME = 5
type
  enum_lxw_format_underlines* {.size: sizeof(cuint).} = enum
    LXW_UNDERLINE_NONE = 0, LXW_UNDERLINE_SINGLE = 1, LXW_UNDERLINE_DOUBLE = 2,
    LXW_UNDERLINE_SINGLE_ACCOUNTING = 3, LXW_UNDERLINE_DOUBLE_ACCOUNTING = 4
type
  enum_lxw_format_scripts* {.size: sizeof(cuint).} = enum
    LXW_FONT_SUPERSCRIPT = 1, LXW_FONT_SUBSCRIPT = 2
type
  enum_lxw_format_alignments* {.size: sizeof(cuint).} = enum
    LXW_ALIGN_NONE = 0, LXW_ALIGN_LEFT = 1, LXW_ALIGN_CENTER = 2,
    LXW_ALIGN_RIGHT = 3, LXW_ALIGN_FILL = 4, LXW_ALIGN_JUSTIFY = 5,
    LXW_ALIGN_CENTER_ACROSS = 6, LXW_ALIGN_DISTRIBUTED = 7,
    LXW_ALIGN_VERTICAL_TOP = 8, LXW_ALIGN_VERTICAL_BOTTOM = 9,
    LXW_ALIGN_VERTICAL_CENTER = 10, LXW_ALIGN_VERTICAL_JUSTIFY = 11,
    LXW_ALIGN_VERTICAL_DISTRIBUTED = 12
type
  enum_lxw_format_diagonal_types* {.size: sizeof(cuint).} = enum
    LXW_DIAGONAL_BORDER_UP = 1, LXW_DIAGONAL_BORDER_DOWN = 2,
    LXW_DIAGONAL_BORDER_UP_DOWN = 3
type
  enum_lxw_defined_colors* {.size: sizeof(cuint).} = enum
    LXW_COLOR_NAVY = 128, LXW_COLOR_BLUE = 255, LXW_COLOR_GREEN = 32768,
    LXW_COLOR_LIME = 65280, LXW_COLOR_CYAN = 65535, LXW_COLOR_BROWN = 8388608,
    LXW_COLOR_PURPLE = 8388736, LXW_COLOR_GRAY = 8421504,
    LXW_COLOR_SILVER = 12632256, LXW_COLOR_RED = 16711680,
    LXW_COLOR_MAGENTA = 16711935, LXW_COLOR_ORANGE = 16737792,
    LXW_COLOR_YELLOW = 16776960, LXW_COLOR_WHITE = 16777215,
    LXW_COLOR_BLACK = 16777216
const
  LXW_COLOR_PINK* = enum_lxw_defined_colors.LXW_COLOR_MAGENTA
type
  enum_lxw_format_patterns* {.size: sizeof(cuint).} = enum
    LXW_PATTERN_NONE = 0, LXW_PATTERN_SOLID = 1, LXW_PATTERN_MEDIUM_GRAY = 2,
    LXW_PATTERN_DARK_GRAY = 3, LXW_PATTERN_LIGHT_GRAY = 4,
    LXW_PATTERN_DARK_HORIZONTAL = 5, LXW_PATTERN_DARK_VERTICAL = 6,
    LXW_PATTERN_DARK_DOWN = 7, LXW_PATTERN_DARK_UP = 8,
    LXW_PATTERN_DARK_GRID = 9, LXW_PATTERN_DARK_TRELLIS = 10,
    LXW_PATTERN_LIGHT_HORIZONTAL = 11, LXW_PATTERN_LIGHT_VERTICAL = 12,
    LXW_PATTERN_LIGHT_DOWN = 13, LXW_PATTERN_LIGHT_UP = 14,
    LXW_PATTERN_LIGHT_GRID = 15, LXW_PATTERN_LIGHT_TRELLIS = 16,
    LXW_PATTERN_GRAY_125 = 17, LXW_PATTERN_GRAY_0625 = 18
type
  enum_lxw_format_borders* {.size: sizeof(cuint).} = enum
    LXW_BORDER_NONE = 0, LXW_BORDER_THIN = 1, LXW_BORDER_MEDIUM = 2,
    LXW_BORDER_DASHED = 3, LXW_BORDER_DOTTED = 4, LXW_BORDER_THICK = 5,
    LXW_BORDER_DOUBLE = 6, LXW_BORDER_HAIR = 7, LXW_BORDER_MEDIUM_DASHED = 8,
    LXW_BORDER_DASH_DOT = 9, LXW_BORDER_MEDIUM_DASH_DOT = 10,
    LXW_BORDER_DASH_DOT_DOT = 11, LXW_BORDER_MEDIUM_DASH_DOT_DOT = 12,
    LXW_BORDER_SLANT_DASH_DOT = 13
type
  enum_lxw_chart_type* {.size: sizeof(cuint).} = enum
    LXW_CHART_NONE = 0, LXW_CHART_AREA = 1, LXW_CHART_AREA_STACKED = 2,
    LXW_CHART_AREA_STACKED_PERCENT = 3, LXW_CHART_BAR = 4,
    LXW_CHART_BAR_STACKED = 5, LXW_CHART_BAR_STACKED_PERCENT = 6,
    LXW_CHART_COLUMN = 7, LXW_CHART_COLUMN_STACKED = 8,
    LXW_CHART_COLUMN_STACKED_PERCENT = 9, LXW_CHART_DOUGHNUT = 10,
    LXW_CHART_LINE = 11, LXW_CHART_LINE_STACKED = 12,
    LXW_CHART_LINE_STACKED_PERCENT = 13, LXW_CHART_PIE = 14,
    LXW_CHART_SCATTER = 15, LXW_CHART_SCATTER_STRAIGHT = 16,
    LXW_CHART_SCATTER_STRAIGHT_WITH_MARKERS = 17, LXW_CHART_SCATTER_SMOOTH = 18,
    LXW_CHART_SCATTER_SMOOTH_WITH_MARKERS = 19, LXW_CHART_RADAR = 20,
    LXW_CHART_RADAR_WITH_MARKERS = 21, LXW_CHART_RADAR_FILLED = 22
type
  enum_lxw_chart_legend_position* {.size: sizeof(cuint).} = enum
    LXW_CHART_LEGEND_NONE = 0, LXW_CHART_LEGEND_RIGHT = 1,
    LXW_CHART_LEGEND_LEFT = 2, LXW_CHART_LEGEND_TOP = 3,
    LXW_CHART_LEGEND_BOTTOM = 4, LXW_CHART_LEGEND_TOP_RIGHT = 5,
    LXW_CHART_LEGEND_OVERLAY_RIGHT = 6, LXW_CHART_LEGEND_OVERLAY_LEFT = 7,
    LXW_CHART_LEGEND_OVERLAY_TOP_RIGHT = 8
type
  enum_lxw_chart_line_dash_type* {.size: sizeof(cuint).} = enum
    LXW_CHART_LINE_DASH_SOLID = 0, LXW_CHART_LINE_DASH_ROUND_DOT = 1,
    LXW_CHART_LINE_DASH_SQUARE_DOT = 2, LXW_CHART_LINE_DASH_DASH = 3,
    LXW_CHART_LINE_DASH_DASH_DOT = 4, LXW_CHART_LINE_DASH_LONG_DASH = 5,
    LXW_CHART_LINE_DASH_LONG_DASH_DOT = 6,
    LXW_CHART_LINE_DASH_LONG_DASH_DOT_DOT = 7, LXW_CHART_LINE_DASH_DOT = 8,
    LXW_CHART_LINE_DASH_SYSTEM_DASH_DOT = 9,
    LXW_CHART_LINE_DASH_SYSTEM_DASH_DOT_DOT = 10
type
  enum_lxw_chart_marker_type* {.size: sizeof(cuint).} = enum
    LXW_CHART_MARKER_AUTOMATIC = 0, LXW_CHART_MARKER_NONE = 1,
    LXW_CHART_MARKER_SQUARE = 2, LXW_CHART_MARKER_DIAMOND = 3,
    LXW_CHART_MARKER_TRIANGLE = 4, LXW_CHART_MARKER_X = 5,
    LXW_CHART_MARKER_STAR = 6, LXW_CHART_MARKER_SHORT_DASH = 7,
    LXW_CHART_MARKER_LONG_DASH = 8, LXW_CHART_MARKER_CIRCLE = 9,
    LXW_CHART_MARKER_PLUS = 10
type
  enum_lxw_chart_pattern_type* {.size: sizeof(cuint).} = enum
    LXW_CHART_PATTERN_NONE = 0, LXW_CHART_PATTERN_PERCENT_5 = 1,
    LXW_CHART_PATTERN_PERCENT_10 = 2, LXW_CHART_PATTERN_PERCENT_20 = 3,
    LXW_CHART_PATTERN_PERCENT_25 = 4, LXW_CHART_PATTERN_PERCENT_30 = 5,
    LXW_CHART_PATTERN_PERCENT_40 = 6, LXW_CHART_PATTERN_PERCENT_50 = 7,
    LXW_CHART_PATTERN_PERCENT_60 = 8, LXW_CHART_PATTERN_PERCENT_70 = 9,
    LXW_CHART_PATTERN_PERCENT_75 = 10, LXW_CHART_PATTERN_PERCENT_80 = 11,
    LXW_CHART_PATTERN_PERCENT_90 = 12,
    LXW_CHART_PATTERN_LIGHT_DOWNWARD_DIAGONAL = 13,
    LXW_CHART_PATTERN_LIGHT_UPWARD_DIAGONAL = 14,
    LXW_CHART_PATTERN_DARK_DOWNWARD_DIAGONAL = 15,
    LXW_CHART_PATTERN_DARK_UPWARD_DIAGONAL = 16,
    LXW_CHART_PATTERN_WIDE_DOWNWARD_DIAGONAL = 17,
    LXW_CHART_PATTERN_WIDE_UPWARD_DIAGONAL = 18,
    LXW_CHART_PATTERN_LIGHT_VERTICAL = 19,
    LXW_CHART_PATTERN_LIGHT_HORIZONTAL = 20,
    LXW_CHART_PATTERN_NARROW_VERTICAL = 21,
    LXW_CHART_PATTERN_NARROW_HORIZONTAL = 22,
    LXW_CHART_PATTERN_DARK_VERTICAL = 23,
    LXW_CHART_PATTERN_DARK_HORIZONTAL = 24,
    LXW_CHART_PATTERN_DASHED_DOWNWARD_DIAGONAL = 25,
    LXW_CHART_PATTERN_DASHED_UPWARD_DIAGONAL = 26,
    LXW_CHART_PATTERN_DASHED_HORIZONTAL = 27,
    LXW_CHART_PATTERN_DASHED_VERTICAL = 28,
    LXW_CHART_PATTERN_SMALL_CONFETTI = 29,
    LXW_CHART_PATTERN_LARGE_CONFETTI = 30, LXW_CHART_PATTERN_ZIGZAG = 31,
    LXW_CHART_PATTERN_WAVE = 32, LXW_CHART_PATTERN_DIAGONAL_BRICK = 33,
    LXW_CHART_PATTERN_HORIZONTAL_BRICK = 34, LXW_CHART_PATTERN_WEAVE = 35,
    LXW_CHART_PATTERN_PLAID = 36, LXW_CHART_PATTERN_DIVOT = 37,
    LXW_CHART_PATTERN_DOTTED_GRID = 38, LXW_CHART_PATTERN_DOTTED_DIAMOND = 39,
    LXW_CHART_PATTERN_SHINGLE = 40, LXW_CHART_PATTERN_TRELLIS = 41,
    LXW_CHART_PATTERN_SPHERE = 42, LXW_CHART_PATTERN_SMALL_GRID = 43,
    LXW_CHART_PATTERN_LARGE_GRID = 44, LXW_CHART_PATTERN_SMALL_CHECK = 45,
    LXW_CHART_PATTERN_LARGE_CHECK = 46, LXW_CHART_PATTERN_OUTLINED_DIAMOND = 47,
    LXW_CHART_PATTERN_SOLID_DIAMOND = 48
type
  enum_lxw_chart_label_position* {.size: sizeof(cuint).} = enum
    LXW_CHART_LABEL_POSITION_DEFAULT = 0, LXW_CHART_LABEL_POSITION_CENTER = 1,
    LXW_CHART_LABEL_POSITION_RIGHT = 2, LXW_CHART_LABEL_POSITION_LEFT = 3,
    LXW_CHART_LABEL_POSITION_ABOVE = 4, LXW_CHART_LABEL_POSITION_BELOW = 5,
    LXW_CHART_LABEL_POSITION_INSIDE_BASE = 6,
    LXW_CHART_LABEL_POSITION_INSIDE_END = 7,
    LXW_CHART_LABEL_POSITION_OUTSIDE_END = 8,
    LXW_CHART_LABEL_POSITION_BEST_FIT = 9
type
  enum_lxw_chart_label_separator* {.size: sizeof(cuint).} = enum
    LXW_CHART_LABEL_SEPARATOR_COMMA = 0,
    LXW_CHART_LABEL_SEPARATOR_SEMICOLON = 1,
    LXW_CHART_LABEL_SEPARATOR_PERIOD = 2, LXW_CHART_LABEL_SEPARATOR_NEWLINE = 3,
    LXW_CHART_LABEL_SEPARATOR_SPACE = 4
type
  enum_lxw_chart_axis_type* {.size: sizeof(cuint).} = enum
    LXW_CHART_AXIS_TYPE_X = 0, LXW_CHART_AXIS_TYPE_Y = 1
type
  enum_lxw_chart_subtype* {.size: sizeof(cuint).} = enum
    LXW_CHART_SUBTYPE_NONE = 0, LXW_CHART_SUBTYPE_STACKED = 1,
    LXW_CHART_SUBTYPE_STACKED_PERCENT = 2
type
  enum_lxw_chart_grouping* {.size: sizeof(cuint).} = enum
    LXW_GROUPING_CLUSTERED = 0, LXW_GROUPING_STANDARD = 1,
    LXW_GROUPING_PERCENTSTACKED = 2, LXW_GROUPING_STACKED = 3
type
  enum_lxw_chart_axis_tick_position* {.size: sizeof(cuint).} = enum
    LXW_CHART_AXIS_POSITION_DEFAULT = 0, LXW_CHART_AXIS_POSITION_ON_TICK = 1,
    LXW_CHART_AXIS_POSITION_BETWEEN = 2
type
  enum_lxw_chart_axis_label_position* {.size: sizeof(cuint).} = enum
    LXW_CHART_AXIS_LABEL_POSITION_NEXT_TO = 0,
    LXW_CHART_AXIS_LABEL_POSITION_HIGH = 1,
    LXW_CHART_AXIS_LABEL_POSITION_LOW = 2,
    LXW_CHART_AXIS_LABEL_POSITION_NONE = 3
type
  enum_lxw_chart_axis_label_alignment* {.size: sizeof(cuint).} = enum
    LXW_CHART_AXIS_LABEL_ALIGN_CENTER = 0, LXW_CHART_AXIS_LABEL_ALIGN_LEFT = 1,
    LXW_CHART_AXIS_LABEL_ALIGN_RIGHT = 2
type
  enum_lxw_chart_axis_display_unit* {.size: sizeof(cuint).} = enum
    LXW_CHART_AXIS_UNITS_NONE = 0, LXW_CHART_AXIS_UNITS_HUNDREDS = 1,
    LXW_CHART_AXIS_UNITS_THOUSANDS = 2, LXW_CHART_AXIS_UNITS_TEN_THOUSANDS = 3,
    LXW_CHART_AXIS_UNITS_HUNDRED_THOUSANDS = 4,
    LXW_CHART_AXIS_UNITS_MILLIONS = 5, LXW_CHART_AXIS_UNITS_TEN_MILLIONS = 6,
    LXW_CHART_AXIS_UNITS_HUNDRED_MILLIONS = 7,
    LXW_CHART_AXIS_UNITS_BILLIONS = 8, LXW_CHART_AXIS_UNITS_TRILLIONS = 9
type
  enum_lxw_chart_axis_tick_mark* {.size: sizeof(cuint).} = enum
    LXW_CHART_AXIS_TICK_MARK_DEFAULT = 0, LXW_CHART_AXIS_TICK_MARK_NONE = 1,
    LXW_CHART_AXIS_TICK_MARK_INSIDE = 2, LXW_CHART_AXIS_TICK_MARK_OUTSIDE = 3,
    LXW_CHART_AXIS_TICK_MARK_CROSSING = 4
type
  enum_lxw_chart_blank* {.size: sizeof(cuint).} = enum
    LXW_CHART_BLANKS_AS_GAP = 0, LXW_CHART_BLANKS_AS_ZERO = 1,
    LXW_CHART_BLANKS_AS_CONNECTED = 2
type
  enum_lxw_chart_position* {.size: sizeof(cuint).} = enum
    LXW_CHART_AXIS_RIGHT = 0, LXW_CHART_AXIS_LEFT = 1, LXW_CHART_AXIS_TOP = 2,
    LXW_CHART_AXIS_BOTTOM = 3
type
  enum_lxw_chart_error_bar_type* {.size: sizeof(cuint).} = enum
    LXW_CHART_ERROR_BAR_TYPE_STD_ERROR = 0, LXW_CHART_ERROR_BAR_TYPE_FIXED = 1,
    LXW_CHART_ERROR_BAR_TYPE_PERCENTAGE = 2,
    LXW_CHART_ERROR_BAR_TYPE_STD_DEV = 3
type
  enum_lxw_chart_error_bar_direction* {.size: sizeof(cuint).} = enum
    LXW_CHART_ERROR_BAR_DIR_BOTH = 0, LXW_CHART_ERROR_BAR_DIR_PLUS = 1,
    LXW_CHART_ERROR_BAR_DIR_MINUS = 2
type
  enum_lxw_chart_error_bar_axis* {.size: sizeof(cuint).} = enum
    LXW_CHART_ERROR_BAR_AXIS_X = 0, LXW_CHART_ERROR_BAR_AXIS_Y = 1
type
  enum_lxw_chart_error_bar_cap* {.size: sizeof(cuint).} = enum
    LXW_CHART_ERROR_BAR_END_CAP = 0, LXW_CHART_ERROR_BAR_NO_CAP = 1
type
  enum_lxw_chart_trendline_type* {.size: sizeof(cuint).} = enum
    LXW_CHART_TRENDLINE_TYPE_LINEAR = 0, LXW_CHART_TRENDLINE_TYPE_LOG = 1,
    LXW_CHART_TRENDLINE_TYPE_POLY = 2, LXW_CHART_TRENDLINE_TYPE_POWER = 3,
    LXW_CHART_TRENDLINE_TYPE_EXP = 4, LXW_CHART_TRENDLINE_TYPE_AVERAGE = 5
type
  enum_lxw_drawing_types* {.size: sizeof(cuint).} = enum
    LXW_DRAWING_NONE = 0, LXW_DRAWING_IMAGE = 1, LXW_DRAWING_CHART = 2,
    LXW_DRAWING_SHAPE = 3
type
  enum_image_types* {.size: sizeof(cuint).} = enum
    LXW_IMAGE_UNKNOWN = 0, LXW_IMAGE_PNG = 1, LXW_IMAGE_JPEG = 2,
    LXW_IMAGE_BMP = 3, LXW_IMAGE_GIF = 4
type
  enum_lxw_gridlines* {.size: sizeof(cuint).} = enum
    LXW_HIDE_ALL_GRIDLINES = 0, LXW_SHOW_SCREEN_GRIDLINES = 1,
    LXW_SHOW_PRINT_GRIDLINES = 2, LXW_SHOW_ALL_GRIDLINES = 3
type
  enum_lxw_validation_boolean* {.size: sizeof(cuint).} = enum
    LXW_VALIDATION_DEFAULT = 0, LXW_VALIDATION_OFF = 1, LXW_VALIDATION_ON = 2
type
  enum_lxw_validation_types* {.size: sizeof(cuint).} = enum
    LXW_VALIDATION_TYPE_NONE = 0, LXW_VALIDATION_TYPE_INTEGER = 1,
    LXW_VALIDATION_TYPE_INTEGER_FORMULA = 2, LXW_VALIDATION_TYPE_DECIMAL = 3,
    LXW_VALIDATION_TYPE_DECIMAL_FORMULA = 4, LXW_VALIDATION_TYPE_LIST = 5,
    LXW_VALIDATION_TYPE_LIST_FORMULA = 6, LXW_VALIDATION_TYPE_DATE = 7,
    LXW_VALIDATION_TYPE_DATE_FORMULA = 8, LXW_VALIDATION_TYPE_DATE_NUMBER = 9,
    LXW_VALIDATION_TYPE_TIME = 10, LXW_VALIDATION_TYPE_TIME_FORMULA = 11,
    LXW_VALIDATION_TYPE_TIME_NUMBER = 12, LXW_VALIDATION_TYPE_LENGTH = 13,
    LXW_VALIDATION_TYPE_LENGTH_FORMULA = 14,
    LXW_VALIDATION_TYPE_CUSTOM_FORMULA = 15, LXW_VALIDATION_TYPE_ANY = 16
type
  enum_lxw_validation_criteria* {.size: sizeof(cuint).} = enum
    LXW_VALIDATION_CRITERIA_NONE = 0, LXW_VALIDATION_CRITERIA_BETWEEN = 1,
    LXW_VALIDATION_CRITERIA_NOT_BETWEEN = 2,
    LXW_VALIDATION_CRITERIA_EQUAL_TO = 3,
    LXW_VALIDATION_CRITERIA_NOT_EQUAL_TO = 4,
    LXW_VALIDATION_CRITERIA_GREATER_THAN = 5,
    LXW_VALIDATION_CRITERIA_LESS_THAN = 6,
    LXW_VALIDATION_CRITERIA_GREATER_THAN_OR_EQUAL_TO = 7,
    LXW_VALIDATION_CRITERIA_LESS_THAN_OR_EQUAL_TO = 8
type
  enum_lxw_validation_error_types* {.size: sizeof(cuint).} = enum
    LXW_VALIDATION_ERROR_TYPE_STOP = 0, LXW_VALIDATION_ERROR_TYPE_WARNING = 1,
    LXW_VALIDATION_ERROR_TYPE_INFORMATION = 2
type
  enum_lxw_comment_display_types* {.size: sizeof(cuint).} = enum
    LXW_COMMENT_DISPLAY_DEFAULT = 0, LXW_COMMENT_DISPLAY_HIDDEN = 1,
    LXW_COMMENT_DISPLAY_VISIBLE = 2
type
  enum_lxw_conditional_format_types* {.size: sizeof(cuint).} = enum
    LXW_CONDITIONAL_TYPE_NONE = 0, LXW_CONDITIONAL_TYPE_CELL = 1,
    LXW_CONDITIONAL_TYPE_TEXT = 2, LXW_CONDITIONAL_TYPE_TIME_PERIOD = 3,
    LXW_CONDITIONAL_TYPE_AVERAGE = 4, LXW_CONDITIONAL_TYPE_DUPLICATE = 5,
    LXW_CONDITIONAL_TYPE_UNIQUE = 6, LXW_CONDITIONAL_TYPE_TOP = 7,
    LXW_CONDITIONAL_TYPE_BOTTOM = 8, LXW_CONDITIONAL_TYPE_BLANKS = 9,
    LXW_CONDITIONAL_TYPE_NO_BLANKS = 10, LXW_CONDITIONAL_TYPE_ERRORS = 11,
    LXW_CONDITIONAL_TYPE_NO_ERRORS = 12, LXW_CONDITIONAL_TYPE_FORMULA = 13,
    LXW_CONDITIONAL_2_COLOR_SCALE = 14, LXW_CONDITIONAL_3_COLOR_SCALE = 15,
    LXW_CONDITIONAL_DATA_BAR = 16, LXW_CONDITIONAL_TYPE_ICON_SETS = 17,
    LXW_CONDITIONAL_TYPE_LAST = 18
type
  enum_lxw_conditional_criteria* {.size: sizeof(cuint).} = enum
    LXW_CONDITIONAL_CRITERIA_NONE = 0, LXW_CONDITIONAL_CRITERIA_EQUAL_TO = 1,
    LXW_CONDITIONAL_CRITERIA_NOT_EQUAL_TO = 2,
    LXW_CONDITIONAL_CRITERIA_GREATER_THAN = 3,
    LXW_CONDITIONAL_CRITERIA_LESS_THAN = 4,
    LXW_CONDITIONAL_CRITERIA_GREATER_THAN_OR_EQUAL_TO = 5,
    LXW_CONDITIONAL_CRITERIA_LESS_THAN_OR_EQUAL_TO = 6,
    LXW_CONDITIONAL_CRITERIA_BETWEEN = 7,
    LXW_CONDITIONAL_CRITERIA_NOT_BETWEEN = 8,
    LXW_CONDITIONAL_CRITERIA_TEXT_CONTAINING = 9,
    LXW_CONDITIONAL_CRITERIA_TEXT_NOT_CONTAINING = 10,
    LXW_CONDITIONAL_CRITERIA_TEXT_BEGINS_WITH = 11,
    LXW_CONDITIONAL_CRITERIA_TEXT_ENDS_WITH = 12,
    LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_YESTERDAY = 13,
    LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_TODAY = 14,
    LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_TOMORROW = 15,
    LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_LAST_7_DAYS = 16,
    LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_LAST_WEEK = 17,
    LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_THIS_WEEK = 18,
    LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_NEXT_WEEK = 19,
    LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_LAST_MONTH = 20,
    LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_THIS_MONTH = 21,
    LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_NEXT_MONTH = 22,
    LXW_CONDITIONAL_CRITERIA_AVERAGE_ABOVE = 23,
    LXW_CONDITIONAL_CRITERIA_AVERAGE_BELOW = 24,
    LXW_CONDITIONAL_CRITERIA_AVERAGE_ABOVE_OR_EQUAL = 25,
    LXW_CONDITIONAL_CRITERIA_AVERAGE_BELOW_OR_EQUAL = 26,
    LXW_CONDITIONAL_CRITERIA_AVERAGE_1_STD_DEV_ABOVE = 27,
    LXW_CONDITIONAL_CRITERIA_AVERAGE_1_STD_DEV_BELOW = 28,
    LXW_CONDITIONAL_CRITERIA_AVERAGE_2_STD_DEV_ABOVE = 29,
    LXW_CONDITIONAL_CRITERIA_AVERAGE_2_STD_DEV_BELOW = 30,
    LXW_CONDITIONAL_CRITERIA_AVERAGE_3_STD_DEV_ABOVE = 31,
    LXW_CONDITIONAL_CRITERIA_AVERAGE_3_STD_DEV_BELOW = 32,
    LXW_CONDITIONAL_CRITERIA_TOP_OR_BOTTOM_PERCENT = 33
type
  enum_lxw_conditional_format_rule_types* {.size: sizeof(cuint).} = enum
    LXW_CONDITIONAL_RULE_TYPE_NONE = 0, LXW_CONDITIONAL_RULE_TYPE_MINIMUM = 1,
    LXW_CONDITIONAL_RULE_TYPE_NUMBER = 2, LXW_CONDITIONAL_RULE_TYPE_PERCENT = 3,
    LXW_CONDITIONAL_RULE_TYPE_PERCENTILE = 4,
    LXW_CONDITIONAL_RULE_TYPE_FORMULA = 5,
    LXW_CONDITIONAL_RULE_TYPE_MAXIMUM = 6,
    LXW_CONDITIONAL_RULE_TYPE_AUTO_MIN = 7,
    LXW_CONDITIONAL_RULE_TYPE_AUTO_MAX = 8
type
  enum_lxw_conditional_format_bar_direction* {.size: sizeof(cuint).} = enum
    LXW_CONDITIONAL_BAR_DIRECTION_CONTEXT = 0,
    LXW_CONDITIONAL_BAR_DIRECTION_RIGHT_TO_LEFT = 1,
    LXW_CONDITIONAL_BAR_DIRECTION_LEFT_TO_RIGHT = 2
type
  enum_lxw_conditional_bar_axis_position* {.size: sizeof(cuint).} = enum
    LXW_CONDITIONAL_BAR_AXIS_AUTOMATIC = 0,
    LXW_CONDITIONAL_BAR_AXIS_MIDPOINT = 1, LXW_CONDITIONAL_BAR_AXIS_NONE = 2
type
  enum_lxw_conditional_icon_types* {.size: sizeof(cuint).} = enum
    LXW_CONDITIONAL_ICONS_3_ARROWS_COLORED = 0,
    LXW_CONDITIONAL_ICONS_3_ARROWS_GRAY = 1, LXW_CONDITIONAL_ICONS_3_FLAGS = 2,
    LXW_CONDITIONAL_ICONS_3_TRAFFIC_LIGHTS_UNRIMMED = 3,
    LXW_CONDITIONAL_ICONS_3_TRAFFIC_LIGHTS_RIMMED = 4,
    LXW_CONDITIONAL_ICONS_3_SIGNS = 5,
    LXW_CONDITIONAL_ICONS_3_SYMBOLS_CIRCLED = 6,
    LXW_CONDITIONAL_ICONS_3_SYMBOLS_UNCIRCLED = 7,
    LXW_CONDITIONAL_ICONS_4_ARROWS_COLORED = 8,
    LXW_CONDITIONAL_ICONS_4_ARROWS_GRAY = 9,
    LXW_CONDITIONAL_ICONS_4_RED_TO_BLACK = 10,
    LXW_CONDITIONAL_ICONS_4_RATINGS = 11,
    LXW_CONDITIONAL_ICONS_4_TRAFFIC_LIGHTS = 12,
    LXW_CONDITIONAL_ICONS_5_ARROWS_COLORED = 13,
    LXW_CONDITIONAL_ICONS_5_ARROWS_GRAY = 14,
    LXW_CONDITIONAL_ICONS_5_RATINGS = 15, LXW_CONDITIONAL_ICONS_5_QUARTERS = 16
type
  enum_lxw_table_style_type* {.size: sizeof(cuint).} = enum
    LXW_TABLE_STYLE_TYPE_DEFAULT = 0, LXW_TABLE_STYLE_TYPE_LIGHT = 1,
    LXW_TABLE_STYLE_TYPE_MEDIUM = 2, LXW_TABLE_STYLE_TYPE_DARK = 3
type
  enum_lxw_table_total_functions* {.size: sizeof(cuint).} = enum
    LXW_TABLE_FUNCTION_NONE = 0, LXW_TABLE_FUNCTION_AVERAGE = 101,
    LXW_TABLE_FUNCTION_COUNT_NUMS = 102, LXW_TABLE_FUNCTION_COUNT = 103,
    LXW_TABLE_FUNCTION_MAX = 104, LXW_TABLE_FUNCTION_MIN = 105,
    LXW_TABLE_FUNCTION_STD_DEV = 107, LXW_TABLE_FUNCTION_SUM = 109,
    LXW_TABLE_FUNCTION_VAR = 110
type
  enum_lxw_filter_criteria* {.size: sizeof(cuint).} = enum
    LXW_FILTER_CRITERIA_NONE = 0, LXW_FILTER_CRITERIA_EQUAL_TO = 1,
    LXW_FILTER_CRITERIA_NOT_EQUAL_TO = 2, LXW_FILTER_CRITERIA_GREATER_THAN = 3,
    LXW_FILTER_CRITERIA_LESS_THAN = 4,
    LXW_FILTER_CRITERIA_GREATER_THAN_OR_EQUAL_TO = 5,
    LXW_FILTER_CRITERIA_LESS_THAN_OR_EQUAL_TO = 6,
    LXW_FILTER_CRITERIA_BLANKS = 7, LXW_FILTER_CRITERIA_NON_BLANKS = 8
type
  enum_lxw_filter_operator* {.size: sizeof(cuint).} = enum
    LXW_FILTER_AND = 0, LXW_FILTER_OR = 1
type
  enum_lxw_filter_type* {.size: sizeof(cuint).} = enum
    LXW_FILTER_TYPE_NONE = 0, LXW_FILTER_TYPE_SINGLE = 1,
    LXW_FILTER_TYPE_AND = 2, LXW_FILTER_TYPE_OR = 3,
    LXW_FILTER_TYPE_STRING_LIST = 4
type
  enum_lxw_object_position* {.size: sizeof(cuint).} = enum
    LXW_OBJECT_POSITION_DEFAULT = 0, LXW_OBJECT_MOVE_AND_SIZE = 1,
    LXW_OBJECT_MOVE_DONT_SIZE = 2, LXW_OBJECT_DONT_MOVE_DONT_SIZE = 3,
    LXW_OBJECT_MOVE_AND_SIZE_AFTER = 4
type
  enum_lxw_ignore_errors* {.size: sizeof(cuint).} = enum
    LXW_IGNORE_NUMBER_STORED_AS_TEXT = 1, LXW_IGNORE_EVAL_ERROR = 2,
    LXW_IGNORE_FORMULA_DIFFERS = 3, LXW_IGNORE_FORMULA_RANGE = 4,
    LXW_IGNORE_FORMULA_UNLOCKED = 5, LXW_IGNORE_EMPTY_CELL_REFERENCE = 6,
    LXW_IGNORE_LIST_DATA_VALIDATION = 7, LXW_IGNORE_CALCULATED_COLUMN = 8,
    LXW_IGNORE_TWO_DIGIT_TEXT_YEAR = 9, LXW_IGNORE_LAST_OPTION = 10
type
  enum_cell_types* {.size: sizeof(cuint).} = enum
    NUMBER_CELL = 1, STRING_CELL = 2, INLINE_STRING_CELL = 3,
    INLINE_RICH_STRING_CELL = 4, FORMULA_CELL = 5, ARRAY_FORMULA_CELL = 6,
    DYNAMIC_ARRAY_FORMULA_CELL = 7, BLANK_CELL = 8, BOOLEAN_CELL = 9,
    ERROR_CELL = 10, COMMENT = 11, HYPERLINK_URL = 12, HYPERLINK_INTERNAL = 13,
    HYPERLINK_EXTERNAL = 14
type
  enum_pane_types* {.size: sizeof(cuint).} = enum
    NO_PANES = 0, FREEZE_PANES = 1, SPLIT_PANES = 2, FREEZE_SPLIT_PANES = 3
type
  enum_lxw_image_position* {.size: sizeof(cuint).} = enum
    HEADER_LEFT = 0, HEADER_CENTER = 1, HEADER_RIGHT = 2, FOOTER_LEFT = 3,
    FOOTER_CENTER = 4, FOOTER_RIGHT = 5
type
  compiler_cfloat128_typedef* = pointer ## Generated based on /usr/include/bits/floatn.h:83:24
  compiler_u_char* = uint8   ## Generated based on /usr/include/bits/types.h:31:23
  compiler_u_short* = cushort ## Generated based on /usr/include/bits/types.h:32:28
  compiler_u_int* = cuint    ## Generated based on /usr/include/bits/types.h:33:22
  compiler_u_long* = culong  ## Generated based on /usr/include/bits/types.h:34:27
  compiler_int8_t* = cschar  ## Generated based on /usr/include/bits/types.h:37:21
  compiler_uint8_t* = uint8  ## Generated based on /usr/include/bits/types.h:38:23
  compiler_int16_t* = cshort ## Generated based on /usr/include/bits/types.h:39:26
  compiler_uint16_t* = cushort ## Generated based on /usr/include/bits/types.h:40:28
  compiler_int32_t* = cint   ## Generated based on /usr/include/bits/types.h:41:20
  compiler_uint32_t* = cuint ## Generated based on /usr/include/bits/types.h:42:22
  compiler_int64_t* = clong  ## Generated based on /usr/include/bits/types.h:44:25
  compiler_uint64_t* = culong ## Generated based on /usr/include/bits/types.h:45:27
  compiler_int_least8_t* = compiler_int8_t ## Generated based on /usr/include/bits/types.h:52:18
  compiler_uint_least8_t* = compiler_uint8_t ## Generated based on /usr/include/bits/types.h:53:19
  compiler_int_least16_t* = compiler_int16_t ## Generated based on /usr/include/bits/types.h:54:19
  compiler_uint_least16_t* = compiler_uint16_t ## Generated based on /usr/include/bits/types.h:55:20
  compiler_int_least32_t* = compiler_int32_t ## Generated based on /usr/include/bits/types.h:56:19
  compiler_uint_least32_t* = compiler_uint32_t ## Generated based on /usr/include/bits/types.h:57:20
  compiler_int_least64_t* = compiler_int64_t ## Generated based on /usr/include/bits/types.h:58:19
  compiler_uint_least64_t* = compiler_uint64_t ## Generated based on /usr/include/bits/types.h:59:20
  compiler_quad_t* = clong   ## Generated based on /usr/include/bits/types.h:63:18
  compiler_u_quad_t* = culong ## Generated based on /usr/include/bits/types.h:64:27
  compiler_intmax_t* = clong ## Generated based on /usr/include/bits/types.h:72:18
  compiler_uintmax_t* = culong ## Generated based on /usr/include/bits/types.h:73:27
  compiler_dev_t* = culong   ## Generated based on /usr/include/bits/types.h:145:25
  compiler_uid_t* = cuint    ## Generated based on /usr/include/bits/types.h:146:25
  compiler_gid_t* = cuint    ## Generated based on /usr/include/bits/types.h:147:25
  compiler_ino_t* = culong   ## Generated based on /usr/include/bits/types.h:148:25
  compiler_ino64_t* = culong ## Generated based on /usr/include/bits/types.h:149:27
  compiler_mode_t* = cuint   ## Generated based on /usr/include/bits/types.h:150:26
  compiler_nlink_t* = culong ## Generated based on /usr/include/bits/types.h:151:27
  compiler_off_t* = clong    ## Generated based on /usr/include/bits/types.h:152:25
  compiler_off64_t* = clong  ## Generated based on /usr/include/bits/types.h:153:27
  compiler_pid_t* = cint     ## Generated based on /usr/include/bits/types.h:154:25
  struct_fsid_t* {.pure, inheritable, bycopy.} = object
    compiler_val*: array[2'i64, cint] ## Generated based on /usr/include/bits/types.h:155:12
  compiler_fsid_t* = struct_fsid_t ## Generated based on /usr/include/bits/types.h:155:26
  compiler_clock_t* = clong  ## Generated based on /usr/include/bits/types.h:156:27
  compiler_rlim_t* = culong  ## Generated based on /usr/include/bits/types.h:157:26
  compiler_rlim64_t* = culong ## Generated based on /usr/include/bits/types.h:158:28
  compiler_id_t* = cuint     ## Generated based on /usr/include/bits/types.h:159:24
  compiler_time_t* = clong   ## Generated based on /usr/include/bits/types.h:160:26
  compiler_useconds_t* = cuint ## Generated based on /usr/include/bits/types.h:161:30
  compiler_suseconds_t* = clong ## Generated based on /usr/include/bits/types.h:162:31
  compiler_suseconds64_t* = clong ## Generated based on /usr/include/bits/types.h:163:33
  compiler_daddr_t* = cint   ## Generated based on /usr/include/bits/types.h:165:27
  compiler_key_t* = cint     ## Generated based on /usr/include/bits/types.h:166:25
  compiler_clockid_t* = cint ## Generated based on /usr/include/bits/types.h:169:29
  compiler_timer_t* = pointer ## Generated based on /usr/include/bits/types.h:172:27
  compiler_blksize_t* = clong ## Generated based on /usr/include/bits/types.h:175:29
  compiler_blkcnt_t* = clong ## Generated based on /usr/include/bits/types.h:180:28
  compiler_blkcnt64_t* = clong ## Generated based on /usr/include/bits/types.h:181:30
  compiler_fsblkcnt_t* = culong ## Generated based on /usr/include/bits/types.h:184:30
  compiler_fsblkcnt64_t* = culong ## Generated based on /usr/include/bits/types.h:185:32
  compiler_fsfilcnt_t* = culong ## Generated based on /usr/include/bits/types.h:188:30
  compiler_fsfilcnt64_t* = culong ## Generated based on /usr/include/bits/types.h:189:32
  compiler_fsword_t* = clong ## Generated based on /usr/include/bits/types.h:192:28
  compiler_ssize_t* = clong  ## Generated based on /usr/include/bits/types.h:194:27
  compiler_syscall_slong_t* = clong ## Generated based on /usr/include/bits/types.h:197:33
  compiler_syscall_ulong_t* = culong ## Generated based on /usr/include/bits/types.h:199:33
  compiler_loff_t* = compiler_off64_t ## Generated based on /usr/include/bits/types.h:203:19
  compiler_caddr_t* = cstring ## Generated based on /usr/include/bits/types.h:204:15
  compiler_intptr_t* = clong ## Generated based on /usr/include/bits/types.h:207:25
  compiler_socklen_t* = cuint ## Generated based on /usr/include/bits/types.h:210:23
  compiler_sig_atomic_t* = cint ## Generated based on /usr/include/bits/types.h:215:13
  int8_t* = compiler_int8_t  ## Generated based on /usr/include/bits/stdint-intn.h:24:18
  int16_t* = compiler_int16_t ## Generated based on /usr/include/bits/stdint-intn.h:25:19
  int32_t* = compiler_int32_t ## Generated based on /usr/include/bits/stdint-intn.h:26:19
  int64_t* = compiler_int64_t ## Generated based on /usr/include/bits/stdint-intn.h:27:19
  uint8_t* = compiler_uint8_t ## Generated based on /usr/include/bits/stdint-uintn.h:24:19
  uint16_t* = compiler_uint16_t ## Generated based on /usr/include/bits/stdint-uintn.h:25:20
  uint32_t* = compiler_uint32_t ## Generated based on /usr/include/bits/stdint-uintn.h:26:20
  uint64_t* = compiler_uint64_t ## Generated based on /usr/include/bits/stdint-uintn.h:27:20
  int_least8_t* = compiler_int_least8_t ## Generated based on /usr/include/bits/stdint-least.h:25:24
  int_least16_t* = compiler_int_least16_t ## Generated based on /usr/include/bits/stdint-least.h:26:25
  int_least32_t* = compiler_int_least32_t ## Generated based on /usr/include/bits/stdint-least.h:27:25
  int_least64_t* = compiler_int_least64_t ## Generated based on /usr/include/bits/stdint-least.h:28:25
  uint_least8_t* = compiler_uint_least8_t ## Generated based on /usr/include/bits/stdint-least.h:31:25
  uint_least16_t* = compiler_uint_least16_t ## Generated based on /usr/include/bits/stdint-least.h:32:26
  uint_least32_t* = compiler_uint_least32_t ## Generated based on /usr/include/bits/stdint-least.h:33:26
  uint_least64_t* = compiler_uint_least64_t ## Generated based on /usr/include/bits/stdint-least.h:34:26
  int_fast8_t* = cschar      ## Generated based on /usr/include/stdint.h:47:22
  int_fast16_t* = clong      ## Generated based on /usr/include/stdint.h:49:19
  int_fast32_t* = clong      ## Generated based on /usr/include/stdint.h:50:19
  int_fast64_t* = clong      ## Generated based on /usr/include/stdint.h:51:19
  uint_fast8_t* = uint8      ## Generated based on /usr/include/stdint.h:60:24
  uint_fast16_t* = culong    ## Generated based on /usr/include/stdint.h:62:27
  uint_fast32_t* = culong    ## Generated based on /usr/include/stdint.h:63:27
  uint_fast64_t* = culong    ## Generated based on /usr/include/stdint.h:64:27
  intptr_t* = clong          ## Generated based on /usr/include/stdint.h:76:19
  uintptr_t* = culong        ## Generated based on /usr/include/stdint.h:79:27
  intmax_t* = compiler_intmax_t ## Generated based on /usr/include/stdint.h:90:21
  uintmax_t* = compiler_uintmax_t ## Generated based on /usr/include/stdint.h:91:22
  struct_mbstate_t_compiler_value_t* {.union, bycopy.} = object
    compiler_wch*: cuint
    compiler_wchb*: array[4'i64, cschar]
  struct_mbstate_t* {.pure, inheritable, bycopy.} = object
    compiler_count*: cint    ## Generated based on /usr/include/bits/types/__mbstate_t.h:13:9
    compiler_value*: struct_mbstate_t_compiler_value_t
  compiler_mbstate_t* = struct_mbstate_t ## Generated based on /usr/include/bits/types/__mbstate_t.h:21:3
  struct_G_fpos_t* {.pure, inheritable, bycopy.} = object
    compiler_pos*: compiler_off_t ## Generated based on /usr/include/bits/types/__fpos_t.h:10:16
    compiler_state*: compiler_mbstate_t
  compiler_fpos_t* = struct_G_fpos_t ## Generated based on /usr/include/bits/types/__fpos_t.h:14:3
  struct_G_fpos64_t* {.pure, inheritable, bycopy.} = object
    compiler_pos*: compiler_off64_t ## Generated based on /usr/include/bits/types/__fpos64_t.h:10:16
    compiler_state*: compiler_mbstate_t
  compiler_fpos64_t* = struct_G_fpos64_t ## Generated based on /usr/include/bits/types/__fpos64_t.h:14:3
  compiler_FILE* = struct_IO_FILE ## Generated based on /usr/include/bits/types/__FILE.h:5:25
  struct_IO_FILE* {.pure, inheritable, bycopy.} = object
    internal_flags*: cint    ## Generated based on /usr/include/bits/types/struct_FILE.h:50:8
    internal_IO_read_ptr*: cstring
    internal_IO_read_end*: cstring
    internal_IO_read_base*: cstring
    internal_IO_write_base*: cstring
    internal_IO_write_ptr*: cstring
    internal_IO_write_end*: cstring
    internal_IO_buf_base*: cstring
    internal_IO_buf_end*: cstring
    internal_IO_save_base*: cstring
    internal_IO_backup_base*: cstring
    internal_IO_save_end*: cstring
    internal_markers*: ptr struct_IO_marker
    internal_chain*: ptr struct_IO_FILE
    internal_fileno*: cint
    internal_flags2* {.bitsize: 24'i64.}: cint
    internal_short_backupbuf*: array[1'i64, cschar]
    internal_old_offset*: compiler_off_t
    internal_cur_column*: cushort
    internal_vtable_offset*: cschar
    internal_shortbuf*: array[1'i64, cschar]
    internal_lock*: pointer
    internal_offset*: compiler_off64_t
    internal_codecvt*: ptr struct_IO_codecvt
    internal_wide_data*: ptr struct_IO_wide_data
    internal_freeres_list*: ptr struct_IO_FILE
    internal_freeres_buf*: pointer
    internal_prevchain*: ptr ptr struct_IO_FILE
    internal_mode*: cint
    internal_unused2*: array[20'i64, cschar]
  FILE* = struct_IO_FILE     ## Generated based on /usr/include/bits/types/FILE.h:7:25
  cookie_read_function_t* = proc (a0: pointer; a1: cstring; a2: csize_t): compiler_ssize_t {.
      cdecl.}                ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:27:19
  cookie_write_function_t* = proc (a0: pointer; a1: cstring; a2: csize_t): compiler_ssize_t {.
      cdecl.}                ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:36:19
  cookie_seek_function_t* = proc (a0: pointer; a1: ptr compiler_off64_t;
                                  a2: cint): cint {.cdecl.} ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:45:13
  cookie_close_function_t* = proc (a0: pointer): cint {.cdecl.} ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:48:13
  struct_IO_cookie_io_functions_t* {.pure, inheritable, bycopy.} = object
    read*: cookie_read_function_t ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:55:16
    write*: cookie_write_function_t
    seek*: cookie_seek_function_t
    close*: cookie_close_function_t
  cookie_io_functions_t* = struct_IO_cookie_io_functions_t ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:61:3
  va_list* = compiler_gnuc_va_list ## Generated based on /usr/include/stdio.h:53:24
  compiler_gnuc_va_list* = compiler_builtin_va_list ## Generated based on /usr/lib/clang/19/include/__stdarg___gnuc_va_list.h:12:27
  off_t* = compiler_off_t    ## Generated based on /usr/include/stdio.h:64:17
  ssize_t* = compiler_ssize_t ## Generated based on /usr/include/stdio.h:78:19
  fpos_t* = compiler_fpos_t  ## Generated based on /usr/include/stdio.h:85:18
  internal_Float128* = pointer ## Generated based on /usr/include/bits/floatn.h:97:20
  internal_Float32* = cfloat ## Generated based on /usr/include/bits/floatn-common.h:214:15
  internal_Float64* = cdouble ## Generated based on /usr/include/bits/floatn-common.h:251:16
  internal_Float32x* = cdouble ## Generated based on /usr/include/bits/floatn-common.h:268:16
  internal_Float64x* = clongdouble ## Generated based on /usr/include/bits/floatn-common.h:285:21
  struct_div_t* {.pure, inheritable, bycopy.} = object
    quot*: cint              ## Generated based on /usr/include/stdlib.h:59:9
    rem*: cint
  div_t* = struct_div_t      ## Generated based on /usr/include/stdlib.h:63:5
  struct_ldiv_t* {.pure, inheritable, bycopy.} = object
    quot*: clong             ## Generated based on /usr/include/stdlib.h:67:9
    rem*: clong
  ldiv_t* = struct_ldiv_t    ## Generated based on /usr/include/stdlib.h:71:5
  struct_lldiv_t* {.pure, inheritable, bycopy.} = object
    quot*: clonglong         ## Generated based on /usr/include/stdlib.h:77:23
    rem*: clonglong
  lldiv_t* = struct_lldiv_t  ## Generated based on /usr/include/stdlib.h:81:5
  u_char* = compiler_u_char  ## Generated based on /usr/include/sys/types.h:33:18
  u_short* = compiler_u_short ## Generated based on /usr/include/sys/types.h:34:19
  u_int_typedef* = compiler_u_int ## Generated based on /usr/include/sys/types.h:35:17
  u_long* = compiler_u_long  ## Generated based on /usr/include/sys/types.h:36:18
  quad_t* = compiler_quad_t  ## Generated based on /usr/include/sys/types.h:37:18
  u_quad_t* = compiler_u_quad_t ## Generated based on /usr/include/sys/types.h:38:20
  fsid_t* = compiler_fsid_t  ## Generated based on /usr/include/sys/types.h:39:18
  loff_t* = compiler_loff_t  ## Generated based on /usr/include/sys/types.h:42:18
  ino_t* = compiler_ino_t    ## Generated based on /usr/include/sys/types.h:47:17
  dev_t* = compiler_dev_t    ## Generated based on /usr/include/sys/types.h:59:17
  gid_t* = compiler_gid_t    ## Generated based on /usr/include/sys/types.h:64:17
  mode_t* = compiler_mode_t  ## Generated based on /usr/include/sys/types.h:69:18
  nlink_t* = compiler_nlink_t ## Generated based on /usr/include/sys/types.h:74:19
  uid_t* = compiler_uid_t    ## Generated based on /usr/include/sys/types.h:79:17
  pid_t* = compiler_pid_t    ## Generated based on /usr/include/sys/types.h:97:17
  id_t* = compiler_id_t      ## Generated based on /usr/include/sys/types.h:103:16
  daddr_t* = compiler_daddr_t ## Generated based on /usr/include/sys/types.h:114:19
  caddr_t* = compiler_caddr_t ## Generated based on /usr/include/sys/types.h:115:19
  key_t* = compiler_key_t    ## Generated based on /usr/include/sys/types.h:121:17
  clock_t* = compiler_clock_t ## Generated based on /usr/include/bits/types/clock_t.h:7:19
  clockid_t* = compiler_clockid_t ## Generated based on /usr/include/bits/types/clockid_t.h:7:21
  time_t* = compiler_time_t  ## Generated based on /usr/include/bits/types/time_t.h:10:18
  timer_t* = compiler_timer_t ## Generated based on /usr/include/bits/types/timer_t.h:7:19
  ulong_typedef* = culong    ## Generated based on /usr/include/sys/types.h:148:27
  ushort_typedef* = cushort  ## Generated based on /usr/include/sys/types.h:149:28
  uint_typedef_71D0FDC8* = cuint ## Generated based on /usr/include/sys/types.h:150:22
  u_int8_t_typedef* = compiler_uint8_t ## Generated based on /usr/include/sys/types.h:158:19
  u_int16_t_typedef* = compiler_uint16_t ## Generated based on /usr/include/sys/types.h:159:20
  u_int32_t_typedef* = compiler_uint32_t ## Generated based on /usr/include/sys/types.h:160:20
  u_int64_t_typedef* = compiler_uint64_t ## Generated based on /usr/include/sys/types.h:161:20
  register_t* = clong        ## Generated based on /usr/include/sys/types.h:164:13
  struct_sigset_t* {.pure, inheritable, bycopy.} = object
    compiler_val*: array[16'i64, culong] ## Generated based on /usr/include/bits/types/__sigset_t.h:5:9
  compiler_sigset_t* = struct_sigset_t ## Generated based on /usr/include/bits/types/__sigset_t.h:8:3
  sigset_t* = compiler_sigset_t ## Generated based on /usr/include/bits/types/sigset_t.h:7:20
  struct_timeval* {.pure, inheritable, bycopy.} = object
    tv_sec*: compiler_time_t ## Generated based on /usr/include/bits/types/struct_timeval.h:8:8
    tv_usec*: compiler_suseconds_t
  struct_timespec* {.pure, inheritable, bycopy.} = object
    tv_sec*: compiler_time_t ## Generated based on /usr/include/bits/types/struct_timespec.h:11:8
    tv_nsec*: compiler_syscall_slong_t
  suseconds_t* = compiler_suseconds_t ## Generated based on /usr/include/sys/select.h:43:23
  compiler_fd_mask* = clong  ## Generated based on /usr/include/sys/select.h:49:18
  struct_fd_set* {.pure, inheritable, bycopy.} = object
    compiler_fds_bits*: array[16'i64, compiler_fd_mask] ## Generated based on /usr/include/sys/select.h:59:9
  fd_set* = struct_fd_set    ## Generated based on /usr/include/sys/select.h:70:5
  fd_mask* = compiler_fd_mask ## Generated based on /usr/include/sys/select.h:77:19
  blksize_t* = compiler_blksize_t ## Generated based on /usr/include/sys/types.h:185:21
  blkcnt_t* = compiler_blkcnt_t ## Generated based on /usr/include/sys/types.h:192:20
  fsblkcnt_t* = compiler_fsblkcnt_t ## Generated based on /usr/include/sys/types.h:196:22
  fsfilcnt_t* = compiler_fsfilcnt_t ## Generated based on /usr/include/sys/types.h:200:22
  union_atomic_wide_counter_compiler_value32_t* {.pure, inheritable, bycopy.} = object
    compiler_low*: cuint
    compiler_high*: cuint
  union_atomic_wide_counter* {.union, bycopy.} = object
    compiler_value64*: culonglong ## Generated based on /usr/include/bits/atomic_wide_counter.h:25:9
    compiler_value32*: union_atomic_wide_counter_compiler_value32_t
  compiler_atomic_wide_counter* = union_atomic_wide_counter ## Generated based on /usr/include/bits/atomic_wide_counter.h:33:3
  struct_pthread_internal_list* {.pure, inheritable, bycopy.} = object
    compiler_prev*: ptr struct_pthread_internal_list ## Generated based on /usr/include/bits/thread-shared-types.h:51:16
    compiler_next*: ptr struct_pthread_internal_list
  compiler_pthread_list_t* = struct_pthread_internal_list ## Generated based on /usr/include/bits/thread-shared-types.h:55:3
  struct_pthread_internal_slist* {.pure, inheritable, bycopy.} = object
    compiler_next*: ptr struct_pthread_internal_slist ## Generated based on /usr/include/bits/thread-shared-types.h:57:16
  compiler_pthread_slist_t* = struct_pthread_internal_slist ## Generated based on /usr/include/bits/thread-shared-types.h:60:3
  struct_pthread_mutex_s* {.pure, inheritable, bycopy.} = object
    compiler_lock*: cint     ## Generated based on /usr/include/bits/struct_mutex.h:22:8
    compiler_count*: cuint
    compiler_owner*: cint
    compiler_nusers*: cuint
    compiler_kind*: cint
    compiler_spins*: cshort
    compiler_elision*: cshort
    compiler_list*: compiler_pthread_list_t
  struct_pthread_rwlock_arch_t* {.pure, inheritable, bycopy.} = object
    compiler_readers*: cuint ## Generated based on /usr/include/bits/struct_rwlock.h:23:8
    compiler_writers*: cuint
    compiler_wrphase_futex*: cuint
    compiler_writers_futex*: cuint
    compiler_pad3*: cuint
    compiler_pad4*: cuint
    compiler_cur_writer*: cint
    compiler_shared*: cint
    compiler_rwelision*: cschar
    compiler_pad1*: array[7'i64, uint8]
    compiler_pad2*: culong
    compiler_flags*: cuint
  struct_pthread_cond_s* {.pure, inheritable, bycopy.} = object
    compiler_wseq*: compiler_atomic_wide_counter ## Generated based on /usr/include/bits/thread-shared-types.h:94:8
    compiler_g1_start*: compiler_atomic_wide_counter
    compiler_g_size*: array[2'i64, cuint]
    compiler_g1_orig_size*: cuint
    compiler_wrefs*: cuint
    compiler_g_signals*: array[2'i64, cuint]
  compiler_tss_t* = cuint    ## Generated based on /usr/include/bits/thread-shared-types.h:104:22
  compiler_thrd_t* = culong  ## Generated based on /usr/include/bits/thread-shared-types.h:105:27
  struct_once_flag* {.pure, inheritable, bycopy.} = object
    compiler_data*: cint     ## Generated based on /usr/include/bits/thread-shared-types.h:107:9
  compiler_once_flag* = struct_once_flag ## Generated based on /usr/include/bits/thread-shared-types.h:110:3
  pthread_t* = culong        ## Generated based on /usr/include/bits/pthreadtypes.h:27:27
  union_pthread_mutexattr_t* {.union, bycopy.} = object
    compiler_size*: array[4'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:32:9
    compiler_align*: cint
  pthread_mutexattr_t* = union_pthread_mutexattr_t ## Generated based on /usr/include/bits/pthreadtypes.h:36:3
  union_pthread_condattr_t* {.union, bycopy.} = object
    compiler_size*: array[4'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:41:9
    compiler_align*: cint
  pthread_condattr_t* = union_pthread_condattr_t ## Generated based on /usr/include/bits/pthreadtypes.h:45:3
  pthread_key_t* = cuint     ## Generated based on /usr/include/bits/pthreadtypes.h:49:22
  pthread_once_t* = cint     ## Generated based on /usr/include/bits/pthreadtypes.h:53:30
  union_pthread_attr_t* {.union, bycopy.} = object
    compiler_size*: array[56'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:56:7
    compiler_align*: clong
  pthread_attr_t* = union_pthread_attr_t ## Generated based on /usr/include/bits/pthreadtypes.h:62:30
  union_pthread_mutex_t* {.union, bycopy.} = object
    compiler_data*: struct_pthread_mutex_s ## Generated based on /usr/include/bits/pthreadtypes.h:67:9
    compiler_size*: array[40'i64, cschar]
    compiler_align*: clong
  pthread_mutex_t* = union_pthread_mutex_t ## Generated based on /usr/include/bits/pthreadtypes.h:72:3
  union_pthread_cond_t* {.union, bycopy.} = object
    compiler_data*: struct_pthread_cond_s ## Generated based on /usr/include/bits/pthreadtypes.h:75:9
    compiler_size*: array[48'i64, cschar]
    compiler_align*: clonglong
  pthread_cond_t* = union_pthread_cond_t ## Generated based on /usr/include/bits/pthreadtypes.h:80:3
  union_pthread_rwlock_t* {.union, bycopy.} = object
    compiler_data*: struct_pthread_rwlock_arch_t ## Generated based on /usr/include/bits/pthreadtypes.h:86:9
    compiler_size*: array[56'i64, cschar]
    compiler_align*: clong
  pthread_rwlock_t* = union_pthread_rwlock_t ## Generated based on /usr/include/bits/pthreadtypes.h:91:3
  union_pthread_rwlockattr_t* {.union, bycopy.} = object
    compiler_size*: array[8'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:93:9
    compiler_align*: clong
  pthread_rwlockattr_t* = union_pthread_rwlockattr_t ## Generated based on /usr/include/bits/pthreadtypes.h:97:3
  pthread_spinlock_t* = cint ## Generated based on /usr/include/bits/pthreadtypes.h:103:22
  union_pthread_barrier_t* {.union, bycopy.} = object
    compiler_size*: array[32'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:108:9
    compiler_align*: clong
  pthread_barrier_t* = union_pthread_barrier_t ## Generated based on /usr/include/bits/pthreadtypes.h:112:3
  union_pthread_barrierattr_t* {.union, bycopy.} = object
    compiler_size*: array[4'i64, cschar] ## Generated based on /usr/include/bits/pthreadtypes.h:114:9
    compiler_align*: cint
  pthread_barrierattr_t* = union_pthread_barrierattr_t ## Generated based on /usr/include/bits/pthreadtypes.h:118:3
  struct_random_data* {.pure, inheritable, bycopy.} = object
    fptr*: ptr int32         ## Generated based on /usr/include/stdlib.h:543:8
    rptr*: ptr int32
    state*: ptr int32
    rand_type*: cint
    rand_deg*: cint
    rand_sep*: cint
    end_ptr*: ptr int32
  struct_drand48_data* {.pure, inheritable, bycopy.} = object
    compiler_x*: array[3'i64, cushort] ## Generated based on /usr/include/stdlib.h:610:8
    compiler_old_x*: array[3'i64, cushort]
    compiler_c*: cushort
    compiler_init*: cushort
    compiler_a*: culonglong
  compiler_compar_fn_t* = proc (a0: pointer; a1: pointer): cint {.cdecl.} ## Generated based on /usr/include/stdlib.h:948:15
  wchar_t* = cint            ## Generated based on /usr/lib/clang/19/include/__stddef_wchar_t.h:24:24
  struct_locale_struct* {.pure, inheritable, bycopy.} = object
    compiler_locales*: array[13'i64, ptr struct_locale_data] ## Generated based on /usr/include/bits/types/__locale_t.h:27:8
    compiler_ctype_b*: ptr cushort
    compiler_ctype_tolower*: ptr cint
    compiler_ctype_toupper*: ptr cint
    compiler_names*: array[13'i64, cstring]
  compiler_locale_t* = ptr struct_locale_struct ## Generated based on /usr/include/bits/types/__locale_t.h:41:33
  locale_t* = compiler_locale_t ## Generated based on /usr/include/bits/types/locale_t.h:24:20
  struct_tm* {.pure, inheritable, bycopy.} = object
    tm_sec*: cint            ## Generated based on /usr/include/bits/types/struct_tm.h:7:8
    tm_min*: cint
    tm_hour*: cint
    tm_mday*: cint
    tm_mon*: cint
    tm_year*: cint
    tm_wday*: cint
    tm_yday*: cint
    tm_isdst*: cint
    tm_gmtoff*: clong
    tm_zone*: cstring
  struct_itimerspec* {.pure, inheritable, bycopy.} = object
    it_interval*: struct_timespec ## Generated based on /usr/include/bits/types/struct_itimerspec.h:8:8
    it_value*: struct_timespec
  lxw_row_t* = uint32        ## Generated based on /usr/include/xlsxwriter/common.h:41:18
  lxw_col_t* = uint16        ## Generated based on /usr/include/xlsxwriter/common.h:47:18
  lxw_error* = enum_lxw_error ## Generated based on /usr/include/xlsxwriter/common.h:153:3
  struct_lxw_datetime* {.pure, inheritable, bycopy.} = object
    year*: cint              ## Generated based on /usr/include/xlsxwriter/common.h:159:16
    month*: cint
    day*: cint
    hour*: cint
    min*: cint
    sec*: cdouble
  lxw_datetime* = struct_lxw_datetime ## Generated based on /usr/include/xlsxwriter/common.h:174:3
  struct_lxw_formats* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_format ## Generated based on /usr/include/xlsxwriter/common.h:424:1
    stqh_last*: ptr ptr struct_lxw_format
  struct_lxw_format_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_format
  struct_lxw_format* {.pure, inheritable, bycopy.} = object
    file*: ptr FILE          ## Generated based on /usr/include/xlsxwriter/format.h:359:16
    xf_format_indices*: ptr lxw_hash_table
    dxf_format_indices*: ptr lxw_hash_table
    num_xf_formats*: ptr uint16
    num_dxf_formats*: ptr uint16
    xf_index*: int32
    dxf_index*: int32
    xf_id*: int32
    num_format*: array[128'i64, cschar]
    font_name*: array[128'i64, cschar]
    font_scheme*: array[128'i64, cschar]
    num_format_index*: uint16
    font_index*: uint16
    has_font*: uint8
    has_dxf_font*: uint8
    font_size*: cdouble
    bold*: uint8
    italic*: uint8
    font_color*: lxw_color_t
    underline*: uint8
    font_strikeout*: uint8
    font_outline*: uint8
    font_shadow*: uint8
    font_script*: uint8
    font_family*: uint8
    font_charset*: uint8
    font_condense*: uint8
    font_extend*: uint8
    theme*: uint8
    hyperlink*: uint8
    hidden*: uint8
    locked*: uint8
    text_h_align*: uint8
    text_wrap*: uint8
    text_v_align*: uint8
    text_justlast*: uint8
    rotation*: int16
    fg_color*: lxw_color_t
    bg_color*: lxw_color_t
    dxf_fg_color*: lxw_color_t
    dxf_bg_color*: lxw_color_t
    pattern*: uint8
    has_fill*: uint8
    has_dxf_fill*: uint8
    fill_index*: int32
    fill_count*: int32
    border_index*: int32
    has_border*: uint8
    has_dxf_border*: uint8
    border_count*: int32
    bottom*: uint8
    diag_border*: uint8
    diag_type*: uint8
    left*: uint8
    right*: uint8
    top*: uint8
    bottom_color*: lxw_color_t
    diag_color*: lxw_color_t
    left_color*: lxw_color_t
    right_color*: lxw_color_t
    top_color*: lxw_color_t
    indent*: uint8
    shrink*: uint8
    merge_range*: uint8
    reading_order*: uint8
    just_distrib*: uint8
    color_indexed*: uint8
    font_only*: uint8
    quote_prefix*: uint8
    list_pointers*: struct_lxw_format_list_pointers_t
  struct_lxw_tuples* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_tuple ## Generated based on /usr/include/xlsxwriter/common.h:427:1
    stqh_last*: ptr ptr struct_lxw_tuple
  struct_lxw_tuple_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_tuple
  struct_lxw_tuple* {.pure, inheritable, bycopy.} = object
    key*: cstring            ## Generated based on /usr/include/xlsxwriter/common.h:430:16
    value*: cstring
    list_pointers*: struct_lxw_tuple_list_pointers_t
  struct_lxw_custom_properties* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_custom_property ## Generated based on /usr/include/xlsxwriter/common.h:428:1
    stqh_last*: ptr ptr struct_lxw_custom_property
  struct_lxw_custom_property_u_t* {.union, bycopy.} = object
    string*: cstring
    number*: cdouble
    integer*: int32
    boolean*: uint8
    datetime*: lxw_datetime
  struct_lxw_custom_property_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_custom_property
  struct_lxw_custom_property* {.pure, inheritable, bycopy.} = object
    type_field*: enum_lxw_custom_property_types ## Generated based on /usr/include/xlsxwriter/common.h:438:16
    name*: cstring
    u*: struct_lxw_custom_property_u_t
    list_pointers*: struct_lxw_custom_property_list_pointers_t
  lxw_tuple* = struct_lxw_tuple ## Generated based on /usr/include/xlsxwriter/common.h:435:3
  lxw_custom_property* = struct_lxw_custom_property ## Generated based on /usr/include/xlsxwriter/common.h:453:3
  struct_sst_rb_tree* {.pure, inheritable, bycopy.} = object
    rbh_root*: ptr struct_sst_element ## Generated based on /usr/include/xlsxwriter/shared_strings.h:20:1
  struct_sst_element_sst_order_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_sst_element
  struct_sst_element_sst_tree_pointers_t* {.pure, inheritable, bycopy.} = object
    rbe_left*: ptr struct_sst_element
    rbe_right*: ptr struct_sst_element
    rbe_parent*: ptr struct_sst_element
    rbe_color*: cint
  struct_sst_element* {.pure, inheritable, bycopy.} = object
    index*: uint32           ## Generated based on /usr/include/xlsxwriter/shared_strings.h:38:8
    string*: cstring
    is_rich_string*: uint8
    sst_order_pointers*: struct_sst_element_sst_order_pointers_t
    sst_tree_pointers*: struct_sst_element_sst_tree_pointers_t
  struct_sst_order_list* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_sst_element ## Generated based on /usr/include/xlsxwriter/shared_strings.h:23:1
    stqh_last*: ptr ptr struct_sst_element
  struct_lxw_sst* {.pure, inheritable, bycopy.} = object
    file*: ptr FILE          ## Generated based on /usr/include/xlsxwriter/shared_strings.h:50:16
    string_count*: uint32
    unique_count*: uint32
    order_list*: ptr struct_sst_order_list
    rb_tree*: ptr struct_sst_rb_tree
  lxw_sst* = struct_lxw_sst  ## Generated based on /usr/include/xlsxwriter/shared_strings.h:59:3
  struct_lxw_hash_order_list* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_hash_element ## Generated based on /usr/include/xlsxwriter/hash_table.h:21:1
    stqh_last*: ptr ptr struct_lxw_hash_element
  struct_lxw_hash_element_lxw_hash_order_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_hash_element
  struct_lxw_hash_element_lxw_hash_list_pointers_t* {.pure, inheritable, bycopy.} = object
    sle_next*: ptr struct_lxw_hash_element
  struct_lxw_hash_element* {.pure, inheritable, bycopy.} = object
    key*: pointer            ## Generated based on /usr/include/xlsxwriter/hash_table.h:43:16
    value*: pointer
    lxw_hash_order_pointers*: struct_lxw_hash_element_lxw_hash_order_pointers_t
    lxw_hash_list_pointers*: struct_lxw_hash_element_lxw_hash_list_pointers_t
  struct_lxw_hash_bucket_list* {.pure, inheritable, bycopy.} = object
    slh_first*: ptr struct_lxw_hash_element ## Generated based on /usr/include/xlsxwriter/hash_table.h:22:1
  struct_lxw_hash_table* {.pure, inheritable, bycopy.} = object
    num_buckets*: uint32     ## Generated based on /usr/include/xlsxwriter/hash_table.h:25:16
    used_buckets*: uint32
    unique_count*: uint32
    free_key*: uint8
    free_value*: uint8
    order_list*: ptr struct_lxw_hash_order_list
    buckets*: ptr ptr struct_lxw_hash_bucket_list
  lxw_hash_table* = struct_lxw_hash_table ## Generated based on /usr/include/xlsxwriter/hash_table.h:34:3
  lxw_hash_element* = struct_lxw_hash_element ## Generated based on /usr/include/xlsxwriter/hash_table.h:49:3
  lxw_color_t* = uint32      ## Generated based on /usr/include/xlsxwriter/format.h:76:18
  lxw_format* = struct_lxw_format ## Generated based on /usr/include/xlsxwriter/format.h:442:3
  struct_lxw_font* {.pure, inheritable, bycopy.} = object
    font_name*: array[128'i64, cschar] ## Generated based on /usr/include/xlsxwriter/format.h:447:16
    font_size*: cdouble
    bold*: uint8
    italic*: uint8
    underline*: uint8
    theme*: uint8
    font_strikeout*: uint8
    font_outline*: uint8
    font_shadow*: uint8
    font_script*: uint8
    font_family*: uint8
    font_charset*: uint8
    font_condense*: uint8
    font_extend*: uint8
    font_color*: lxw_color_t
  lxw_font* = struct_lxw_font ## Generated based on /usr/include/xlsxwriter/format.h:464:3
  struct_lxw_border* {.pure, inheritable, bycopy.} = object
    bottom*: uint8           ## Generated based on /usr/include/xlsxwriter/format.h:469:16
    diag_border*: uint8
    diag_type*: uint8
    left*: uint8
    right*: uint8
    top*: uint8
    bottom_color*: lxw_color_t
    diag_color*: lxw_color_t
    left_color*: lxw_color_t
    right_color*: lxw_color_t
    top_color*: lxw_color_t
  lxw_border* = struct_lxw_border ## Generated based on /usr/include/xlsxwriter/format.h:484:3
  struct_lxw_fill* {.pure, inheritable, bycopy.} = object
    fg_color*: lxw_color_t   ## Generated based on /usr/include/xlsxwriter/format.h:489:16
    bg_color*: lxw_color_t
    pattern*: uint8
  lxw_fill* = struct_lxw_fill ## Generated based on /usr/include/xlsxwriter/format.h:495:3
  struct_lxw_chart_series_list* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_chart_series ## Generated based on /usr/include/xlsxwriter/chart.h:81:1
    stqh_last*: ptr ptr struct_lxw_chart_series
  struct_lxw_chart_series_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_chart_series
  struct_lxw_chart_series* {.pure, inheritable, bycopy.} = object
    categories*: ptr lxw_series_range ## Generated based on /usr/include/xlsxwriter/chart.h:961:16
    values*: ptr lxw_series_range
    title*: lxw_chart_title
    line*: ptr lxw_chart_line
    fill*: ptr lxw_chart_fill
    pattern*: ptr lxw_chart_pattern
    marker*: ptr lxw_chart_marker
    points*: ptr lxw_chart_point
    data_labels*: ptr lxw_chart_custom_label
    point_count*: uint16
    data_label_count*: uint16
    smooth*: uint8
    invert_if_negative*: uint8
    has_labels*: uint8
    show_labels_value*: uint8
    show_labels_category*: uint8
    show_labels_name*: uint8
    show_labels_leader*: uint8
    show_labels_legend*: uint8
    show_labels_percent*: uint8
    label_position*: uint8
    label_separator*: uint8
    default_label_position*: uint8
    label_num_format*: cstring
    label_font*: ptr lxw_chart_font
    label_line*: ptr lxw_chart_line
    label_fill*: ptr lxw_chart_fill
    label_pattern*: ptr lxw_chart_pattern
    x_error_bars*: ptr lxw_series_error_bars
    y_error_bars*: ptr lxw_series_error_bars
    has_trendline*: uint8
    has_trendline_forecast*: uint8
    has_trendline_equation*: uint8
    has_trendline_r_squared*: uint8
    has_trendline_intercept*: uint8
    trendline_type*: uint8
    trendline_value*: uint8
    trendline_forward*: cdouble
    trendline_backward*: cdouble
    trendline_value_type*: uint8
    trendline_name*: cstring
    trendline_line*: ptr lxw_chart_line
    trendline_intercept*: cdouble
    list_pointers*: struct_lxw_chart_series_list_pointers_t
  struct_lxw_series_data_points* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_series_data_point ## Generated based on /usr/include/xlsxwriter/chart.h:82:1
    stqh_last*: ptr ptr struct_lxw_series_data_point
  struct_lxw_series_data_point_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_series_data_point
  struct_lxw_series_data_point* {.pure, inheritable, bycopy.} = object
    is_string*: uint8        ## Generated based on /usr/include/xlsxwriter/chart.h:625:16
    number*: cdouble
    string*: cstring
    no_data*: uint8
    list_pointers*: struct_lxw_series_data_point_list_pointers_t
  lxw_chart_type* = enum_lxw_chart_type ## Generated based on /usr/include/xlsxwriter/chart.h:160:3
  lxw_chart_legend_position* = enum_lxw_chart_legend_position ## Generated based on /usr/include/xlsxwriter/chart.h:193:3
  lxw_chart_line_dash_type* = enum_lxw_chart_line_dash_type ## Generated based on /usr/include/xlsxwriter/chart.h:231:3
  lxw_chart_marker_type* = enum_lxw_chart_marker_type ## Generated based on /usr/include/xlsxwriter/chart.h:270:3
  lxw_chart_pattern_type* = enum_lxw_chart_pattern_type ## Generated based on /usr/include/xlsxwriter/chart.h:423:3
  lxw_chart_label_position* = enum_lxw_chart_label_position ## Generated based on /usr/include/xlsxwriter/chart.h:458:3
  lxw_chart_label_separator* = enum_lxw_chart_label_separator ## Generated based on /usr/include/xlsxwriter/chart.h:478:3
  lxw_chart_axis_type* = enum_lxw_chart_axis_type ## Generated based on /usr/include/xlsxwriter/chart.h:489:3
  lxw_chart_axis_tick_position* = enum_lxw_chart_axis_tick_position ## Generated based on /usr/include/xlsxwriter/chart.h:517:3
  lxw_chart_axis_label_position* = enum_lxw_chart_axis_label_position ## Generated based on /usr/include/xlsxwriter/chart.h:537:3
  lxw_chart_axis_label_alignment* = enum_lxw_chart_axis_label_alignment ## Generated based on /usr/include/xlsxwriter/chart.h:551:3
  lxw_chart_axis_display_unit* = enum_lxw_chart_axis_display_unit ## Generated based on /usr/include/xlsxwriter/chart.h:587:3
  lxw_chart_tick_mark* = enum_lxw_chart_axis_tick_mark ## Generated based on /usr/include/xlsxwriter/chart.h:608:3
  struct_lxw_series_range* {.pure, inheritable, bycopy.} = object
    formula*: cstring        ## Generated based on /usr/include/xlsxwriter/chart.h:610:16
    sheetname*: cstring
    first_row*: lxw_row_t
    last_row*: lxw_row_t
    first_col*: lxw_col_t
    last_col*: lxw_col_t
    ignore_cache*: uint8
    has_string_cache*: uint8
    num_data_points*: uint16
    data_cache*: ptr struct_lxw_series_data_points
  lxw_series_range* = struct_lxw_series_range ## Generated based on /usr/include/xlsxwriter/chart.h:623:3
  lxw_series_data_point* = struct_lxw_series_data_point ## Generated based on /usr/include/xlsxwriter/chart.h:633:3
  struct_lxw_chart_line* {.pure, inheritable, bycopy.} = object
    color*: lxw_color_t      ## Generated based on /usr/include/xlsxwriter/chart.h:640:16
    none*: uint8
    width*: cfloat
    dash_type*: uint8
    transparency*: uint8
  lxw_chart_line* = struct_lxw_chart_line ## Generated based on /usr/include/xlsxwriter/chart.h:657:3
  struct_lxw_chart_fill* {.pure, inheritable, bycopy.} = object
    color*: lxw_color_t      ## Generated based on /usr/include/xlsxwriter/chart.h:664:16
    none*: uint8
    transparency*: uint8
  lxw_chart_fill* = struct_lxw_chart_fill ## Generated based on /usr/include/xlsxwriter/chart.h:675:3
  struct_lxw_chart_pattern* {.pure, inheritable, bycopy.} = object
    fg_color*: lxw_color_t   ## Generated based on /usr/include/xlsxwriter/chart.h:682:16
    bg_color*: lxw_color_t
    type_field*: uint8
  lxw_chart_pattern* = struct_lxw_chart_pattern ## Generated based on /usr/include/xlsxwriter/chart.h:693:3
  struct_lxw_chart_font* {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /usr/include/xlsxwriter/chart.h:700:16
    size*: cdouble
    bold*: uint8
    italic*: uint8
    underline*: uint8
    rotation*: int32
    color*: lxw_color_t
    pitch_family*: uint8
    charset*: uint8
    baseline*: int8
  lxw_chart_font* = struct_lxw_chart_font ## Generated based on /usr/include/xlsxwriter/chart.h:738:3
  struct_lxw_chart_marker* {.pure, inheritable, bycopy.} = object
    type_field*: uint8       ## Generated based on /usr/include/xlsxwriter/chart.h:740:16
    size*: uint8
    line*: ptr lxw_chart_line
    fill*: ptr lxw_chart_fill
    pattern*: ptr lxw_chart_pattern
  lxw_chart_marker* = struct_lxw_chart_marker ## Generated based on /usr/include/xlsxwriter/chart.h:748:3
  struct_lxw_chart_legend* {.pure, inheritable, bycopy.} = object
    font*: ptr lxw_chart_font ## Generated based on /usr/include/xlsxwriter/chart.h:750:16
    position*: uint8
  lxw_chart_legend* = struct_lxw_chart_legend ## Generated based on /usr/include/xlsxwriter/chart.h:755:3
  struct_lxw_chart_title* {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /usr/include/xlsxwriter/chart.h:757:16
    row*: lxw_row_t
    col*: lxw_col_t
    font*: ptr lxw_chart_font
    off*: uint8
    is_horizontal*: uint8
    ignore_cache*: uint8
    range*: ptr lxw_series_range
    data_point*: struct_lxw_series_data_point
  lxw_chart_title* = struct_lxw_chart_title ## Generated based on /usr/include/xlsxwriter/chart.h:773:3
  struct_lxw_chart_point* {.pure, inheritable, bycopy.} = object
    line*: ptr lxw_chart_line ## Generated based on /usr/include/xlsxwriter/chart.h:781:16
    fill*: ptr lxw_chart_fill
    pattern*: ptr lxw_chart_pattern
  lxw_chart_point* = struct_lxw_chart_point ## Generated based on /usr/include/xlsxwriter/chart.h:792:3
  struct_lxw_chart_data_label* {.pure, inheritable, bycopy.} = object
    value*: cstring          ## Generated based on /usr/include/xlsxwriter/chart.h:800:16
    hide*: uint8
    font*: ptr lxw_chart_font
    line*: ptr lxw_chart_line
    fill*: ptr lxw_chart_fill
    pattern*: ptr lxw_chart_pattern
  lxw_chart_data_label* = struct_lxw_chart_data_label ## Generated based on /usr/include/xlsxwriter/chart.h:822:3
  struct_lxw_chart_custom_label* {.pure, inheritable, bycopy.} = object
    value*: cstring          ## Generated based on /usr/include/xlsxwriter/chart.h:825:16
    hide*: uint8
    font*: ptr lxw_chart_font
    line*: ptr lxw_chart_line
    fill*: ptr lxw_chart_fill
    pattern*: ptr lxw_chart_pattern
    range*: ptr lxw_series_range
    data_point*: struct_lxw_series_data_point
  lxw_chart_custom_label* = struct_lxw_chart_custom_label ## Generated based on /usr/include/xlsxwriter/chart.h:840:3
  lxw_chart_blank* = enum_lxw_chart_blank ## Generated based on /usr/include/xlsxwriter/chart.h:855:3
  lxw_chart_error_bar_type* = enum_lxw_chart_error_bar_type ## Generated based on /usr/include/xlsxwriter/chart.h:879:3
  lxw_chart_error_bar_direction* = enum_lxw_chart_error_bar_direction ## Generated based on /usr/include/xlsxwriter/chart.h:894:3
  lxw_chart_error_bar_axis* = enum_lxw_chart_error_bar_axis ## Generated based on /usr/include/xlsxwriter/chart.h:905:3
  lxw_chart_error_bar_cap* = enum_lxw_chart_error_bar_cap ## Generated based on /usr/include/xlsxwriter/chart.h:916:3
  struct_lxw_series_error_bars* {.pure, inheritable, bycopy.} = object
    type_field*: uint8       ## Generated based on /usr/include/xlsxwriter/chart.h:918:16
    direction*: uint8
    endcap*: uint8
    has_value*: uint8
    is_set*: uint8
    is_x*: uint8
    chart_group*: uint8
    value*: cdouble
    line*: ptr lxw_chart_line
  lxw_series_error_bars* = struct_lxw_series_error_bars ## Generated based on /usr/include/xlsxwriter/chart.h:929:3
  lxw_chart_trendline_type* = enum_lxw_chart_trendline_type ## Generated based on /usr/include/xlsxwriter/chart.h:952:3
  lxw_chart_series* = struct_lxw_chart_series ## Generated based on /usr/include/xlsxwriter/chart.h:1014:3
  struct_lxw_chart_gridline* {.pure, inheritable, bycopy.} = object
    visible*: uint8          ## Generated based on /usr/include/xlsxwriter/chart.h:1017:16
    line*: ptr lxw_chart_line
  lxw_chart_gridline* = struct_lxw_chart_gridline ## Generated based on /usr/include/xlsxwriter/chart.h:1022:3
  struct_lxw_chart_axis* {.pure, inheritable, bycopy.} = object
    title*: lxw_chart_title  ## Generated based on /usr/include/xlsxwriter/chart.h:1030:16
    num_format*: cstring
    default_num_format*: cstring
    source_linked*: uint8
    major_tick_mark*: uint8
    minor_tick_mark*: uint8
    is_horizontal*: uint8
    major_gridlines*: lxw_chart_gridline
    minor_gridlines*: lxw_chart_gridline
    num_font*: ptr lxw_chart_font
    line*: ptr lxw_chart_line
    fill*: ptr lxw_chart_fill
    pattern*: ptr lxw_chart_pattern
    is_category*: uint8
    is_date*: uint8
    is_value*: uint8
    axis_position*: uint8
    position_axis*: uint8
    label_position*: uint8
    label_align*: uint8
    hidden*: uint8
    reverse*: uint8
    has_min*: uint8
    min*: cdouble
    has_max*: uint8
    max*: cdouble
    has_major_unit*: uint8
    major_unit*: cdouble
    has_minor_unit*: uint8
    minor_unit*: cdouble
    interval_unit*: uint16
    interval_tick*: uint16
    log_base*: uint16
    display_units*: uint8
    display_units_visible*: uint8
    has_crossing*: uint8
    crossing_min*: uint8
    crossing_max*: uint8
    crossing*: cdouble
  lxw_chart_axis* = struct_lxw_chart_axis ## Generated based on /usr/include/xlsxwriter/chart.h:1083:3
  struct_lxw_chart_ordered_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_chart
  struct_lxw_chart_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_chart
  struct_lxw_chart* {.pure, inheritable, bycopy.} = object
    file*: ptr FILE          ## Generated based on /usr/include/xlsxwriter/chart.h:1091:16
    type_field*: uint8
    subtype*: uint8
    series_index*: uint16
    write_chart_type*: proc (a0: ptr struct_lxw_chart): void {.cdecl.}
    write_plot_area*: proc (a0: ptr struct_lxw_chart): void {.cdecl.}
    x_axis*: ptr lxw_chart_axis
    y_axis*: ptr lxw_chart_axis
    title*: lxw_chart_title
    id*: uint32
    axis_id_1*: uint32
    axis_id_2*: uint32
    axis_id_3*: uint32
    axis_id_4*: uint32
    in_use*: uint8
    chart_group*: uint8
    cat_has_num_fmt*: uint8
    is_chartsheet*: uint8
    has_horiz_cat_axis*: uint8
    has_horiz_val_axis*: uint8
    style_id*: uint8
    rotation*: uint16
    hole_size*: uint16
    no_title*: uint8
    has_overlap*: uint8
    overlap_y1*: int8
    overlap_y2*: int8
    gap_y1*: uint16
    gap_y2*: uint16
    grouping*: uint8
    default_cross_between*: uint8
    legend*: lxw_chart_legend
    delete_series*: ptr int16
    delete_series_count*: uint16
    default_marker*: ptr lxw_chart_marker
    chartarea_line*: ptr lxw_chart_line
    chartarea_fill*: ptr lxw_chart_fill
    chartarea_pattern*: ptr lxw_chart_pattern
    plotarea_line*: ptr lxw_chart_line
    plotarea_fill*: ptr lxw_chart_fill
    plotarea_pattern*: ptr lxw_chart_pattern
    has_drop_lines*: uint8
    drop_lines_line*: ptr lxw_chart_line
    has_high_low_lines*: uint8
    high_low_lines_line*: ptr lxw_chart_line
    series_list*: ptr struct_lxw_chart_series_list
    has_table*: uint8
    has_table_vertical*: uint8
    has_table_horizontal*: uint8
    has_table_outline*: uint8
    has_table_legend_keys*: uint8
    table_font*: ptr lxw_chart_font
    show_blanks_as*: uint8
    show_hidden_data*: uint8
    has_up_down_bars*: uint8
    up_bar_line*: ptr lxw_chart_line
    down_bar_line*: ptr lxw_chart_line
    up_bar_fill*: ptr lxw_chart_fill
    down_bar_fill*: ptr lxw_chart_fill
    default_label_position*: uint8
    is_protected*: uint8
    ordered_list_pointers*: struct_lxw_chart_ordered_list_pointers_t
    list_pointers*: struct_lxw_chart_list_pointers_t
  lxw_chart* = struct_lxw_chart ## Generated based on /usr/include/xlsxwriter/chart.h:1186:3
  struct_lxw_drawing_objects* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_drawing_object ## Generated based on /usr/include/xlsxwriter/drawing.h:18:1
    stqh_last*: ptr ptr struct_lxw_drawing_object
  struct_lxw_drawing_object_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_drawing_object
  struct_lxw_drawing_object* {.pure, inheritable, bycopy.} = object
    type_field*: uint8       ## Generated based on /usr/include/xlsxwriter/drawing.h:44:16
    anchor*: uint8
    from_field*: struct_lxw_drawing_coords
    to*: struct_lxw_drawing_coords
    col_absolute*: uint64
    row_absolute*: uint64
    width*: uint32
    height*: uint32
    shape*: uint8
    rel_index*: uint32
    url_rel_index*: uint32
    description*: cstring
    tip*: cstring
    decorative*: uint8
    list_pointers*: struct_lxw_drawing_object_list_pointers_t
  struct_lxw_drawing_coords* {.pure, inheritable, bycopy.} = object
    col*: uint32             ## Generated based on /usr/include/xlsxwriter/drawing.h:36:16
    row*: uint32
    col_offset*: cdouble
    row_offset*: cdouble
  lxw_drawing_coords* = struct_lxw_drawing_coords ## Generated based on /usr/include/xlsxwriter/drawing.h:41:3
  lxw_drawing_object* = struct_lxw_drawing_object ## Generated based on /usr/include/xlsxwriter/drawing.h:62:3
  struct_lxw_drawing* {.pure, inheritable, bycopy.} = object
    file*: ptr FILE          ## Generated based on /usr/include/xlsxwriter/drawing.h:67:16
    embedded*: uint8
    orientation*: uint8
    drawing_objects*: ptr struct_lxw_drawing_objects
  lxw_drawing* = struct_lxw_drawing ## Generated based on /usr/include/xlsxwriter/drawing.h:76:3
  struct_lxw_styles* {.pure, inheritable, bycopy.} = object
    file*: ptr FILE          ## Generated based on /usr/include/xlsxwriter/styles.h:21:16
    font_count*: uint32
    xf_count*: uint32
    dxf_count*: uint32
    num_format_count*: uint32
    border_count*: uint32
    fill_count*: uint32
    xf_formats*: ptr struct_lxw_formats
    dxf_formats*: ptr struct_lxw_formats
    has_hyperlink*: uint8
    hyperlink_font_id*: uint16
    has_comments*: uint8
  lxw_styles* = struct_lxw_styles ## Generated based on /usr/include/xlsxwriter/styles.h:36:3
  struct_xml_attribute_list_entries_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_xml_attribute
  struct_xml_attribute* {.pure, inheritable, bycopy.} = object
    key*: array[2080'i64, cschar] ## Generated based on /usr/include/xlsxwriter/xmlwriter.h:45:8
    value*: array[2080'i64, cschar]
    list_entries*: struct_xml_attribute_list_entries_t
  struct_xml_attribute_list* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_xml_attribute ## Generated based on /usr/include/xlsxwriter/xmlwriter.h:54:1
    stqh_last*: ptr ptr struct_xml_attribute
  struct_lxw_rel_tuples* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_rel_tuple ## Generated based on /usr/include/xlsxwriter/relationships.h:19:1
    stqh_last*: ptr ptr struct_lxw_rel_tuple
  struct_lxw_rel_tuple_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_rel_tuple
  struct_lxw_rel_tuple* {.pure, inheritable, bycopy.} = object
    type_field*: cstring     ## Generated based on /usr/include/xlsxwriter/relationships.h:21:16
    target*: cstring
    target_mode*: cstring
    list_pointers*: struct_lxw_rel_tuple_list_pointers_t
  lxw_rel_tuple* = struct_lxw_rel_tuple ## Generated based on /usr/include/xlsxwriter/relationships.h:29:3
  struct_lxw_relationships* {.pure, inheritable, bycopy.} = object
    file*: ptr FILE          ## Generated based on /usr/include/xlsxwriter/relationships.h:34:16
    rel_id*: uint32
    relationships*: ptr struct_lxw_rel_tuples
  lxw_relationships* = struct_lxw_relationships ## Generated based on /usr/include/xlsxwriter/relationships.h:41:3
  struct_lxw_table_cells* {.pure, inheritable, bycopy.} = object
    rbh_root*: ptr struct_lxw_cell ## Generated based on /usr/include/xlsxwriter/worksheet.h:748:1
  struct_lxw_cell_u_t* {.union, bycopy.} = object
    number*: cdouble
    string_id*: int32
    string*: cstring
  struct_lxw_cell_tree_pointers_t* {.pure, inheritable, bycopy.} = object
    rbe_left*: ptr struct_lxw_cell
    rbe_right*: ptr struct_lxw_cell
    rbe_parent*: ptr struct_lxw_cell
    rbe_color*: cint
  struct_lxw_cell* {.pure, inheritable, bycopy.} = object
    row_num*: lxw_row_t      ## Generated based on /usr/include/xlsxwriter/worksheet.h:2343:16
    col_num*: lxw_col_t
    type_field*: enum_cell_types
    format*: ptr lxw_format
    comment*: ptr lxw_vml_obj
    u*: struct_lxw_cell_u_t
    formula_result*: cdouble
    user_data1*: cstring
    user_data2*: cstring
    sst_string*: cstring
    tree_pointers*: struct_lxw_cell_tree_pointers_t
  struct_lxw_drawing_rel_ids* {.pure, inheritable, bycopy.} = object
    rbh_root*: ptr struct_lxw_drawing_rel_id ## Generated based on /usr/include/xlsxwriter/worksheet.h:749:1
  struct_lxw_drawing_rel_id_tree_pointers_t* {.pure, inheritable, bycopy.} = object
    rbe_left*: ptr struct_lxw_drawing_rel_id
    rbe_right*: ptr struct_lxw_drawing_rel_id
    rbe_parent*: ptr struct_lxw_drawing_rel_id
    rbe_color*: cint
  struct_lxw_drawing_rel_id* {.pure, inheritable, bycopy.} = object
    id*: uint32              ## Generated based on /usr/include/xlsxwriter/worksheet.h:2366:16
    target*: cstring
    tree_pointers*: struct_lxw_drawing_rel_id_tree_pointers_t
  struct_lxw_vml_drawing_rel_ids* {.pure, inheritable, bycopy.} = object
    rbh_root*: ptr struct_lxw_drawing_rel_id ## Generated based on /usr/include/xlsxwriter/worksheet.h:750:1
  struct_lxw_cond_format_hash* {.pure, inheritable, bycopy.} = object
    rbh_root*: ptr struct_lxw_cond_format_hash_element ## Generated based on /usr/include/xlsxwriter/worksheet.h:751:1
  struct_lxw_cond_format_hash_element_tree_pointers_t* {.pure, inheritable,
      bycopy.} = object
    rbe_left*: ptr struct_lxw_cond_format_hash_element
    rbe_right*: ptr struct_lxw_cond_format_hash_element
    rbe_parent*: ptr struct_lxw_cond_format_hash_element
    rbe_color*: cint
  struct_lxw_cond_format_hash_element* {.pure, inheritable, bycopy.} = object
    sqref*: array[2080'i64, cschar] ## Generated based on /usr/include/xlsxwriter/worksheet.h:1377:16
    cond_formats*: ptr struct_lxw_cond_format_list
    tree_pointers*: struct_lxw_cond_format_hash_element_tree_pointers_t
  struct_lxw_table_rows* {.pure, inheritable, bycopy.} = object
    rbh_root*: ptr struct_lxw_row ## Generated based on /usr/include/xlsxwriter/worksheet.h:754:8
    cached_row*: ptr struct_lxw_row
    cached_row_num*: lxw_row_t
  struct_lxw_row_tree_pointers_t* {.pure, inheritable, bycopy.} = object
    rbe_left*: ptr struct_lxw_row
    rbe_right*: ptr struct_lxw_row
    rbe_parent*: ptr struct_lxw_row
    rbe_color*: cint
  struct_lxw_row* {.pure, inheritable, bycopy.} = object
    row_num*: lxw_row_t      ## Generated based on /usr/include/xlsxwriter/worksheet.h:2325:16
    height*: cdouble
    format*: ptr lxw_format
    hidden*: uint8
    level*: uint8
    collapsed*: uint8
    row_changed*: uint8
    data_changed*: uint8
    height_changed*: uint8
    cells*: ptr struct_lxw_table_cells
    tree_pointers*: struct_lxw_row_tree_pointers_t
  struct_lxw_merged_ranges* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_merged_range ## Generated based on /usr/include/xlsxwriter/worksheet.h:817:1
    stqh_last*: ptr ptr struct_lxw_merged_range
  struct_lxw_merged_range_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_merged_range
  struct_lxw_merged_range* {.pure, inheritable, bycopy.} = object
    first_row*: lxw_row_t    ## Generated based on /usr/include/xlsxwriter/worksheet.h:863:16
    last_row*: lxw_row_t
    first_col*: lxw_col_t
    last_col*: lxw_col_t
    list_pointers*: struct_lxw_merged_range_list_pointers_t
  struct_lxw_selections* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_selection ## Generated based on /usr/include/xlsxwriter/worksheet.h:818:1
    stqh_last*: ptr ptr struct_lxw_selection
  struct_lxw_selection_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_selection
  struct_lxw_selection* {.pure, inheritable, bycopy.} = object
    pane*: array[12'i64, cschar] ## Generated based on /usr/include/xlsxwriter/worksheet.h:911:16
    active_cell*: array[28'i64, cschar]
    sqref*: array[28'i64, cschar]
    list_pointers*: struct_lxw_selection_list_pointers_t
  struct_lxw_data_validations* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_data_val_obj ## Generated based on /usr/include/xlsxwriter/worksheet.h:819:1
    stqh_last*: ptr ptr struct_lxw_data_val_obj
  struct_lxw_data_val_obj_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_data_val_obj
  struct_lxw_data_val_obj* {.pure, inheritable, bycopy.} = object
    validate*: uint8         ## Generated based on /usr/include/xlsxwriter/worksheet.h:1091:16
    criteria*: uint8
    ignore_blank*: uint8
    show_input*: uint8
    show_error*: uint8
    error_type*: uint8
    dropdown*: uint8
    value_number*: cdouble
    value_formula*: cstring
    value_list*: ptr cstring
    minimum_number*: cdouble
    minimum_formula*: cstring
    minimum_datetime*: lxw_datetime
    maximum_number*: cdouble
    maximum_formula*: cstring
    maximum_datetime*: lxw_datetime
    input_title*: cstring
    input_message*: cstring
    error_title*: cstring
    error_message*: cstring
    sqref*: array[28'i64, cschar]
    list_pointers*: struct_lxw_data_val_obj_list_pointers_t
  struct_lxw_cond_format_list* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_cond_format_obj ## Generated based on /usr/include/xlsxwriter/worksheet.h:820:1
    stqh_last*: ptr ptr struct_lxw_cond_format_obj
  struct_lxw_cond_format_obj_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_cond_format_obj
  struct_lxw_cond_format_obj* {.pure, inheritable, bycopy.} = object
    type_field*: uint8       ## Generated based on /usr/include/xlsxwriter/worksheet.h:1322:16
    criteria*: uint8
    min_value*: cdouble
    min_value_string*: cstring
    min_rule_type*: uint8
    min_color*: lxw_color_t
    mid_value*: cdouble
    mid_value_string*: cstring
    mid_value_type*: uint8
    mid_rule_type*: uint8
    mid_color*: lxw_color_t
    max_value*: cdouble
    max_value_string*: cstring
    max_value_type*: uint8
    max_rule_type*: uint8
    max_color*: lxw_color_t
    data_bar_2010*: uint8
    auto_min*: uint8
    auto_max*: uint8
    bar_only*: uint8
    bar_solid*: uint8
    bar_negative_color_same*: uint8
    bar_negative_border_color_same*: uint8
    bar_no_border*: uint8
    bar_direction*: uint8
    bar_axis_position*: uint8
    bar_color*: lxw_color_t
    bar_negative_color*: lxw_color_t
    bar_border_color*: lxw_color_t
    bar_negative_border_color*: lxw_color_t
    bar_axis_color*: lxw_color_t
    icon_style*: uint8
    reverse_icons*: uint8
    icons_only*: uint8
    stop_if_true*: uint8
    has_max*: uint8
    type_string*: cstring
    guid*: cstring
    dxf_index*: int32
    dxf_priority*: uint32
    first_cell*: array[14'i64, cschar]
    sqref*: array[2080'i64, cschar]
    list_pointers*: struct_lxw_cond_format_obj_list_pointers_t
  struct_lxw_image_props* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_object_properties ## Generated based on /usr/include/xlsxwriter/worksheet.h:821:1
    stqh_last*: ptr ptr struct_lxw_object_properties
  struct_lxw_object_properties_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_object_properties
  struct_lxw_object_properties* {.pure, inheritable, bycopy.} = object
    x_offset*: int32         ## Generated based on /usr/include/xlsxwriter/worksheet.h:1788:16
    y_offset*: int32
    x_scale*: cdouble
    y_scale*: cdouble
    row*: lxw_row_t
    col*: lxw_col_t
    filename*: cstring
    description*: cstring
    url*: cstring
    tip*: cstring
    object_position*: uint8
    stream*: ptr FILE
    image_type*: uint8
    is_image_buffer*: uint8
    image_buffer*: cstring
    image_buffer_size*: csize_t
    width*: cdouble
    height*: cdouble
    extension*: cstring
    x_dpi*: cdouble
    y_dpi*: cdouble
    chart*: ptr lxw_chart
    is_duplicate*: uint8
    is_background*: uint8
    md5*: cstring
    image_position*: cstring
    decorative*: uint8
    format*: ptr lxw_format
    list_pointers*: struct_lxw_object_properties_list_pointers_t
  struct_lxw_embedded_image_props* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_object_properties ## Generated based on /usr/include/xlsxwriter/worksheet.h:822:1
    stqh_last*: ptr ptr struct_lxw_object_properties
  struct_lxw_chart_props* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_object_properties ## Generated based on /usr/include/xlsxwriter/worksheet.h:823:1
    stqh_last*: ptr ptr struct_lxw_object_properties
  struct_lxw_comment_objs* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_vml_obj ## Generated based on /usr/include/xlsxwriter/worksheet.h:824:1
    stqh_last*: ptr ptr struct_lxw_vml_obj
  struct_lxw_vml_obj_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_vml_obj
  struct_lxw_vml_obj* {.pure, inheritable, bycopy.} = object
    row*: lxw_row_t          ## Generated based on /usr/include/xlsxwriter/worksheet.h:1947:16
    col*: lxw_col_t
    start_row*: lxw_row_t
    start_col*: lxw_col_t
    x_offset*: int32
    y_offset*: int32
    col_absolute*: uint64
    row_absolute*: uint64
    width*: uint32
    height*: uint32
    x_dpi*: cdouble
    y_dpi*: cdouble
    color*: lxw_color_t
    font_family*: uint8
    visible*: uint8
    author_id*: uint32
    rel_index*: uint32
    font_size*: cdouble
    from_field*: struct_lxw_drawing_coords
    to*: struct_lxw_drawing_coords
    author*: cstring
    font_name*: cstring
    text*: cstring
    image_position*: cstring
    name*: cstring
    macro_field*: cstring
    list_pointers*: struct_lxw_vml_obj_list_pointers_t
  struct_lxw_table_objs* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_table_obj ## Generated based on /usr/include/xlsxwriter/worksheet.h:825:1
    stqh_last*: ptr ptr struct_lxw_table_obj
  struct_lxw_table_obj_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_table_obj
  struct_lxw_table_obj* {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /usr/include/xlsxwriter/worksheet.h:1633:16
    total_string*: cstring
    columns*: ptr ptr lxw_table_column
    banded_columns*: uint8
    first_column*: uint8
    last_column*: uint8
    no_autofilter*: uint8
    no_banded_rows*: uint8
    no_header_row*: uint8
    style_type*: uint8
    style_type_number*: uint8
    total_row*: uint8
    first_row*: lxw_row_t
    first_col*: lxw_col_t
    last_row*: lxw_row_t
    last_col*: lxw_col_t
    num_cols*: lxw_col_t
    id*: uint32
    sqref*: array[2080'i64, cschar]
    filter_sqref*: array[2080'i64, cschar]
    list_pointers*: struct_lxw_table_obj_list_pointers_t
  struct_lxw_row_col_options* {.pure, inheritable, bycopy.} = object
    hidden*: uint8           ## Generated based on /usr/include/xlsxwriter/worksheet.h:842:16
    level*: uint8
    collapsed*: uint8
  lxw_row_col_options* = struct_lxw_row_col_options ## Generated based on /usr/include/xlsxwriter/worksheet.h:851:3
  struct_lxw_col_options* {.pure, inheritable, bycopy.} = object
    firstcol*: lxw_col_t     ## Generated based on /usr/include/xlsxwriter/worksheet.h:853:16
    lastcol*: lxw_col_t
    width*: cdouble
    format*: ptr lxw_format
    hidden*: uint8
    level*: uint8
    collapsed*: uint8
  lxw_col_options* = struct_lxw_col_options ## Generated based on /usr/include/xlsxwriter/worksheet.h:861:3
  lxw_merged_range* = struct_lxw_merged_range ## Generated based on /usr/include/xlsxwriter/worksheet.h:870:3
  struct_lxw_repeat_rows* {.pure, inheritable, bycopy.} = object
    in_use*: uint8           ## Generated based on /usr/include/xlsxwriter/worksheet.h:872:16
    first_row*: lxw_row_t
    last_row*: lxw_row_t
  lxw_repeat_rows* = struct_lxw_repeat_rows ## Generated based on /usr/include/xlsxwriter/worksheet.h:876:3
  struct_lxw_repeat_cols* {.pure, inheritable, bycopy.} = object
    in_use*: uint8           ## Generated based on /usr/include/xlsxwriter/worksheet.h:878:16
    first_col*: lxw_col_t
    last_col*: lxw_col_t
  lxw_repeat_cols* = struct_lxw_repeat_cols ## Generated based on /usr/include/xlsxwriter/worksheet.h:882:3
  struct_lxw_print_area* {.pure, inheritable, bycopy.} = object
    in_use*: uint8           ## Generated based on /usr/include/xlsxwriter/worksheet.h:884:16
    first_row*: lxw_row_t
    last_row*: lxw_row_t
    first_col*: lxw_col_t
    last_col*: lxw_col_t
  lxw_print_area* = struct_lxw_print_area ## Generated based on /usr/include/xlsxwriter/worksheet.h:890:3
  struct_lxw_autofilter* {.pure, inheritable, bycopy.} = object
    in_use*: uint8           ## Generated based on /usr/include/xlsxwriter/worksheet.h:892:16
    has_rules*: uint8
    first_row*: lxw_row_t
    last_row*: lxw_row_t
    first_col*: lxw_col_t
    last_col*: lxw_col_t
  lxw_autofilter* = struct_lxw_autofilter ## Generated based on /usr/include/xlsxwriter/worksheet.h:899:3
  struct_lxw_panes* {.pure, inheritable, bycopy.} = object
    type_field*: uint8       ## Generated based on /usr/include/xlsxwriter/worksheet.h:901:16
    first_row*: lxw_row_t
    first_col*: lxw_col_t
    top_row*: lxw_row_t
    left_col*: lxw_col_t
    x_split*: cdouble
    y_split*: cdouble
  lxw_panes* = struct_lxw_panes ## Generated based on /usr/include/xlsxwriter/worksheet.h:909:3
  lxw_selection* = struct_lxw_selection ## Generated based on /usr/include/xlsxwriter/worksheet.h:918:3
  struct_lxw_data_validation* {.pure, inheritable, bycopy.} = object
    validate*: uint8         ## Generated based on /usr/include/xlsxwriter/worksheet.h:923:16
    criteria*: uint8
    ignore_blank*: uint8
    show_input*: uint8
    show_error*: uint8
    error_type*: uint8
    dropdown*: uint8
    value_number*: cdouble
    value_formula*: cstring
    value_list*: ptr cstring
    value_datetime*: lxw_datetime
    minimum_number*: cdouble
    minimum_formula*: cstring
    minimum_datetime*: lxw_datetime
    maximum_number*: cdouble
    maximum_formula*: cstring
    maximum_datetime*: lxw_datetime
    input_title*: cstring
    input_message*: cstring
    error_title*: cstring
    error_message*: cstring
  lxw_data_validation* = struct_lxw_data_validation ## Generated based on /usr/include/xlsxwriter/worksheet.h:1086:3
  lxw_data_val_obj* = struct_lxw_data_val_obj ## Generated based on /usr/include/xlsxwriter/worksheet.h:1115:3
  struct_lxw_conditional_format* {.pure, inheritable, bycopy.} = object
    type_field*: uint8       ## Generated based on /usr/include/xlsxwriter/worksheet.h:1125:16
    criteria*: uint8
    value*: cdouble
    value_string*: cstring
    format*: ptr lxw_format
    min_value*: cdouble
    min_value_string*: cstring
    min_rule_type*: uint8
    min_color*: lxw_color_t
    mid_value*: cdouble
    mid_value_string*: cstring
    mid_rule_type*: uint8
    mid_color*: lxw_color_t
    max_value*: cdouble
    max_value_string*: cstring
    max_rule_type*: uint8
    max_color*: lxw_color_t
    bar_color*: lxw_color_t
    bar_only*: uint8
    data_bar_2010*: uint8
    bar_solid*: uint8
    bar_negative_color*: lxw_color_t
    bar_border_color*: lxw_color_t
    bar_negative_border_color*: lxw_color_t
    bar_negative_color_same*: uint8
    bar_negative_border_color_same*: uint8
    bar_no_border*: uint8
    bar_direction*: uint8
    bar_axis_position*: uint8
    bar_axis_color*: lxw_color_t
    icon_style*: uint8
    reverse_icons*: uint8
    icons_only*: uint8
    multi_range*: cstring
    stop_if_true*: uint8
  lxw_conditional_format* = struct_lxw_conditional_format ## Generated based on /usr/include/xlsxwriter/worksheet.h:1319:3
  lxw_cond_format_obj* = struct_lxw_cond_format_obj ## Generated based on /usr/include/xlsxwriter/worksheet.h:1375:3
  lxw_cond_format_hash_element* = struct_lxw_cond_format_hash_element ## Generated based on /usr/include/xlsxwriter/worksheet.h:1383:3
  struct_lxw_table_column* {.pure, inheritable, bycopy.} = object
    header*: cstring         ## Generated based on /usr/include/xlsxwriter/worksheet.h:1391:16
    formula*: cstring
    total_string*: cstring
    total_function*: uint8
    header_format*: ptr lxw_format
    format*: ptr lxw_format
    total_value*: cdouble
  lxw_table_column* = struct_lxw_table_column ## Generated based on /usr/include/xlsxwriter/worksheet.h:1415:3
  struct_lxw_table_options* {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /usr/include/xlsxwriter/worksheet.h:1424:16
    no_header_row*: uint8
    no_autofilter*: uint8
    no_banded_rows*: uint8
    banded_columns*: uint8
    first_column*: uint8
    last_column*: uint8
    style_type*: uint8
    style_type_number*: uint8
    total_row*: uint8
    columns*: ptr ptr lxw_table_column
  lxw_table_options* = struct_lxw_table_options ## Generated based on /usr/include/xlsxwriter/worksheet.h:1631:3
  lxw_table_obj* = struct_lxw_table_obj ## Generated based on /usr/include/xlsxwriter/worksheet.h:1658:3
  struct_lxw_filter_rule* {.pure, inheritable, bycopy.} = object
    criteria*: uint8         ## Generated based on /usr/include/xlsxwriter/worksheet.h:1666:16
    value_string*: cstring
    value*: cdouble
  lxw_filter_rule* = struct_lxw_filter_rule ## Generated based on /usr/include/xlsxwriter/worksheet.h:1677:3
  struct_lxw_filter_rule_obj* {.pure, inheritable, bycopy.} = object
    type_field*: uint8       ## Generated based on /usr/include/xlsxwriter/worksheet.h:1679:16
    is_custom*: uint8
    has_blanks*: uint8
    col_num*: lxw_col_t
    criteria1*: uint8
    criteria2*: uint8
    value1*: cdouble
    value2*: cdouble
    value1_string*: cstring
    value2_string*: cstring
    num_list_filters*: uint16
    list*: ptr cstring
  lxw_filter_rule_obj* = struct_lxw_filter_rule_obj ## Generated based on /usr/include/xlsxwriter/worksheet.h:1696:3
  struct_lxw_image_options* {.pure, inheritable, bycopy.} = object
    x_offset*: int32         ## Generated based on /usr/include/xlsxwriter/worksheet.h:1704:16
    y_offset*: int32
    x_scale*: cdouble
    y_scale*: cdouble
    object_position*: uint8
    description*: cstring
    decorative*: uint8
    url*: cstring
    tip*: cstring
    cell_format*: ptr lxw_format
  lxw_image_options* = struct_lxw_image_options ## Generated based on /usr/include/xlsxwriter/worksheet.h:1745:3
  struct_lxw_chart_options* {.pure, inheritable, bycopy.} = object
    x_offset*: int32         ## Generated based on /usr/include/xlsxwriter/worksheet.h:1753:16
    y_offset*: int32
    x_scale*: cdouble
    y_scale*: cdouble
    object_position*: uint8
    description*: cstring
    decorative*: uint8
  lxw_chart_options* = struct_lxw_chart_options ## Generated based on /usr/include/xlsxwriter/worksheet.h:1783:3
  lxw_object_properties* = struct_lxw_object_properties ## Generated based on /usr/include/xlsxwriter/worksheet.h:1819:3
  struct_lxw_comment_options* {.pure, inheritable, bycopy.} = object
    visible*: uint8          ## Generated based on /usr/include/xlsxwriter/worksheet.h:1827:16
    author*: cstring
    width*: uint16
    height*: uint16
    x_scale*: cdouble
    y_scale*: cdouble
    color*: lxw_color_t
    font_name*: cstring
    font_size*: cdouble
    font_family*: uint8
    start_row*: lxw_row_t
    start_col*: lxw_col_t
    x_offset*: int32
    y_offset*: int32
  lxw_comment_options* = struct_lxw_comment_options ## Generated based on /usr/include/xlsxwriter/worksheet.h:1900:3
  struct_lxw_button_options* {.pure, inheritable, bycopy.} = object
    caption*: cstring        ## Generated based on /usr/include/xlsxwriter/worksheet.h:1908:16
    macro_field*: cstring
    description*: cstring
    width*: uint16
    height*: uint16
    x_scale*: cdouble
    y_scale*: cdouble
    x_offset*: int32
    y_offset*: int32
  lxw_button_options* = struct_lxw_button_options ## Generated based on /usr/include/xlsxwriter/worksheet.h:1944:3
  lxw_vml_obj* = struct_lxw_vml_obj ## Generated based on /usr/include/xlsxwriter/worksheet.h:1977:3
  struct_lxw_header_footer_options* {.pure, inheritable, bycopy.} = object
    margin*: cdouble         ## Generated based on /usr/include/xlsxwriter/worksheet.h:1986:16
    image_left*: cstring
    image_center*: cstring
    image_right*: cstring
  lxw_header_footer_options* = struct_lxw_header_footer_options ## Generated based on /usr/include/xlsxwriter/worksheet.h:2006:3
  struct_lxw_protection* {.pure, inheritable, bycopy.} = object
    no_select_locked_cells*: uint8 ## Generated based on /usr/include/xlsxwriter/worksheet.h:2011:16
    no_select_unlocked_cells*: uint8
    format_cells*: uint8
    format_columns*: uint8
    format_rows*: uint8
    insert_columns*: uint8
    insert_rows*: uint8
    insert_hyperlinks*: uint8
    delete_columns*: uint8
    delete_rows*: uint8
    sort*: uint8
    autofilter*: uint8
    pivot_tables*: uint8
    scenarios*: uint8
    objects*: uint8
    no_content*: uint8
    no_objects*: uint8
  lxw_protection* = struct_lxw_protection ## Generated based on /usr/include/xlsxwriter/worksheet.h:2063:3
  struct_lxw_protection_obj* {.pure, inheritable, bycopy.} = object
    no_select_locked_cells*: uint8 ## Generated based on /usr/include/xlsxwriter/worksheet.h:2066:16
    no_select_unlocked_cells*: uint8
    format_cells*: uint8
    format_columns*: uint8
    format_rows*: uint8
    insert_columns*: uint8
    insert_rows*: uint8
    insert_hyperlinks*: uint8
    delete_columns*: uint8
    delete_rows*: uint8
    sort*: uint8
    autofilter*: uint8
    pivot_tables*: uint8
    scenarios*: uint8
    objects*: uint8
    no_content*: uint8
    no_objects*: uint8
    no_sheet*: uint8
    is_configured*: uint8
    hash*: array[5'i64, cschar]
  lxw_protection_obj* = struct_lxw_protection_obj ## Generated based on /usr/include/xlsxwriter/worksheet.h:2087:3
  struct_lxw_rich_string_tuple* {.pure, inheritable, bycopy.} = object
    format*: ptr lxw_format  ## Generated based on /usr/include/xlsxwriter/worksheet.h:2098:16
    string*: cstring
  lxw_rich_string_tuple* = struct_lxw_rich_string_tuple ## Generated based on /usr/include/xlsxwriter/worksheet.h:2106:3
  struct_lxw_worksheet_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_worksheet
  struct_lxw_worksheet* {.pure, inheritable, bycopy.} = object
    file*: ptr FILE          ## Generated based on /usr/include/xlsxwriter/worksheet.h:2115:16
    optimize_tmpfile*: ptr FILE
    optimize_buffer*: cstring
    optimize_buffer_size*: csize_t
    table*: ptr struct_lxw_table_rows
    hyperlinks*: ptr struct_lxw_table_rows
    comments*: ptr struct_lxw_table_rows
    array*: ptr ptr struct_lxw_cell
    merged_ranges*: ptr struct_lxw_merged_ranges
    selections*: ptr struct_lxw_selections
    data_validations*: ptr struct_lxw_data_validations
    conditional_formats*: ptr struct_lxw_cond_format_hash
    image_props*: ptr struct_lxw_image_props
    embedded_image_props*: ptr struct_lxw_image_props
    chart_data*: ptr struct_lxw_chart_props
    drawing_rel_ids*: ptr struct_lxw_drawing_rel_ids
    vml_drawing_rel_ids*: ptr struct_lxw_vml_drawing_rel_ids
    comment_objs*: ptr struct_lxw_comment_objs
    header_image_objs*: ptr struct_lxw_comment_objs
    button_objs*: ptr struct_lxw_comment_objs
    table_objs*: ptr struct_lxw_table_objs
    table_count*: uint16
    dim_rowmin*: lxw_row_t
    dim_rowmax*: lxw_row_t
    dim_colmin*: lxw_col_t
    dim_colmax*: lxw_col_t
    sst*: ptr lxw_sst
    name*: cstring
    quoted_name*: cstring
    tmpdir*: cstring
    index*: uint16
    active*: uint8
    selected*: uint8
    hidden*: uint8
    active_sheet*: ptr uint16
    first_sheet*: ptr uint16
    is_chartsheet*: uint8
    col_options*: ptr ptr lxw_col_options
    col_options_max*: uint16
    col_sizes*: ptr cdouble
    col_sizes_max*: uint16
    col_formats*: ptr ptr lxw_format
    col_formats_max*: uint16
    col_size_changed*: uint8
    row_size_changed*: uint8
    optimize*: uint8
    optimize_row*: ptr struct_lxw_row
    fit_height*: uint16
    fit_width*: uint16
    horizontal_dpi*: uint16
    hlink_count*: uint16
    page_start*: uint16
    print_scale*: uint16
    rel_count*: uint16
    vertical_dpi*: uint16
    zoom*: uint16
    filter_on*: uint8
    fit_page*: uint8
    hcenter*: uint8
    orientation*: uint8
    outline_changed*: uint8
    outline_on*: uint8
    outline_style*: uint8
    outline_below*: uint8
    outline_right*: uint8
    page_order*: uint8
    page_setup_changed*: uint8
    page_view*: uint8
    paper_size*: uint8
    print_gridlines*: uint8
    print_headers*: uint8
    print_options_changed*: uint8
    right_to_left*: uint8
    screen_gridlines*: uint8
    show_zeros*: uint8
    vcenter*: uint8
    zoom_scale_normal*: uint8
    black_white*: uint8
    num_validations*: uint8
    has_dynamic_functions*: uint8
    vba_codename*: cstring
    num_buttons*: uint16
    tab_color*: lxw_color_t
    margin_left*: cdouble
    margin_right*: cdouble
    margin_top*: cdouble
    margin_bottom*: cdouble
    margin_header*: cdouble
    margin_footer*: cdouble
    default_row_height*: cdouble
    default_row_pixels*: uint32
    default_col_pixels*: uint32
    default_row_zeroed*: uint8
    default_row_set*: uint8
    outline_row_level*: uint8
    outline_col_level*: uint8
    header_footer_changed*: uint8
    header*: cstring
    footer*: cstring
    repeat_rows*: struct_lxw_repeat_rows
    repeat_cols*: struct_lxw_repeat_cols
    print_area*: struct_lxw_print_area
    autofilter*: struct_lxw_autofilter
    merged_range_count*: uint16
    max_url_length*: uint16
    hbreaks*: ptr lxw_row_t
    vbreaks*: ptr lxw_col_t
    hbreaks_count*: uint16
    vbreaks_count*: uint16
    drawing_rel_id*: uint32
    vml_drawing_rel_id*: uint32
    external_hyperlinks*: ptr struct_lxw_rel_tuples
    external_drawing_links*: ptr struct_lxw_rel_tuples
    drawing_links*: ptr struct_lxw_rel_tuples
    vml_drawing_links*: ptr struct_lxw_rel_tuples
    external_table_links*: ptr struct_lxw_rel_tuples
    panes*: struct_lxw_panes
    top_left_cell*: array[14'i64, cschar]
    protection*: struct_lxw_protection_obj
    drawing*: ptr lxw_drawing
    default_url_format*: ptr lxw_format
    has_vml*: uint8
    has_comments*: uint8
    has_header_vml*: uint8
    has_background_image*: uint8
    has_buttons*: uint8
    storing_embedded_image*: uint8
    external_vml_comment_link*: ptr lxw_rel_tuple
    external_comment_link*: ptr lxw_rel_tuple
    external_vml_header_link*: ptr lxw_rel_tuple
    external_background_link*: ptr lxw_rel_tuple
    comment_author*: cstring
    vml_data_id_str*: cstring
    vml_header_id_str*: cstring
    vml_shape_id*: uint32
    vml_header_id*: uint32
    dxf_priority*: uint32
    comment_display_default*: uint8
    data_bar_2010_index*: uint32
    has_ignore_errors*: uint8
    ignore_number_stored_as_text*: cstring
    ignore_eval_error*: cstring
    ignore_formula_differs*: cstring
    ignore_formula_range*: cstring
    ignore_formula_unlocked*: cstring
    ignore_empty_cell_reference*: cstring
    ignore_list_data_validation*: cstring
    ignore_calculated_column*: cstring
    ignore_two_digit_text_year*: cstring
    excel_version*: uint16
    header_footer_objs*: array[6'i64, ptr ptr lxw_object_properties]
    header_left_object_props*: ptr lxw_object_properties
    header_center_object_props*: ptr lxw_object_properties
    header_right_object_props*: ptr lxw_object_properties
    footer_left_object_props*: ptr lxw_object_properties
    footer_center_object_props*: ptr lxw_object_properties
    footer_right_object_props*: ptr lxw_object_properties
    background_image*: ptr lxw_object_properties
    filter_rules*: ptr ptr lxw_filter_rule_obj
    num_filter_rules*: lxw_col_t
    list_pointers*: struct_lxw_worksheet_list_pointers_t
  lxw_worksheet* = struct_lxw_worksheet ## Generated based on /usr/include/xlsxwriter/worksheet.h:2304:3
  struct_lxw_worksheet_init_data* {.pure, inheritable, bycopy.} = object
    index*: uint16           ## Generated based on /usr/include/xlsxwriter/worksheet.h:2309:16
    hidden*: uint8
    optimize*: uint8
    active_sheet*: ptr uint16
    first_sheet*: ptr uint16
    sst*: ptr lxw_sst
    name*: cstring
    quoted_name*: cstring
    tmpdir*: cstring
    default_url_format*: ptr lxw_format
    max_url_length*: uint16
  lxw_worksheet_init_data* = struct_lxw_worksheet_init_data ## Generated based on /usr/include/xlsxwriter/worksheet.h:2322:3
  lxw_row* = struct_lxw_row  ## Generated based on /usr/include/xlsxwriter/worksheet.h:2340:3
  lxw_cell* = struct_lxw_cell ## Generated based on /usr/include/xlsxwriter/worksheet.h:2363:3
  lxw_drawing_rel_id* = struct_lxw_drawing_rel_id ## Generated based on /usr/include/xlsxwriter/worksheet.h:2371:3
  struct_lxw_chartsheet_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_chartsheet
  struct_lxw_chartsheet* {.pure, inheritable, bycopy.} = object
    file*: ptr FILE          ## Generated based on /usr/include/xlsxwriter/chartsheet.h:75:16
    worksheet*: ptr lxw_worksheet
    chart*: ptr lxw_chart
    protection*: struct_lxw_protection_obj
    is_protected*: uint8
    name*: cstring
    quoted_name*: cstring
    tmpdir*: cstring
    index*: uint16
    active*: uint8
    selected*: uint8
    hidden*: uint8
    active_sheet*: ptr uint16
    first_sheet*: ptr uint16
    rel_count*: uint16
    list_pointers*: struct_lxw_chartsheet_list_pointers_t
  lxw_chartsheet* = struct_lxw_chartsheet ## Generated based on /usr/include/xlsxwriter/chartsheet.h:97:3
  struct_lxw_worksheet_names* {.pure, inheritable, bycopy.} = object
    rbh_root*: ptr struct_lxw_worksheet_name ## Generated based on /usr/include/xlsxwriter/workbook.h:59:1
  struct_lxw_worksheet_name_tree_pointers_t* {.pure, inheritable, bycopy.} = object
    rbe_left*: ptr struct_lxw_worksheet_name
    rbe_right*: ptr struct_lxw_worksheet_name
    rbe_parent*: ptr struct_lxw_worksheet_name
    rbe_color*: cint
  struct_lxw_worksheet_name* {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /usr/include/xlsxwriter/workbook.h:83:16
    worksheet*: ptr lxw_worksheet
    tree_pointers*: struct_lxw_worksheet_name_tree_pointers_t
  struct_lxw_chartsheet_names* {.pure, inheritable, bycopy.} = object
    rbh_root*: ptr struct_lxw_chartsheet_name ## Generated based on /usr/include/xlsxwriter/workbook.h:60:1
  struct_lxw_chartsheet_name_tree_pointers_t* {.pure, inheritable, bycopy.} = object
    rbe_left*: ptr struct_lxw_chartsheet_name
    rbe_right*: ptr struct_lxw_chartsheet_name
    rbe_parent*: ptr struct_lxw_chartsheet_name
    rbe_color*: cint
  struct_lxw_chartsheet_name* {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /usr/include/xlsxwriter/workbook.h:91:16
    chartsheet*: ptr lxw_chartsheet
    tree_pointers*: struct_lxw_chartsheet_name_tree_pointers_t
  struct_lxw_image_md5s* {.pure, inheritable, bycopy.} = object
    rbh_root*: ptr struct_lxw_image_md5 ## Generated based on /usr/include/xlsxwriter/workbook.h:61:1
  struct_lxw_image_md5_tree_pointers_t* {.pure, inheritable, bycopy.} = object
    rbe_left*: ptr struct_lxw_image_md5
    rbe_right*: ptr struct_lxw_image_md5
    rbe_parent*: ptr struct_lxw_image_md5
    rbe_color*: cint
  struct_lxw_image_md5* {.pure, inheritable, bycopy.} = object
    id*: uint32              ## Generated based on /usr/include/xlsxwriter/workbook.h:99:16
    md5*: cstring
    tree_pointers*: struct_lxw_image_md5_tree_pointers_t
  struct_lxw_sheets* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_sheet ## Generated based on /usr/include/xlsxwriter/workbook.h:64:1
    stqh_last*: ptr ptr struct_lxw_sheet
  struct_lxw_sheet_u_t* {.union, bycopy.} = object
    worksheet*: ptr lxw_worksheet
    chartsheet*: ptr lxw_chartsheet
  struct_lxw_sheet_list_pointers_t* {.pure, inheritable, bycopy.} = object
    stqe_next*: ptr struct_lxw_sheet
  struct_lxw_sheet* {.pure, inheritable, bycopy.} = object
    is_chartsheet*: uint8    ## Generated based on /usr/include/xlsxwriter/workbook.h:71:16
    u*: struct_lxw_sheet_u_t
    list_pointers*: struct_lxw_sheet_list_pointers_t
  struct_lxw_worksheets* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_worksheet ## Generated based on /usr/include/xlsxwriter/workbook.h:65:1
    stqh_last*: ptr ptr struct_lxw_worksheet
  struct_lxw_chartsheets* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_chartsheet ## Generated based on /usr/include/xlsxwriter/workbook.h:66:1
    stqh_last*: ptr ptr struct_lxw_chartsheet
  struct_lxw_charts* {.pure, inheritable, bycopy.} = object
    stqh_first*: ptr struct_lxw_chart ## Generated based on /usr/include/xlsxwriter/workbook.h:67:1
    stqh_last*: ptr ptr struct_lxw_chart
  struct_lxw_defined_names* {.pure, inheritable, bycopy.} = object
    tqh_first*: ptr struct_lxw_defined_name ## Generated based on /usr/include/xlsxwriter/workbook.h:68:1
    tqh_last*: ptr ptr struct_lxw_defined_name
  struct_lxw_defined_name_list_pointers_t* {.pure, inheritable, bycopy.} = object
    tqe_next*: ptr struct_lxw_defined_name
    tqe_prev*: ptr ptr struct_lxw_defined_name
  struct_lxw_defined_name* {.pure, inheritable, bycopy.} = object
    index*: int16            ## Generated based on /usr/include/xlsxwriter/workbook.h:168:16
    hidden*: uint8
    name*: array[128'i64, cschar]
    app_name*: array[128'i64, cschar]
    formula*: array[128'i64, cschar]
    normalised_name*: array[128'i64, cschar]
    normalised_sheetname*: array[128'i64, cschar]
    list_pointers*: struct_lxw_defined_name_list_pointers_t
  lxw_sheet* = struct_lxw_sheet ## Generated based on /usr/include/xlsxwriter/workbook.h:80:3
  lxw_worksheet_name* = struct_lxw_worksheet_name ## Generated based on /usr/include/xlsxwriter/workbook.h:88:3
  lxw_chartsheet_name* = struct_lxw_chartsheet_name ## Generated based on /usr/include/xlsxwriter/workbook.h:96:3
  lxw_image_md5* = struct_lxw_image_md5 ## Generated based on /usr/include/xlsxwriter/workbook.h:104:3
  lxw_defined_name* = struct_lxw_defined_name ## Generated based on /usr/include/xlsxwriter/workbook.h:179:3
  struct_lxw_doc_properties* {.pure, inheritable, bycopy.} = object
    title*: cstring          ## Generated based on /usr/include/xlsxwriter/workbook.h:184:16
    subject*: cstring
    author*: cstring
    manager*: cstring
    company*: cstring
    category*: cstring
    keywords*: cstring
    comments*: cstring
    status*: cstring
    hyperlink_base*: cstring
    created*: time_t
  lxw_doc_properties* = struct_lxw_doc_properties ## Generated based on /usr/include/xlsxwriter/workbook.h:221:3
  struct_lxw_workbook_options* {.pure, inheritable, bycopy.} = object
    constant_memory*: uint8  ## Generated based on /usr/include/xlsxwriter/workbook.h:269:16
    tmpdir*: cstring
    use_zip64*: uint8
    output_buffer*: ptr cstring
    output_buffer_size*: ptr csize_t
  lxw_workbook_options* = struct_lxw_workbook_options ## Generated based on /usr/include/xlsxwriter/workbook.h:284:3
  struct_lxw_workbook* {.pure, inheritable, bycopy.} = object
    file*: ptr FILE          ## Generated based on /usr/include/xlsxwriter/workbook.h:293:16
    sheets*: ptr struct_lxw_sheets
    worksheets*: ptr struct_lxw_worksheets
    chartsheets*: ptr struct_lxw_chartsheets
    worksheet_names*: ptr struct_lxw_worksheet_names
    chartsheet_names*: ptr struct_lxw_chartsheet_names
    image_md5s*: ptr struct_lxw_image_md5s
    embedded_image_md5s*: ptr struct_lxw_image_md5s
    header_image_md5s*: ptr struct_lxw_image_md5s
    background_md5s*: ptr struct_lxw_image_md5s
    charts*: ptr struct_lxw_charts
    ordered_charts*: ptr struct_lxw_charts
    formats*: ptr struct_lxw_formats
    defined_names*: ptr struct_lxw_defined_names
    sst*: ptr lxw_sst
    properties*: ptr lxw_doc_properties
    custom_properties*: ptr struct_lxw_custom_properties
    filename*: cstring
    options*: lxw_workbook_options
    num_sheets*: uint16
    num_worksheets*: uint16
    num_chartsheets*: uint16
    first_sheet*: uint16
    active_sheet*: uint16
    num_xf_formats*: uint16
    num_dxf_formats*: uint16
    num_format_count*: uint16
    drawing_count*: uint16
    comment_count*: uint16
    num_embedded_images*: uint32
    font_count*: uint16
    border_count*: uint16
    fill_count*: uint16
    optimize*: uint8
    max_url_length*: uint16
    read_only*: uint8
    has_png*: uint8
    has_jpeg*: uint8
    has_bmp*: uint8
    has_gif*: uint8
    has_vml*: uint8
    has_comments*: uint8
    has_metadata*: uint8
    has_embedded_images*: uint8
    has_dynamic_functions*: uint8
    has_embedded_image_descriptions*: uint8
    used_xf_formats*: ptr lxw_hash_table
    used_dxf_formats*: ptr lxw_hash_table
    vba_project*: cstring
    vba_project_signature*: cstring
    vba_codename*: cstring
    default_url_format*: ptr lxw_format
  lxw_workbook* = struct_lxw_workbook ## Generated based on /usr/include/xlsxwriter/workbook.h:355:3
when 1 is static:
  const
    internal_STDINT_H* = 1   ## Generated based on /usr/include/stdint.h:23:9
else:
  let internal_STDINT_H* = 1 ## Generated based on /usr/include/stdint.h:23:9
when 1 is static:
  const
    internal_FEATURES_H* = 1 ## Generated based on /usr/include/features.h:19:9
else:
  let internal_FEATURES_H* = 1 ## Generated based on /usr/include/features.h:19:9
when 1 is static:
  const
    internal_DEFAULT_SOURCE* = 1 ## Generated based on /usr/include/features.h:250:10
else:
  let internal_DEFAULT_SOURCE* = 1 ## Generated based on /usr/include/features.h:250:10
when 0 is static:
  const
    compiler_GLIBC_USE_ISOC2Y* = 0 ## Generated based on /usr/include/features.h:258:10
else:
  let compiler_GLIBC_USE_ISOC2Y* = 0 ## Generated based on /usr/include/features.h:258:10
when 0 is static:
  const
    compiler_GLIBC_USE_ISOC23* = 0 ## Generated based on /usr/include/features.h:266:10
else:
  let compiler_GLIBC_USE_ISOC23* = 0 ## Generated based on /usr/include/features.h:266:10
when 1 is static:
  const
    compiler_USE_ISOC11* = 1 ## Generated based on /usr/include/features.h:273:10
else:
  let compiler_USE_ISOC11* = 1 ## Generated based on /usr/include/features.h:273:10
when 1 is static:
  const
    compiler_USE_ISOC99* = 1 ## Generated based on /usr/include/features.h:368:10
else:
  let compiler_USE_ISOC99* = 1 ## Generated based on /usr/include/features.h:368:10
when 1 is static:
  const
    compiler_USE_ISOC95* = 1 ## Generated based on /usr/include/features.h:366:10
else:
  let compiler_USE_ISOC95* = 1 ## Generated based on /usr/include/features.h:366:10
when 1 is static:
  const
    compiler_USE_POSIX_IMPLICITLY* = 1 ## Generated based on /usr/include/features.h:308:11
else:
  let compiler_USE_POSIX_IMPLICITLY* = 1 ## Generated based on /usr/include/features.h:308:11
when 1 is static:
  const
    internal_POSIX_SOURCE* = 1 ## Generated based on /usr/include/features.h:311:10
else:
  let internal_POSIX_SOURCE* = 1 ## Generated based on /usr/include/features.h:311:10
when cast[clong](200809'i64) is static:
  const
    internal_POSIX_C_SOURCE* = cast[clong](200809'i64) ## Generated based on /usr/include/features.h:313:10
else:
  let internal_POSIX_C_SOURCE* = cast[clong](200809'i64) ## Generated based on /usr/include/features.h:313:10
when 1 is static:
  const
    compiler_USE_POSIX* = 1  ## Generated based on /usr/include/features.h:348:10
else:
  let compiler_USE_POSIX* = 1 ## Generated based on /usr/include/features.h:348:10
when 1 is static:
  const
    compiler_USE_POSIX2* = 1 ## Generated based on /usr/include/features.h:352:10
else:
  let compiler_USE_POSIX2* = 1 ## Generated based on /usr/include/features.h:352:10
when 1 is static:
  const
    compiler_USE_POSIX199309* = 1 ## Generated based on /usr/include/features.h:356:10
else:
  let compiler_USE_POSIX199309* = 1 ## Generated based on /usr/include/features.h:356:10
when 1 is static:
  const
    compiler_USE_POSIX199506* = 1 ## Generated based on /usr/include/features.h:360:10
else:
  let compiler_USE_POSIX199506* = 1 ## Generated based on /usr/include/features.h:360:10
when 1 is static:
  const
    compiler_USE_XOPEN2K* = 1 ## Generated based on /usr/include/features.h:364:10
else:
  let compiler_USE_XOPEN2K* = 1 ## Generated based on /usr/include/features.h:364:10
when 1 is static:
  const
    compiler_USE_XOPEN2K8* = 1 ## Generated based on /usr/include/features.h:372:10
else:
  let compiler_USE_XOPEN2K8* = 1 ## Generated based on /usr/include/features.h:372:10
when 1 is static:
  const
    internal_ATFILE_SOURCE* = 1 ## Generated based on /usr/include/features.h:374:10
else:
  let internal_ATFILE_SOURCE* = 1 ## Generated based on /usr/include/features.h:374:10
when 64 is static:
  const
    compiler_WORDSIZE* = 64  ## Generated based on /usr/include/bits/wordsize.h:4:10
else:
  let compiler_WORDSIZE* = 64 ## Generated based on /usr/include/bits/wordsize.h:4:10
when 1 is static:
  const
    compiler_WORDSIZE_TIME64_COMPAT32* = 1 ## Generated based on /usr/include/bits/wordsize.h:11:9
else:
  let compiler_WORDSIZE_TIME64_COMPAT32* = 1 ## Generated based on /usr/include/bits/wordsize.h:11:9
when 64 is static:
  const
    compiler_SYSCALL_WORDSIZE* = 64 ## Generated based on /usr/include/bits/wordsize.h:15:10
else:
  let compiler_SYSCALL_WORDSIZE* = 64 ## Generated based on /usr/include/bits/wordsize.h:15:10
when compiler_WORDSIZE is typedesc:
  type
    compiler_TIMESIZE* = compiler_WORDSIZE ## Generated based on /usr/include/bits/timesize.h:26:10
else:
  when compiler_WORDSIZE is static:
    const
      compiler_TIMESIZE* = compiler_WORDSIZE ## Generated based on /usr/include/bits/timesize.h:26:10
  else:
    let compiler_TIMESIZE* = compiler_WORDSIZE ## Generated based on /usr/include/bits/timesize.h:26:10
when 1 is static:
  const
    compiler_USE_TIME_BITS64* = 1 ## Generated based on /usr/include/features-time64.h:37:10
else:
  let compiler_USE_TIME_BITS64* = 1 ## Generated based on /usr/include/features-time64.h:37:10
when 1 is static:
  const
    compiler_USE_MISC* = 1   ## Generated based on /usr/include/features.h:418:10
else:
  let compiler_USE_MISC* = 1 ## Generated based on /usr/include/features.h:418:10
when 1 is static:
  const
    compiler_USE_ATFILE* = 1 ## Generated based on /usr/include/features.h:422:10
else:
  let compiler_USE_ATFILE* = 1 ## Generated based on /usr/include/features.h:422:10
when 0 is static:
  const
    compiler_USE_FORTIFY_LEVEL* = 0 ## Generated based on /usr/include/features.h:455:10
else:
  let compiler_USE_FORTIFY_LEVEL* = 0 ## Generated based on /usr/include/features.h:455:10
when 0 is static:
  const
    compiler_GLIBC_USE_DEPRECATED_GETS* = 0 ## Generated based on /usr/include/features.h:463:10
else:
  let compiler_GLIBC_USE_DEPRECATED_GETS* = 0 ## Generated based on /usr/include/features.h:463:10
when 0 is static:
  const
    compiler_GLIBC_USE_DEPRECATED_SCANF* = 0 ## Generated based on /usr/include/features.h:486:10
else:
  let compiler_GLIBC_USE_DEPRECATED_SCANF* = 0 ## Generated based on /usr/include/features.h:486:10
when 0 is static:
  const
    compiler_GLIBC_USE_C23_STRTOL* = 0 ## Generated based on /usr/include/features.h:497:10
else:
  let compiler_GLIBC_USE_C23_STRTOL* = 0 ## Generated based on /usr/include/features.h:497:10
when 1 is static:
  const
    internal_STDC_PREDEF_H* = 1 ## Generated based on /usr/include/stdc-predef.h:19:9
else:
  let internal_STDC_PREDEF_H* = 1 ## Generated based on /usr/include/stdc-predef.h:19:9
when 1 is static:
  const
    compiler_STDC_IEC_559_private* = 1 ## Generated based on /usr/include/stdc-predef.h:42:10
else:
  let compiler_STDC_IEC_559_private* = 1 ## Generated based on /usr/include/stdc-predef.h:42:10
when cast[clong](201404'i64) is static:
  const
    compiler_STDC_IEC_60559_BFP_private* = cast[clong](201404'i64) ## Generated based on /usr/include/stdc-predef.h:43:10
else:
  let compiler_STDC_IEC_60559_BFP_private* = cast[clong](201404'i64) ## Generated based on /usr/include/stdc-predef.h:43:10
when 1 is static:
  const
    compiler_STDC_IEC_559_COMPLEX_private* = 1 ## Generated based on /usr/include/stdc-predef.h:52:10
else:
  let compiler_STDC_IEC_559_COMPLEX_private* = 1 ## Generated based on /usr/include/stdc-predef.h:52:10
when cast[clong](201404'i64) is static:
  const
    compiler_STDC_IEC_60559_COMPLEX_private* = cast[clong](201404'i64) ## Generated based on /usr/include/stdc-predef.h:53:10
else:
  let compiler_STDC_IEC_60559_COMPLEX_private* = cast[clong](201404'i64) ## Generated based on /usr/include/stdc-predef.h:53:10
when cast[clong](201706'i64) is static:
  const
    compiler_STDC_ISO_10646_private* = cast[clong](201706'i64) ## Generated based on /usr/include/stdc-predef.h:62:9
else:
  let compiler_STDC_ISO_10646_private* = cast[clong](201706'i64) ## Generated based on /usr/include/stdc-predef.h:62:9
when 6 is static:
  const
    compiler_GNU_LIBRARY_private* = 6 ## Generated based on /usr/include/features.h:511:9
else:
  let compiler_GNU_LIBRARY_private* = 6 ## Generated based on /usr/include/features.h:511:9
when 2 is static:
  const
    compiler_GLIBC_private* = 2 ## Generated based on /usr/include/features.h:515:9
else:
  let compiler_GLIBC_private* = 2 ## Generated based on /usr/include/features.h:515:9
when 41 is static:
  const
    compiler_GLIBC_MINOR_private* = 41 ## Generated based on /usr/include/features.h:516:9
else:
  let compiler_GLIBC_MINOR_private* = 41 ## Generated based on /usr/include/features.h:516:9
when 1 is static:
  const
    internal_SYS_CDEFS_H* = 1 ## Generated based on /usr/include/sys/cdefs.h:20:9
else:
  let internal_SYS_CDEFS_H* = 1 ## Generated based on /usr/include/sys/cdefs.h:20:9
when 1 is static:
  const
    compiler_glibc_c99_flexarr_available* = 1 ## Generated based on /usr/include/sys/cdefs.h:380:10
else:
  let compiler_glibc_c99_flexarr_available* = 1 ## Generated based on /usr/include/sys/cdefs.h:380:10
when 0 is static:
  const
    compiler_LDOUBLE_REDIRECTS_TO_FLOAT128_ABI* = 0 ## Generated based on /usr/include/bits/long-double.h:21:9
else:
  let compiler_LDOUBLE_REDIRECTS_TO_FLOAT128_ABI* = 0 ## Generated based on /usr/include/bits/long-double.h:21:9
when 1 is static:
  const
    compiler_HAVE_GENERIC_SELECTION* = 1 ## Generated based on /usr/include/sys/cdefs.h:826:10
else:
  let compiler_HAVE_GENERIC_SELECTION* = 1 ## Generated based on /usr/include/sys/cdefs.h:826:10
when 0 is static:
  const
    compiler_GLIBC_USE_LIB_EXT2* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:42:10
else:
  let compiler_GLIBC_USE_LIB_EXT2* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:42:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_BFP_EXT* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:71:10
else:
  let compiler_GLIBC_USE_IEC_60559_BFP_EXT* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:71:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_BFP_EXT_C23* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:77:10
else:
  let compiler_GLIBC_USE_IEC_60559_BFP_EXT_C23* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:77:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_EXT* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:83:10
else:
  let compiler_GLIBC_USE_IEC_60559_EXT* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:83:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_FUNCS_EXT* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:94:10
else:
  let compiler_GLIBC_USE_IEC_60559_FUNCS_EXT* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:94:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_FUNCS_EXT_C23* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:100:10
else:
  let compiler_GLIBC_USE_IEC_60559_FUNCS_EXT_C23* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:100:10
when 0 is static:
  const
    compiler_GLIBC_USE_IEC_60559_TYPES_EXT* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:109:10
else:
  let compiler_GLIBC_USE_IEC_60559_TYPES_EXT* = 0 ## Generated based on /usr/include/bits/libc-header-start.h:109:10
when 1 is static:
  const
    internal_BITS_TYPES_H* = 1 ## Generated based on /usr/include/bits/types.h:24:9
else:
  let internal_BITS_TYPES_H* = 1 ## Generated based on /usr/include/bits/types.h:24:9
when int is typedesc:
  type
    compiler_S32_TYPE* = int ## Generated based on /usr/include/bits/types.h:111:9
else:
  when int is static:
    const
      compiler_S32_TYPE* = int ## Generated based on /usr/include/bits/types.h:111:9
  else:
    let compiler_S32_TYPE* = int ## Generated based on /usr/include/bits/types.h:111:9
when int is typedesc:
  type
    compiler_SLONG32_TYPE* = int ## Generated based on /usr/include/bits/types.h:132:10
else:
  when int is static:
    const
      compiler_SLONG32_TYPE* = int ## Generated based on /usr/include/bits/types.h:132:10
  else:
    let compiler_SLONG32_TYPE* = int ## Generated based on /usr/include/bits/types.h:132:10
when typedef is typedesc:
  type
    compiler_STD_TYPE* = typedef ## Generated based on /usr/include/bits/types.h:137:10
else:
  when typedef is static:
    const
      compiler_STD_TYPE* = typedef ## Generated based on /usr/include/bits/types.h:137:10
  else:
    let compiler_STD_TYPE* = typedef ## Generated based on /usr/include/bits/types.h:137:10
when 1 is static:
  const
    internal_BITS_TYPESIZES_H* = 1 ## Generated based on /usr/include/bits/typesizes.h:24:9
else:
  let internal_BITS_TYPESIZES_H* = 1 ## Generated based on /usr/include/bits/typesizes.h:24:9
when 1 is static:
  const
    compiler_OFF_T_MATCHES_OFF64_T* = 1 ## Generated based on /usr/include/bits/typesizes.h:81:10
else:
  let compiler_OFF_T_MATCHES_OFF64_T* = 1 ## Generated based on /usr/include/bits/typesizes.h:81:10
when 1 is static:
  const
    compiler_INO_T_MATCHES_INO64_T* = 1 ## Generated based on /usr/include/bits/typesizes.h:84:10
else:
  let compiler_INO_T_MATCHES_INO64_T* = 1 ## Generated based on /usr/include/bits/typesizes.h:84:10
when 1 is static:
  const
    compiler_RLIM_T_MATCHES_RLIM64_T* = 1 ## Generated based on /usr/include/bits/typesizes.h:87:10
else:
  let compiler_RLIM_T_MATCHES_RLIM64_T* = 1 ## Generated based on /usr/include/bits/typesizes.h:87:10
when 1 is static:
  const
    compiler_STATFS_MATCHES_STATFS64* = 1 ## Generated based on /usr/include/bits/typesizes.h:90:10
else:
  let compiler_STATFS_MATCHES_STATFS64* = 1 ## Generated based on /usr/include/bits/typesizes.h:90:10
when 1 is static:
  const
    compiler_KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64* = 1 ## Generated based on /usr/include/bits/typesizes.h:93:10
else:
  let compiler_KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64* = 1 ## Generated based on /usr/include/bits/typesizes.h:93:10
when 1024 is static:
  const
    compiler_FD_SETSIZE* = 1024 ## Generated based on /usr/include/bits/typesizes.h:103:9
else:
  let compiler_FD_SETSIZE* = 1024 ## Generated based on /usr/include/bits/typesizes.h:103:9
when 1 is static:
  const
    internal_BITS_TIME64_H* = 1 ## Generated based on /usr/include/bits/time64.h:24:9
else:
  let internal_BITS_TIME64_H* = 1 ## Generated based on /usr/include/bits/time64.h:24:9
when 1 is static:
  const
    internal_BITS_WCHAR_H* = 1 ## Generated based on /usr/include/bits/wchar.h:20:9
else:
  let internal_BITS_WCHAR_H* = 1 ## Generated based on /usr/include/bits/wchar.h:20:9
when 1 is static:
  const
    internal_BITS_STDINT_INTN_H* = 1 ## Generated based on /usr/include/bits/stdint-intn.h:20:9
else:
  let internal_BITS_STDINT_INTN_H* = 1 ## Generated based on /usr/include/bits/stdint-intn.h:20:9
when 1 is static:
  const
    internal_BITS_STDINT_UINTN_H* = 1 ## Generated based on /usr/include/bits/stdint-uintn.h:20:9
else:
  let internal_BITS_STDINT_UINTN_H* = 1 ## Generated based on /usr/include/bits/stdint-uintn.h:20:9
when 1 is static:
  const
    internal_BITS_STDINT_LEAST_H* = 1 ## Generated based on /usr/include/bits/stdint-least.h:20:9
else:
  let internal_BITS_STDINT_LEAST_H* = 1 ## Generated based on /usr/include/bits/stdint-least.h:20:9
when -128 is static:
  const
    INT8_MIN* = -128         ## Generated based on /usr/include/stdint.h:105:10
else:
  let INT8_MIN* = -128       ## Generated based on /usr/include/stdint.h:105:10
when 127 is static:
  const
    INT8_MAX* = 127          ## Generated based on /usr/include/stdint.h:110:10
else:
  let INT8_MAX* = 127        ## Generated based on /usr/include/stdint.h:110:10
when 32767 is static:
  const
    INT16_MAX* = 32767       ## Generated based on /usr/include/stdint.h:111:10
else:
  let INT16_MAX* = 32767     ## Generated based on /usr/include/stdint.h:111:10
when 2147483647 is static:
  const
    INT32_MAX* = 2147483647  ## Generated based on /usr/include/stdint.h:112:10
else:
  let INT32_MAX* = 2147483647 ## Generated based on /usr/include/stdint.h:112:10
when 255 is static:
  const
    UINT8_MAX* = 255         ## Generated based on /usr/include/stdint.h:116:10
else:
  let UINT8_MAX* = 255       ## Generated based on /usr/include/stdint.h:116:10
when 65535 is static:
  const
    UINT16_MAX* = 65535      ## Generated based on /usr/include/stdint.h:117:10
else:
  let UINT16_MAX* = 65535    ## Generated based on /usr/include/stdint.h:117:10
when cast[cuint](4294967295'i64) is static:
  const
    UINT32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:118:10
else:
  let UINT32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:118:10
when -128 is static:
  const
    INT_LEAST8_MIN* = -128   ## Generated based on /usr/include/stdint.h:123:10
else:
  let INT_LEAST8_MIN* = -128 ## Generated based on /usr/include/stdint.h:123:10
when 127 is static:
  const
    INT_LEAST8_MAX* = 127    ## Generated based on /usr/include/stdint.h:128:10
else:
  let INT_LEAST8_MAX* = 127  ## Generated based on /usr/include/stdint.h:128:10
when 32767 is static:
  const
    INT_LEAST16_MAX* = 32767 ## Generated based on /usr/include/stdint.h:129:10
else:
  let INT_LEAST16_MAX* = 32767 ## Generated based on /usr/include/stdint.h:129:10
when 2147483647 is static:
  const
    INT_LEAST32_MAX* = 2147483647 ## Generated based on /usr/include/stdint.h:130:10
else:
  let INT_LEAST32_MAX* = 2147483647 ## Generated based on /usr/include/stdint.h:130:10
when 255 is static:
  const
    UINT_LEAST8_MAX* = 255   ## Generated based on /usr/include/stdint.h:134:10
else:
  let UINT_LEAST8_MAX* = 255 ## Generated based on /usr/include/stdint.h:134:10
when 65535 is static:
  const
    UINT_LEAST16_MAX* = 65535 ## Generated based on /usr/include/stdint.h:135:10
else:
  let UINT_LEAST16_MAX* = 65535 ## Generated based on /usr/include/stdint.h:135:10
when cast[cuint](4294967295'i64) is static:
  const
    UINT_LEAST32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:136:10
else:
  let UINT_LEAST32_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:136:10
when -128 is static:
  const
    INT_FAST8_MIN* = -128    ## Generated based on /usr/include/stdint.h:141:10
else:
  let INT_FAST8_MIN* = -128  ## Generated based on /usr/include/stdint.h:141:10
when 127 is static:
  const
    INT_FAST8_MAX* = 127     ## Generated based on /usr/include/stdint.h:151:10
else:
  let INT_FAST8_MAX* = 127   ## Generated based on /usr/include/stdint.h:151:10
when cast[clong](9223372036854775807'i64) is static:
  const
    INT_FAST16_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:153:11
else:
  let INT_FAST16_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:153:11
when cast[clong](9223372036854775807'i64) is static:
  const
    INT_FAST32_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:154:11
else:
  let INT_FAST32_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:154:11
when 255 is static:
  const
    UINT_FAST8_MAX* = 255    ## Generated based on /usr/include/stdint.h:162:10
else:
  let UINT_FAST8_MAX* = 255  ## Generated based on /usr/include/stdint.h:162:10
when cast[culong](18446744073709551615'u) is static:
  const
    UINT_FAST16_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:164:11
else:
  let UINT_FAST16_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:164:11
when cast[culong](18446744073709551615'u) is static:
  const
    UINT_FAST32_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:165:11
else:
  let UINT_FAST32_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:165:11
when cast[clong](9223372036854775807'i64) is static:
  const
    INTPTR_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:176:11
else:
  let INTPTR_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:176:11
when cast[culong](18446744073709551615'u) is static:
  const
    UINTPTR_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:177:11
else:
  let UINTPTR_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:177:11
when cast[clong](9223372036854775807'i64) is static:
  const
    PTRDIFF_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:199:11
else:
  let PTRDIFF_MAX* = cast[clong](9223372036854775807'i64) ## Generated based on /usr/include/stdint.h:199:11
when 2147483647 is static:
  const
    SIG_ATOMIC_MAX* = 2147483647 ## Generated based on /usr/include/stdint.h:212:10
else:
  let SIG_ATOMIC_MAX* = 2147483647 ## Generated based on /usr/include/stdint.h:212:10
when cast[culong](18446744073709551615'u) is static:
  const
    SIZE_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:216:11
else:
  let SIZE_MAX* = cast[culong](18446744073709551615'u) ## Generated based on /usr/include/stdint.h:216:11
when cast[cuint](0'i64) is static:
  const
    WINT_MIN* = cast[cuint](0'i64) ## Generated based on /usr/include/stdint.h:233:10
else:
  let WINT_MIN* = cast[cuint](0'i64) ## Generated based on /usr/include/stdint.h:233:10
when cast[cuint](4294967295'i64) is static:
  const
    WINT_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:234:10
else:
  let WINT_MAX* = cast[cuint](4294967295'i64) ## Generated based on /usr/include/stdint.h:234:10
when 1 is static:
  const
    internal_STDIO_H* = 1    ## Generated based on /usr/include/stdio.h:25:9
else:
  let internal_STDIO_H* = 1  ## Generated based on /usr/include/stdio.h:25:9
when 1 is static:
  const
    compiler_fpos_t_defined* = 1 ## Generated based on /usr/include/bits/types/__fpos_t.h:2:9
else:
  let compiler_fpos_t_defined* = 1 ## Generated based on /usr/include/bits/types/__fpos_t.h:2:9
when 1 is static:
  const
    compiler_mbstate_t_defined* = 1 ## Generated based on /usr/include/bits/types/__mbstate_t.h:2:9
else:
  let compiler_mbstate_t_defined* = 1 ## Generated based on /usr/include/bits/types/__mbstate_t.h:2:9
when 1 is static:
  const
    compiler_fpos64_t_defined* = 1 ## Generated based on /usr/include/bits/types/__fpos64_t.h:2:9
else:
  let compiler_fpos64_t_defined* = 1 ## Generated based on /usr/include/bits/types/__fpos64_t.h:2:9
when 1 is static:
  const
    compiler_FILE_defined* = 1 ## Generated based on /usr/include/bits/types/__FILE.h:2:9
else:
  let compiler_FILE_defined* = 1 ## Generated based on /usr/include/bits/types/__FILE.h:2:9
when 1 is static:
  const
    compiler_FILE_defined_const* = 1 ## Generated based on /usr/include/bits/types/FILE.h:2:9
else:
  let compiler_FILE_defined_const* = 1 ## Generated based on /usr/include/bits/types/FILE.h:2:9
when 1 is static:
  const
    compiler_struct_FILE_defined* = 1 ## Generated based on /usr/include/bits/types/struct_FILE.h:20:9
else:
  let compiler_struct_FILE_defined* = 1 ## Generated based on /usr/include/bits/types/struct_FILE.h:20:9
when 16 is static:
  const
    internal_IO_EOF_SEEN* = 16 ## Generated based on /usr/include/bits/types/struct_FILE.h:114:9
else:
  let internal_IO_EOF_SEEN* = 16 ## Generated based on /usr/include/bits/types/struct_FILE.h:114:9
when 32 is static:
  const
    internal_IO_ERR_SEEN* = 32 ## Generated based on /usr/include/bits/types/struct_FILE.h:117:9
else:
  let internal_IO_ERR_SEEN* = 32 ## Generated based on /usr/include/bits/types/struct_FILE.h:117:9
when 32768 is static:
  const
    internal_IO_USER_LOCK* = 32768 ## Generated based on /usr/include/bits/types/struct_FILE.h:120:9
else:
  let internal_IO_USER_LOCK* = 32768 ## Generated based on /usr/include/bits/types/struct_FILE.h:120:9
when 1 is static:
  const
    compiler_cookie_io_functions_t_defined* = 1 ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:19:9
else:
  let compiler_cookie_io_functions_t_defined* = 1 ## Generated based on /usr/include/bits/types/cookie_io_functions_t.h:19:9
when 0 is static:
  const
    internal_IOFBF* = 0      ## Generated based on /usr/include/stdio.h:94:9
else:
  let internal_IOFBF* = 0    ## Generated based on /usr/include/stdio.h:94:9
when 1 is static:
  const
    internal_IOLBF* = 1      ## Generated based on /usr/include/stdio.h:95:9
else:
  let internal_IOLBF* = 1    ## Generated based on /usr/include/stdio.h:95:9
when 2 is static:
  const
    internal_IONBF* = 2      ## Generated based on /usr/include/stdio.h:96:9
else:
  let internal_IONBF* = 2    ## Generated based on /usr/include/stdio.h:96:9
when 8192 is static:
  const
    BUFSIZ* = 8192           ## Generated based on /usr/include/stdio.h:100:9
else:
  let BUFSIZ* = 8192         ## Generated based on /usr/include/stdio.h:100:9
when -1 is static:
  const
    EOF* = -1                ## Generated based on /usr/include/stdio.h:105:9
else:
  let EOF* = -1              ## Generated based on /usr/include/stdio.h:105:9
when 0 is static:
  const
    SEEK_SET* = 0            ## Generated based on /usr/include/stdio.h:110:9
else:
  let SEEK_SET* = 0          ## Generated based on /usr/include/stdio.h:110:9
when 1 is static:
  const
    SEEK_CUR* = 1            ## Generated based on /usr/include/stdio.h:111:9
else:
  let SEEK_CUR* = 1          ## Generated based on /usr/include/stdio.h:111:9
when 2 is static:
  const
    SEEK_END* = 2            ## Generated based on /usr/include/stdio.h:112:9
else:
  let SEEK_END* = 2          ## Generated based on /usr/include/stdio.h:112:9
when "/tmp" is static:
  const
    P_tmpdir* = "/tmp"       ## Generated based on /usr/include/stdio.h:121:10
else:
  let P_tmpdir* = "/tmp"     ## Generated based on /usr/include/stdio.h:121:10
when 20 is static:
  const
    L_tmpnam* = 20           ## Generated based on /usr/include/stdio.h:124:9
else:
  let L_tmpnam* = 20         ## Generated based on /usr/include/stdio.h:124:9
when 238328 is static:
  const
    TMP_MAX* = 238328        ## Generated based on /usr/include/stdio.h:125:9
else:
  let TMP_MAX* = 238328      ## Generated based on /usr/include/stdio.h:125:9
when 1 is static:
  const
    internal_BITS_STDIO_LIM_H* = 1 ## Generated based on /usr/include/bits/stdio_lim.h:20:9
else:
  let internal_BITS_STDIO_LIM_H* = 1 ## Generated based on /usr/include/bits/stdio_lim.h:20:9
when 4096 is static:
  const
    FILENAME_MAX* = 4096     ## Generated based on /usr/include/bits/stdio_lim.h:26:9
else:
  let FILENAME_MAX* = 4096   ## Generated based on /usr/include/bits/stdio_lim.h:26:9
when 9 is static:
  const
    L_ctermid* = 9           ## Generated based on /usr/include/stdio.h:132:10
else:
  let L_ctermid* = 9         ## Generated based on /usr/include/stdio.h:132:10
when 16 is static:
  const
    FOPEN_MAX* = 16          ## Generated based on /usr/include/stdio.h:139:9
else:
  let FOPEN_MAX* = 16        ## Generated based on /usr/include/stdio.h:139:9
var stdin* {.importc: "stdin".}: ptr FILE
var stdout* {.importc: "stdout".}: ptr FILE
var stderr* {.importc: "stderr".}: ptr FILE
when 1 is static:
  const
    compiler_HAVE_FLOAT128* = 1 ## Generated based on /usr/include/bits/floatn.h:37:10
else:
  let compiler_HAVE_FLOAT128* = 1 ## Generated based on /usr/include/bits/floatn.h:37:10
when 1 is static:
  const
    compiler_HAVE_DISTINCT_FLOAT128* = 1 ## Generated based on /usr/include/bits/floatn.h:45:10
else:
  let compiler_HAVE_DISTINCT_FLOAT128* = 1 ## Generated based on /usr/include/bits/floatn.h:45:10
when 1 is static:
  const
    compiler_HAVE_FLOAT64X* = 1 ## Generated based on /usr/include/bits/floatn.h:53:9
else:
  let compiler_HAVE_FLOAT64X* = 1 ## Generated based on /usr/include/bits/floatn.h:53:9
when 1 is static:
  const
    compiler_HAVE_FLOAT64X_LONG_DOUBLE* = 1 ## Generated based on /usr/include/bits/floatn.h:59:9
else:
  let compiler_HAVE_FLOAT64X_LONG_DOUBLE* = 1 ## Generated based on /usr/include/bits/floatn.h:59:9
when 0 is static:
  const
    compiler_HAVE_FLOAT16* = 0 ## Generated based on /usr/include/bits/floatn-common.h:34:9
else:
  let compiler_HAVE_FLOAT16* = 0 ## Generated based on /usr/include/bits/floatn-common.h:34:9
when 1 is static:
  const
    compiler_HAVE_FLOAT32* = 1 ## Generated based on /usr/include/bits/floatn-common.h:35:9
else:
  let compiler_HAVE_FLOAT32* = 1 ## Generated based on /usr/include/bits/floatn-common.h:35:9
when 1 is static:
  const
    compiler_HAVE_FLOAT64* = 1 ## Generated based on /usr/include/bits/floatn-common.h:36:9
else:
  let compiler_HAVE_FLOAT64* = 1 ## Generated based on /usr/include/bits/floatn-common.h:36:9
when 1 is static:
  const
    compiler_HAVE_FLOAT32X* = 1 ## Generated based on /usr/include/bits/floatn-common.h:37:9
else:
  let compiler_HAVE_FLOAT32X* = 1 ## Generated based on /usr/include/bits/floatn-common.h:37:9
when 0 is static:
  const
    compiler_HAVE_FLOAT128X* = 0 ## Generated based on /usr/include/bits/floatn-common.h:38:9
else:
  let compiler_HAVE_FLOAT128X* = 0 ## Generated based on /usr/include/bits/floatn-common.h:38:9
when compiler_HAVE_FLOAT16 is typedesc:
  type
    compiler_HAVE_DISTINCT_FLOAT16* = compiler_HAVE_FLOAT16 ## Generated based on /usr/include/bits/floatn-common.h:52:9
else:
  when compiler_HAVE_FLOAT16 is static:
    const
      compiler_HAVE_DISTINCT_FLOAT16* = compiler_HAVE_FLOAT16 ## Generated based on /usr/include/bits/floatn-common.h:52:9
  else:
    let compiler_HAVE_DISTINCT_FLOAT16* = compiler_HAVE_FLOAT16 ## Generated based on /usr/include/bits/floatn-common.h:52:9
when 0 is static:
  const
    compiler_HAVE_DISTINCT_FLOAT32* = 0 ## Generated based on /usr/include/bits/floatn-common.h:53:9
else:
  let compiler_HAVE_DISTINCT_FLOAT32* = 0 ## Generated based on /usr/include/bits/floatn-common.h:53:9
when 0 is static:
  const
    compiler_HAVE_DISTINCT_FLOAT64* = 0 ## Generated based on /usr/include/bits/floatn-common.h:54:9
else:
  let compiler_HAVE_DISTINCT_FLOAT64* = 0 ## Generated based on /usr/include/bits/floatn-common.h:54:9
when 0 is static:
  const
    compiler_HAVE_DISTINCT_FLOAT32X* = 0 ## Generated based on /usr/include/bits/floatn-common.h:55:9
else:
  let compiler_HAVE_DISTINCT_FLOAT32X* = 0 ## Generated based on /usr/include/bits/floatn-common.h:55:9
when 0 is static:
  const
    compiler_HAVE_DISTINCT_FLOAT64X* = 0 ## Generated based on /usr/include/bits/floatn-common.h:56:9
else:
  let compiler_HAVE_DISTINCT_FLOAT64X* = 0 ## Generated based on /usr/include/bits/floatn-common.h:56:9
when compiler_HAVE_FLOAT128X is typedesc:
  type
    compiler_HAVE_DISTINCT_FLOAT128X* = compiler_HAVE_FLOAT128X ## Generated based on /usr/include/bits/floatn-common.h:57:9
else:
  when compiler_HAVE_FLOAT128X is static:
    const
      compiler_HAVE_DISTINCT_FLOAT128X* = compiler_HAVE_FLOAT128X ## Generated based on /usr/include/bits/floatn-common.h:57:9
  else:
    let compiler_HAVE_DISTINCT_FLOAT128X* = compiler_HAVE_FLOAT128X ## Generated based on /usr/include/bits/floatn-common.h:57:9
when 0 is static:
  const
    compiler_HAVE_FLOATN_NOT_TYPEDEF* = 0 ## Generated based on /usr/include/bits/floatn-common.h:72:10
else:
  let compiler_HAVE_FLOATN_NOT_TYPEDEF* = 0 ## Generated based on /usr/include/bits/floatn-common.h:72:10
when 1 is static:
  const
    internal_ERRNO_H* = 1    ## Generated based on /usr/include/errno.h:23:9
else:
  let internal_ERRNO_H* = 1  ## Generated based on /usr/include/errno.h:23:9
when 1 is static:
  const
    internal_BITS_ERRNO_H* = 1 ## Generated based on /usr/include/bits/errno.h:20:9
else:
  let internal_BITS_ERRNO_H* = 1 ## Generated based on /usr/include/bits/errno.h:20:9
when 1 is static:
  const
    EPERM* = 1               ## Generated based on /usr/include/asm-generic/errno-base.h:5:9
else:
  let EPERM* = 1             ## Generated based on /usr/include/asm-generic/errno-base.h:5:9
when 2 is static:
  const
    ENOENT* = 2              ## Generated based on /usr/include/asm-generic/errno-base.h:6:9
else:
  let ENOENT* = 2            ## Generated based on /usr/include/asm-generic/errno-base.h:6:9
when 3 is static:
  const
    ESRCH* = 3               ## Generated based on /usr/include/asm-generic/errno-base.h:7:9
else:
  let ESRCH* = 3             ## Generated based on /usr/include/asm-generic/errno-base.h:7:9
when 4 is static:
  const
    EINTR* = 4               ## Generated based on /usr/include/asm-generic/errno-base.h:8:9
else:
  let EINTR* = 4             ## Generated based on /usr/include/asm-generic/errno-base.h:8:9
when 5 is static:
  const
    EIO* = 5                 ## Generated based on /usr/include/asm-generic/errno-base.h:9:9
else:
  let EIO* = 5               ## Generated based on /usr/include/asm-generic/errno-base.h:9:9
when 6 is static:
  const
    ENXIO* = 6               ## Generated based on /usr/include/asm-generic/errno-base.h:10:9
else:
  let ENXIO* = 6             ## Generated based on /usr/include/asm-generic/errno-base.h:10:9
when 7 is static:
  const
    E2BIG* = 7               ## Generated based on /usr/include/asm-generic/errno-base.h:11:9
else:
  let E2BIG* = 7             ## Generated based on /usr/include/asm-generic/errno-base.h:11:9
when 8 is static:
  const
    ENOEXEC* = 8             ## Generated based on /usr/include/asm-generic/errno-base.h:12:9
else:
  let ENOEXEC* = 8           ## Generated based on /usr/include/asm-generic/errno-base.h:12:9
when 9 is static:
  const
    EBADF* = 9               ## Generated based on /usr/include/asm-generic/errno-base.h:13:9
else:
  let EBADF* = 9             ## Generated based on /usr/include/asm-generic/errno-base.h:13:9
when 10 is static:
  const
    ECHILD* = 10             ## Generated based on /usr/include/asm-generic/errno-base.h:14:9
else:
  let ECHILD* = 10           ## Generated based on /usr/include/asm-generic/errno-base.h:14:9
when 11 is static:
  const
    EAGAIN* = 11             ## Generated based on /usr/include/asm-generic/errno-base.h:15:9
else:
  let EAGAIN* = 11           ## Generated based on /usr/include/asm-generic/errno-base.h:15:9
when 12 is static:
  const
    ENOMEM* = 12             ## Generated based on /usr/include/asm-generic/errno-base.h:16:9
else:
  let ENOMEM* = 12           ## Generated based on /usr/include/asm-generic/errno-base.h:16:9
when 13 is static:
  const
    EACCES* = 13             ## Generated based on /usr/include/asm-generic/errno-base.h:17:9
else:
  let EACCES* = 13           ## Generated based on /usr/include/asm-generic/errno-base.h:17:9
when 14 is static:
  const
    EFAULT* = 14             ## Generated based on /usr/include/asm-generic/errno-base.h:18:9
else:
  let EFAULT* = 14           ## Generated based on /usr/include/asm-generic/errno-base.h:18:9
when 15 is static:
  const
    ENOTBLK* = 15            ## Generated based on /usr/include/asm-generic/errno-base.h:19:9
else:
  let ENOTBLK* = 15          ## Generated based on /usr/include/asm-generic/errno-base.h:19:9
when 16 is static:
  const
    EBUSY* = 16              ## Generated based on /usr/include/asm-generic/errno-base.h:20:9
else:
  let EBUSY* = 16            ## Generated based on /usr/include/asm-generic/errno-base.h:20:9
when 17 is static:
  const
    EEXIST* = 17             ## Generated based on /usr/include/asm-generic/errno-base.h:21:9
else:
  let EEXIST* = 17           ## Generated based on /usr/include/asm-generic/errno-base.h:21:9
when 18 is static:
  const
    EXDEV* = 18              ## Generated based on /usr/include/asm-generic/errno-base.h:22:9
else:
  let EXDEV* = 18            ## Generated based on /usr/include/asm-generic/errno-base.h:22:9
when 19 is static:
  const
    ENODEV* = 19             ## Generated based on /usr/include/asm-generic/errno-base.h:23:9
else:
  let ENODEV* = 19           ## Generated based on /usr/include/asm-generic/errno-base.h:23:9
when 20 is static:
  const
    ENOTDIR* = 20            ## Generated based on /usr/include/asm-generic/errno-base.h:24:9
else:
  let ENOTDIR* = 20          ## Generated based on /usr/include/asm-generic/errno-base.h:24:9
when 21 is static:
  const
    EISDIR* = 21             ## Generated based on /usr/include/asm-generic/errno-base.h:25:9
else:
  let EISDIR* = 21           ## Generated based on /usr/include/asm-generic/errno-base.h:25:9
when 22 is static:
  const
    EINVAL* = 22             ## Generated based on /usr/include/asm-generic/errno-base.h:26:9
else:
  let EINVAL* = 22           ## Generated based on /usr/include/asm-generic/errno-base.h:26:9
when 23 is static:
  const
    ENFILE* = 23             ## Generated based on /usr/include/asm-generic/errno-base.h:27:9
else:
  let ENFILE* = 23           ## Generated based on /usr/include/asm-generic/errno-base.h:27:9
when 24 is static:
  const
    EMFILE* = 24             ## Generated based on /usr/include/asm-generic/errno-base.h:28:9
else:
  let EMFILE* = 24           ## Generated based on /usr/include/asm-generic/errno-base.h:28:9
when 25 is static:
  const
    ENOTTY* = 25             ## Generated based on /usr/include/asm-generic/errno-base.h:29:9
else:
  let ENOTTY* = 25           ## Generated based on /usr/include/asm-generic/errno-base.h:29:9
when 26 is static:
  const
    ETXTBSY* = 26            ## Generated based on /usr/include/asm-generic/errno-base.h:30:9
else:
  let ETXTBSY* = 26          ## Generated based on /usr/include/asm-generic/errno-base.h:30:9
when 27 is static:
  const
    EFBIG* = 27              ## Generated based on /usr/include/asm-generic/errno-base.h:31:9
else:
  let EFBIG* = 27            ## Generated based on /usr/include/asm-generic/errno-base.h:31:9
when 28 is static:
  const
    ENOSPC* = 28             ## Generated based on /usr/include/asm-generic/errno-base.h:32:9
else:
  let ENOSPC* = 28           ## Generated based on /usr/include/asm-generic/errno-base.h:32:9
when 29 is static:
  const
    ESPIPE* = 29             ## Generated based on /usr/include/asm-generic/errno-base.h:33:9
else:
  let ESPIPE* = 29           ## Generated based on /usr/include/asm-generic/errno-base.h:33:9
when 30 is static:
  const
    EROFS* = 30              ## Generated based on /usr/include/asm-generic/errno-base.h:34:9
else:
  let EROFS* = 30            ## Generated based on /usr/include/asm-generic/errno-base.h:34:9
when 31 is static:
  const
    EMLINK* = 31             ## Generated based on /usr/include/asm-generic/errno-base.h:35:9
else:
  let EMLINK* = 31           ## Generated based on /usr/include/asm-generic/errno-base.h:35:9
when 32 is static:
  const
    EPIPE* = 32              ## Generated based on /usr/include/asm-generic/errno-base.h:36:9
else:
  let EPIPE* = 32            ## Generated based on /usr/include/asm-generic/errno-base.h:36:9
when 33 is static:
  const
    EDOM* = 33               ## Generated based on /usr/include/asm-generic/errno-base.h:37:9
else:
  let EDOM* = 33             ## Generated based on /usr/include/asm-generic/errno-base.h:37:9
when 34 is static:
  const
    ERANGE* = 34             ## Generated based on /usr/include/asm-generic/errno-base.h:38:9
else:
  let ERANGE* = 34           ## Generated based on /usr/include/asm-generic/errno-base.h:38:9
when 35 is static:
  const
    EDEADLK* = 35            ## Generated based on /usr/include/asm-generic/errno.h:7:9
else:
  let EDEADLK* = 35          ## Generated based on /usr/include/asm-generic/errno.h:7:9
when 36 is static:
  const
    ENAMETOOLONG* = 36       ## Generated based on /usr/include/asm-generic/errno.h:8:9
else:
  let ENAMETOOLONG* = 36     ## Generated based on /usr/include/asm-generic/errno.h:8:9
when 37 is static:
  const
    ENOLCK* = 37             ## Generated based on /usr/include/asm-generic/errno.h:9:9
else:
  let ENOLCK* = 37           ## Generated based on /usr/include/asm-generic/errno.h:9:9
when 38 is static:
  const
    ENOSYS* = 38             ## Generated based on /usr/include/asm-generic/errno.h:18:9
else:
  let ENOSYS* = 38           ## Generated based on /usr/include/asm-generic/errno.h:18:9
when 39 is static:
  const
    ENOTEMPTY* = 39          ## Generated based on /usr/include/asm-generic/errno.h:20:9
else:
  let ENOTEMPTY* = 39        ## Generated based on /usr/include/asm-generic/errno.h:20:9
when 40 is static:
  const
    ELOOP* = 40              ## Generated based on /usr/include/asm-generic/errno.h:21:9
else:
  let ELOOP* = 40            ## Generated based on /usr/include/asm-generic/errno.h:21:9
when EAGAIN is typedesc:
  type
    EWOULDBLOCK* = EAGAIN    ## Generated based on /usr/include/asm-generic/errno.h:22:9
else:
  when EAGAIN is static:
    const
      EWOULDBLOCK* = EAGAIN  ## Generated based on /usr/include/asm-generic/errno.h:22:9
  else:
    let EWOULDBLOCK* = EAGAIN ## Generated based on /usr/include/asm-generic/errno.h:22:9
when 42 is static:
  const
    ENOMSG* = 42             ## Generated based on /usr/include/asm-generic/errno.h:23:9
else:
  let ENOMSG* = 42           ## Generated based on /usr/include/asm-generic/errno.h:23:9
when 43 is static:
  const
    EIDRM* = 43              ## Generated based on /usr/include/asm-generic/errno.h:24:9
else:
  let EIDRM* = 43            ## Generated based on /usr/include/asm-generic/errno.h:24:9
when 44 is static:
  const
    ECHRNG* = 44             ## Generated based on /usr/include/asm-generic/errno.h:25:9
else:
  let ECHRNG* = 44           ## Generated based on /usr/include/asm-generic/errno.h:25:9
when 45 is static:
  const
    EL2NSYNC* = 45           ## Generated based on /usr/include/asm-generic/errno.h:26:9
else:
  let EL2NSYNC* = 45         ## Generated based on /usr/include/asm-generic/errno.h:26:9
when 46 is static:
  const
    EL3HLT* = 46             ## Generated based on /usr/include/asm-generic/errno.h:27:9
else:
  let EL3HLT* = 46           ## Generated based on /usr/include/asm-generic/errno.h:27:9
when 47 is static:
  const
    EL3RST* = 47             ## Generated based on /usr/include/asm-generic/errno.h:28:9
else:
  let EL3RST* = 47           ## Generated based on /usr/include/asm-generic/errno.h:28:9
when 48 is static:
  const
    ELNRNG* = 48             ## Generated based on /usr/include/asm-generic/errno.h:29:9
else:
  let ELNRNG* = 48           ## Generated based on /usr/include/asm-generic/errno.h:29:9
when 49 is static:
  const
    EUNATCH* = 49            ## Generated based on /usr/include/asm-generic/errno.h:30:9
else:
  let EUNATCH* = 49          ## Generated based on /usr/include/asm-generic/errno.h:30:9
when 50 is static:
  const
    ENOCSI* = 50             ## Generated based on /usr/include/asm-generic/errno.h:31:9
else:
  let ENOCSI* = 50           ## Generated based on /usr/include/asm-generic/errno.h:31:9
when 51 is static:
  const
    EL2HLT* = 51             ## Generated based on /usr/include/asm-generic/errno.h:32:9
else:
  let EL2HLT* = 51           ## Generated based on /usr/include/asm-generic/errno.h:32:9
when 52 is static:
  const
    EBADE* = 52              ## Generated based on /usr/include/asm-generic/errno.h:33:9
else:
  let EBADE* = 52            ## Generated based on /usr/include/asm-generic/errno.h:33:9
when 53 is static:
  const
    EBADR* = 53              ## Generated based on /usr/include/asm-generic/errno.h:34:9
else:
  let EBADR* = 53            ## Generated based on /usr/include/asm-generic/errno.h:34:9
when 54 is static:
  const
    EXFULL* = 54             ## Generated based on /usr/include/asm-generic/errno.h:35:9
else:
  let EXFULL* = 54           ## Generated based on /usr/include/asm-generic/errno.h:35:9
when 55 is static:
  const
    ENOANO* = 55             ## Generated based on /usr/include/asm-generic/errno.h:36:9
else:
  let ENOANO* = 55           ## Generated based on /usr/include/asm-generic/errno.h:36:9
when 56 is static:
  const
    EBADRQC* = 56            ## Generated based on /usr/include/asm-generic/errno.h:37:9
else:
  let EBADRQC* = 56          ## Generated based on /usr/include/asm-generic/errno.h:37:9
when 57 is static:
  const
    EBADSLT* = 57            ## Generated based on /usr/include/asm-generic/errno.h:38:9
else:
  let EBADSLT* = 57          ## Generated based on /usr/include/asm-generic/errno.h:38:9
when EDEADLK is typedesc:
  type
    EDEADLOCK* = EDEADLK     ## Generated based on /usr/include/asm-generic/errno.h:40:9
else:
  when EDEADLK is static:
    const
      EDEADLOCK* = EDEADLK   ## Generated based on /usr/include/asm-generic/errno.h:40:9
  else:
    let EDEADLOCK* = EDEADLK ## Generated based on /usr/include/asm-generic/errno.h:40:9
when 59 is static:
  const
    EBFONT* = 59             ## Generated based on /usr/include/asm-generic/errno.h:42:9
else:
  let EBFONT* = 59           ## Generated based on /usr/include/asm-generic/errno.h:42:9
when 60 is static:
  const
    ENOSTR* = 60             ## Generated based on /usr/include/asm-generic/errno.h:43:9
else:
  let ENOSTR* = 60           ## Generated based on /usr/include/asm-generic/errno.h:43:9
when 61 is static:
  const
    ENODATA* = 61            ## Generated based on /usr/include/asm-generic/errno.h:44:9
else:
  let ENODATA* = 61          ## Generated based on /usr/include/asm-generic/errno.h:44:9
when 62 is static:
  const
    ETIME* = 62              ## Generated based on /usr/include/asm-generic/errno.h:45:9
else:
  let ETIME* = 62            ## Generated based on /usr/include/asm-generic/errno.h:45:9
when 63 is static:
  const
    ENOSR* = 63              ## Generated based on /usr/include/asm-generic/errno.h:46:9
else:
  let ENOSR* = 63            ## Generated based on /usr/include/asm-generic/errno.h:46:9
when 64 is static:
  const
    ENONET* = 64             ## Generated based on /usr/include/asm-generic/errno.h:47:9
else:
  let ENONET* = 64           ## Generated based on /usr/include/asm-generic/errno.h:47:9
when 65 is static:
  const
    ENOPKG* = 65             ## Generated based on /usr/include/asm-generic/errno.h:48:9
else:
  let ENOPKG* = 65           ## Generated based on /usr/include/asm-generic/errno.h:48:9
when 66 is static:
  const
    EREMOTE* = 66            ## Generated based on /usr/include/asm-generic/errno.h:49:9
else:
  let EREMOTE* = 66          ## Generated based on /usr/include/asm-generic/errno.h:49:9
when 67 is static:
  const
    ENOLINK* = 67            ## Generated based on /usr/include/asm-generic/errno.h:50:9
else:
  let ENOLINK* = 67          ## Generated based on /usr/include/asm-generic/errno.h:50:9
when 68 is static:
  const
    EADV* = 68               ## Generated based on /usr/include/asm-generic/errno.h:51:9
else:
  let EADV* = 68             ## Generated based on /usr/include/asm-generic/errno.h:51:9
when 69 is static:
  const
    ESRMNT* = 69             ## Generated based on /usr/include/asm-generic/errno.h:52:9
else:
  let ESRMNT* = 69           ## Generated based on /usr/include/asm-generic/errno.h:52:9
when 70 is static:
  const
    ECOMM* = 70              ## Generated based on /usr/include/asm-generic/errno.h:53:9
else:
  let ECOMM* = 70            ## Generated based on /usr/include/asm-generic/errno.h:53:9
when 71 is static:
  const
    EPROTO* = 71             ## Generated based on /usr/include/asm-generic/errno.h:54:9
else:
  let EPROTO* = 71           ## Generated based on /usr/include/asm-generic/errno.h:54:9
when 72 is static:
  const
    EMULTIHOP* = 72          ## Generated based on /usr/include/asm-generic/errno.h:55:9
else:
  let EMULTIHOP* = 72        ## Generated based on /usr/include/asm-generic/errno.h:55:9
when 73 is static:
  const
    EDOTDOT* = 73            ## Generated based on /usr/include/asm-generic/errno.h:56:9
else:
  let EDOTDOT* = 73          ## Generated based on /usr/include/asm-generic/errno.h:56:9
when 74 is static:
  const
    EBADMSG* = 74            ## Generated based on /usr/include/asm-generic/errno.h:57:9
else:
  let EBADMSG* = 74          ## Generated based on /usr/include/asm-generic/errno.h:57:9
when 75 is static:
  const
    EOVERFLOW* = 75          ## Generated based on /usr/include/asm-generic/errno.h:58:9
else:
  let EOVERFLOW* = 75        ## Generated based on /usr/include/asm-generic/errno.h:58:9
when 76 is static:
  const
    ENOTUNIQ* = 76           ## Generated based on /usr/include/asm-generic/errno.h:59:9
else:
  let ENOTUNIQ* = 76         ## Generated based on /usr/include/asm-generic/errno.h:59:9
when 77 is static:
  const
    EBADFD* = 77             ## Generated based on /usr/include/asm-generic/errno.h:60:9
else:
  let EBADFD* = 77           ## Generated based on /usr/include/asm-generic/errno.h:60:9
when 78 is static:
  const
    EREMCHG* = 78            ## Generated based on /usr/include/asm-generic/errno.h:61:9
else:
  let EREMCHG* = 78          ## Generated based on /usr/include/asm-generic/errno.h:61:9
when 79 is static:
  const
    ELIBACC* = 79            ## Generated based on /usr/include/asm-generic/errno.h:62:9
else:
  let ELIBACC* = 79          ## Generated based on /usr/include/asm-generic/errno.h:62:9
when 80 is static:
  const
    ELIBBAD* = 80            ## Generated based on /usr/include/asm-generic/errno.h:63:9
else:
  let ELIBBAD* = 80          ## Generated based on /usr/include/asm-generic/errno.h:63:9
when 81 is static:
  const
    ELIBSCN* = 81            ## Generated based on /usr/include/asm-generic/errno.h:64:9
else:
  let ELIBSCN* = 81          ## Generated based on /usr/include/asm-generic/errno.h:64:9
when 82 is static:
  const
    ELIBMAX* = 82            ## Generated based on /usr/include/asm-generic/errno.h:65:9
else:
  let ELIBMAX* = 82          ## Generated based on /usr/include/asm-generic/errno.h:65:9
when 83 is static:
  const
    ELIBEXEC* = 83           ## Generated based on /usr/include/asm-generic/errno.h:66:9
else:
  let ELIBEXEC* = 83         ## Generated based on /usr/include/asm-generic/errno.h:66:9
when 84 is static:
  const
    EILSEQ* = 84             ## Generated based on /usr/include/asm-generic/errno.h:67:9
else:
  let EILSEQ* = 84           ## Generated based on /usr/include/asm-generic/errno.h:67:9
when 85 is static:
  const
    ERESTART* = 85           ## Generated based on /usr/include/asm-generic/errno.h:68:9
else:
  let ERESTART* = 85         ## Generated based on /usr/include/asm-generic/errno.h:68:9
when 86 is static:
  const
    ESTRPIPE* = 86           ## Generated based on /usr/include/asm-generic/errno.h:69:9
else:
  let ESTRPIPE* = 86         ## Generated based on /usr/include/asm-generic/errno.h:69:9
when 87 is static:
  const
    EUSERS* = 87             ## Generated based on /usr/include/asm-generic/errno.h:70:9
else:
  let EUSERS* = 87           ## Generated based on /usr/include/asm-generic/errno.h:70:9
when 88 is static:
  const
    ENOTSOCK* = 88           ## Generated based on /usr/include/asm-generic/errno.h:71:9
else:
  let ENOTSOCK* = 88         ## Generated based on /usr/include/asm-generic/errno.h:71:9
when 89 is static:
  const
    EDESTADDRREQ* = 89       ## Generated based on /usr/include/asm-generic/errno.h:72:9
else:
  let EDESTADDRREQ* = 89     ## Generated based on /usr/include/asm-generic/errno.h:72:9
when 90 is static:
  const
    EMSGSIZE* = 90           ## Generated based on /usr/include/asm-generic/errno.h:73:9
else:
  let EMSGSIZE* = 90         ## Generated based on /usr/include/asm-generic/errno.h:73:9
when 91 is static:
  const
    EPROTOTYPE* = 91         ## Generated based on /usr/include/asm-generic/errno.h:74:9
else:
  let EPROTOTYPE* = 91       ## Generated based on /usr/include/asm-generic/errno.h:74:9
when 92 is static:
  const
    ENOPROTOOPT* = 92        ## Generated based on /usr/include/asm-generic/errno.h:75:9
else:
  let ENOPROTOOPT* = 92      ## Generated based on /usr/include/asm-generic/errno.h:75:9
when 93 is static:
  const
    EPROTONOSUPPORT* = 93    ## Generated based on /usr/include/asm-generic/errno.h:76:9
else:
  let EPROTONOSUPPORT* = 93  ## Generated based on /usr/include/asm-generic/errno.h:76:9
when 94 is static:
  const
    ESOCKTNOSUPPORT* = 94    ## Generated based on /usr/include/asm-generic/errno.h:77:9
else:
  let ESOCKTNOSUPPORT* = 94  ## Generated based on /usr/include/asm-generic/errno.h:77:9
when 95 is static:
  const
    EOPNOTSUPP* = 95         ## Generated based on /usr/include/asm-generic/errno.h:78:9
else:
  let EOPNOTSUPP* = 95       ## Generated based on /usr/include/asm-generic/errno.h:78:9
when 96 is static:
  const
    EPFNOSUPPORT* = 96       ## Generated based on /usr/include/asm-generic/errno.h:79:9
else:
  let EPFNOSUPPORT* = 96     ## Generated based on /usr/include/asm-generic/errno.h:79:9
when 97 is static:
  const
    EAFNOSUPPORT* = 97       ## Generated based on /usr/include/asm-generic/errno.h:80:9
else:
  let EAFNOSUPPORT* = 97     ## Generated based on /usr/include/asm-generic/errno.h:80:9
when 98 is static:
  const
    EADDRINUSE* = 98         ## Generated based on /usr/include/asm-generic/errno.h:81:9
else:
  let EADDRINUSE* = 98       ## Generated based on /usr/include/asm-generic/errno.h:81:9
when 99 is static:
  const
    EADDRNOTAVAIL* = 99      ## Generated based on /usr/include/asm-generic/errno.h:82:9
else:
  let EADDRNOTAVAIL* = 99    ## Generated based on /usr/include/asm-generic/errno.h:82:9
when 100 is static:
  const
    ENETDOWN* = 100          ## Generated based on /usr/include/asm-generic/errno.h:83:9
else:
  let ENETDOWN* = 100        ## Generated based on /usr/include/asm-generic/errno.h:83:9
when 101 is static:
  const
    ENETUNREACH* = 101       ## Generated based on /usr/include/asm-generic/errno.h:84:9
else:
  let ENETUNREACH* = 101     ## Generated based on /usr/include/asm-generic/errno.h:84:9
when 102 is static:
  const
    ENETRESET* = 102         ## Generated based on /usr/include/asm-generic/errno.h:85:9
else:
  let ENETRESET* = 102       ## Generated based on /usr/include/asm-generic/errno.h:85:9
when 103 is static:
  const
    ECONNABORTED* = 103      ## Generated based on /usr/include/asm-generic/errno.h:86:9
else:
  let ECONNABORTED* = 103    ## Generated based on /usr/include/asm-generic/errno.h:86:9
when 104 is static:
  const
    ECONNRESET* = 104        ## Generated based on /usr/include/asm-generic/errno.h:87:9
else:
  let ECONNRESET* = 104      ## Generated based on /usr/include/asm-generic/errno.h:87:9
when 105 is static:
  const
    ENOBUFS* = 105           ## Generated based on /usr/include/asm-generic/errno.h:88:9
else:
  let ENOBUFS* = 105         ## Generated based on /usr/include/asm-generic/errno.h:88:9
when 106 is static:
  const
    EISCONN* = 106           ## Generated based on /usr/include/asm-generic/errno.h:89:9
else:
  let EISCONN* = 106         ## Generated based on /usr/include/asm-generic/errno.h:89:9
when 107 is static:
  const
    ENOTCONN* = 107          ## Generated based on /usr/include/asm-generic/errno.h:90:9
else:
  let ENOTCONN* = 107        ## Generated based on /usr/include/asm-generic/errno.h:90:9
when 108 is static:
  const
    ESHUTDOWN* = 108         ## Generated based on /usr/include/asm-generic/errno.h:91:9
else:
  let ESHUTDOWN* = 108       ## Generated based on /usr/include/asm-generic/errno.h:91:9
when 109 is static:
  const
    ETOOMANYREFS* = 109      ## Generated based on /usr/include/asm-generic/errno.h:92:9
else:
  let ETOOMANYREFS* = 109    ## Generated based on /usr/include/asm-generic/errno.h:92:9
when 110 is static:
  const
    ETIMEDOUT* = 110         ## Generated based on /usr/include/asm-generic/errno.h:93:9
else:
  let ETIMEDOUT* = 110       ## Generated based on /usr/include/asm-generic/errno.h:93:9
when 111 is static:
  const
    ECONNREFUSED* = 111      ## Generated based on /usr/include/asm-generic/errno.h:94:9
else:
  let ECONNREFUSED* = 111    ## Generated based on /usr/include/asm-generic/errno.h:94:9
when 112 is static:
  const
    EHOSTDOWN* = 112         ## Generated based on /usr/include/asm-generic/errno.h:95:9
else:
  let EHOSTDOWN* = 112       ## Generated based on /usr/include/asm-generic/errno.h:95:9
when 113 is static:
  const
    EHOSTUNREACH* = 113      ## Generated based on /usr/include/asm-generic/errno.h:96:9
else:
  let EHOSTUNREACH* = 113    ## Generated based on /usr/include/asm-generic/errno.h:96:9
when 114 is static:
  const
    EALREADY* = 114          ## Generated based on /usr/include/asm-generic/errno.h:97:9
else:
  let EALREADY* = 114        ## Generated based on /usr/include/asm-generic/errno.h:97:9
when 115 is static:
  const
    EINPROGRESS* = 115       ## Generated based on /usr/include/asm-generic/errno.h:98:9
else:
  let EINPROGRESS* = 115     ## Generated based on /usr/include/asm-generic/errno.h:98:9
when 116 is static:
  const
    ESTALE* = 116            ## Generated based on /usr/include/asm-generic/errno.h:99:9
else:
  let ESTALE* = 116          ## Generated based on /usr/include/asm-generic/errno.h:99:9
when 117 is static:
  const
    EUCLEAN* = 117           ## Generated based on /usr/include/asm-generic/errno.h:100:9
else:
  let EUCLEAN* = 117         ## Generated based on /usr/include/asm-generic/errno.h:100:9
when 118 is static:
  const
    ENOTNAM* = 118           ## Generated based on /usr/include/asm-generic/errno.h:101:9
else:
  let ENOTNAM* = 118         ## Generated based on /usr/include/asm-generic/errno.h:101:9
when 119 is static:
  const
    ENAVAIL* = 119           ## Generated based on /usr/include/asm-generic/errno.h:102:9
else:
  let ENAVAIL* = 119         ## Generated based on /usr/include/asm-generic/errno.h:102:9
when 120 is static:
  const
    EISNAM* = 120            ## Generated based on /usr/include/asm-generic/errno.h:103:9
else:
  let EISNAM* = 120          ## Generated based on /usr/include/asm-generic/errno.h:103:9
when 121 is static:
  const
    EREMOTEIO* = 121         ## Generated based on /usr/include/asm-generic/errno.h:104:9
else:
  let EREMOTEIO* = 121       ## Generated based on /usr/include/asm-generic/errno.h:104:9
when 122 is static:
  const
    EDQUOT* = 122            ## Generated based on /usr/include/asm-generic/errno.h:105:9
else:
  let EDQUOT* = 122          ## Generated based on /usr/include/asm-generic/errno.h:105:9
when 123 is static:
  const
    ENOMEDIUM* = 123         ## Generated based on /usr/include/asm-generic/errno.h:107:9
else:
  let ENOMEDIUM* = 123       ## Generated based on /usr/include/asm-generic/errno.h:107:9
when 124 is static:
  const
    EMEDIUMTYPE* = 124       ## Generated based on /usr/include/asm-generic/errno.h:108:9
else:
  let EMEDIUMTYPE* = 124     ## Generated based on /usr/include/asm-generic/errno.h:108:9
when 125 is static:
  const
    ECANCELED* = 125         ## Generated based on /usr/include/asm-generic/errno.h:109:9
else:
  let ECANCELED* = 125       ## Generated based on /usr/include/asm-generic/errno.h:109:9
when 126 is static:
  const
    ENOKEY* = 126            ## Generated based on /usr/include/asm-generic/errno.h:110:9
else:
  let ENOKEY* = 126          ## Generated based on /usr/include/asm-generic/errno.h:110:9
when 127 is static:
  const
    EKEYEXPIRED* = 127       ## Generated based on /usr/include/asm-generic/errno.h:111:9
else:
  let EKEYEXPIRED* = 127     ## Generated based on /usr/include/asm-generic/errno.h:111:9
when 128 is static:
  const
    EKEYREVOKED* = 128       ## Generated based on /usr/include/asm-generic/errno.h:112:9
else:
  let EKEYREVOKED* = 128     ## Generated based on /usr/include/asm-generic/errno.h:112:9
when 129 is static:
  const
    EKEYREJECTED* = 129      ## Generated based on /usr/include/asm-generic/errno.h:113:9
else:
  let EKEYREJECTED* = 129    ## Generated based on /usr/include/asm-generic/errno.h:113:9
when 130 is static:
  const
    EOWNERDEAD* = 130        ## Generated based on /usr/include/asm-generic/errno.h:116:9
else:
  let EOWNERDEAD* = 130      ## Generated based on /usr/include/asm-generic/errno.h:116:9
when 131 is static:
  const
    ENOTRECOVERABLE* = 131   ## Generated based on /usr/include/asm-generic/errno.h:117:9
else:
  let ENOTRECOVERABLE* = 131 ## Generated based on /usr/include/asm-generic/errno.h:117:9
when 132 is static:
  const
    ERFKILL* = 132           ## Generated based on /usr/include/asm-generic/errno.h:119:9
else:
  let ERFKILL* = 132         ## Generated based on /usr/include/asm-generic/errno.h:119:9
when 133 is static:
  const
    EHWPOISON* = 133         ## Generated based on /usr/include/asm-generic/errno.h:121:9
else:
  let EHWPOISON* = 133       ## Generated based on /usr/include/asm-generic/errno.h:121:9
when EOPNOTSUPP is typedesc:
  type
    ENOTSUP* = EOPNOTSUPP    ## Generated based on /usr/include/bits/errno.h:30:11
else:
  when EOPNOTSUPP is static:
    const
      ENOTSUP* = EOPNOTSUPP  ## Generated based on /usr/include/bits/errno.h:30:11
  else:
    let ENOTSUP* = EOPNOTSUPP ## Generated based on /usr/include/bits/errno.h:30:11
when 1 is static:
  const
    internal_STDLIB_H* = 1   ## Generated based on /usr/include/stdlib.h:36:9
else:
  let internal_STDLIB_H* = 1 ## Generated based on /usr/include/stdlib.h:36:9
when 1 is static:
  const
    WNOHANG* = 1             ## Generated based on /usr/include/bits/waitflags.h:25:9
else:
  let WNOHANG* = 1           ## Generated based on /usr/include/bits/waitflags.h:25:9
when 2 is static:
  const
    WUNTRACED* = 2           ## Generated based on /usr/include/bits/waitflags.h:26:9
else:
  let WUNTRACED* = 2         ## Generated based on /usr/include/bits/waitflags.h:26:9
when 2 is static:
  const
    WSTOPPED* = 2            ## Generated based on /usr/include/bits/waitflags.h:30:10
else:
  let WSTOPPED* = 2          ## Generated based on /usr/include/bits/waitflags.h:30:10
when 4 is static:
  const
    WEXITED* = 4             ## Generated based on /usr/include/bits/waitflags.h:31:10
else:
  let WEXITED* = 4           ## Generated based on /usr/include/bits/waitflags.h:31:10
when 8 is static:
  const
    WCONTINUED* = 8          ## Generated based on /usr/include/bits/waitflags.h:32:10
else:
  let WCONTINUED* = 8        ## Generated based on /usr/include/bits/waitflags.h:32:10
when 16777216 is static:
  const
    WNOWAIT* = 16777216      ## Generated based on /usr/include/bits/waitflags.h:33:10
else:
  let WNOWAIT* = 16777216    ## Generated based on /usr/include/bits/waitflags.h:33:10
when 536870912 is static:
  const
    compiler_WNOTHREAD* = 536870912 ## Generated based on /usr/include/bits/waitflags.h:36:9
else:
  let compiler_WNOTHREAD* = 536870912 ## Generated based on /usr/include/bits/waitflags.h:36:9
when 1073741824 is static:
  const
    compiler_WALL* = 1073741824 ## Generated based on /usr/include/bits/waitflags.h:38:9
else:
  let compiler_WALL* = 1073741824 ## Generated based on /usr/include/bits/waitflags.h:38:9
when 2147483648 is static:
  const
    compiler_WCLONE* = 2147483648'i64 ## Generated based on /usr/include/bits/waitflags.h:39:9
else:
  let compiler_WCLONE* = 2147483648'i64 ## Generated based on /usr/include/bits/waitflags.h:39:9
when 65535 is static:
  const
    compiler_W_CONTINUED* = 65535 ## Generated based on /usr/include/bits/waitstatus.h:58:9
else:
  let compiler_W_CONTINUED* = 65535 ## Generated based on /usr/include/bits/waitstatus.h:58:9
when 128 is static:
  const
    compiler_WCOREFLAG* = 128 ## Generated based on /usr/include/bits/waitstatus.h:59:9
else:
  let compiler_WCOREFLAG* = 128 ## Generated based on /usr/include/bits/waitstatus.h:59:9
when 1 is static:
  const
    compiler_ldiv_t_defined* = 1 ## Generated based on /usr/include/stdlib.h:72:10
else:
  let compiler_ldiv_t_defined* = 1 ## Generated based on /usr/include/stdlib.h:72:10
when 1 is static:
  const
    compiler_lldiv_t_defined* = 1 ## Generated based on /usr/include/stdlib.h:82:10
else:
  let compiler_lldiv_t_defined* = 1 ## Generated based on /usr/include/stdlib.h:82:10
when 2147483647 is static:
  const
    RAND_MAX* = 2147483647   ## Generated based on /usr/include/stdlib.h:87:9
else:
  let RAND_MAX* = 2147483647 ## Generated based on /usr/include/stdlib.h:87:9
when 1 is static:
  const
    EXIT_FAILURE* = 1        ## Generated based on /usr/include/stdlib.h:92:9
else:
  let EXIT_FAILURE* = 1      ## Generated based on /usr/include/stdlib.h:92:9
when 0 is static:
  const
    EXIT_SUCCESS* = 0        ## Generated based on /usr/include/stdlib.h:93:9
else:
  let EXIT_SUCCESS* = 0      ## Generated based on /usr/include/stdlib.h:93:9
when 1 is static:
  const
    internal_SYS_TYPES_H* = 1 ## Generated based on /usr/include/sys/types.h:23:9
else:
  let internal_SYS_TYPES_H* = 1 ## Generated based on /usr/include/sys/types.h:23:9
when 1 is static:
  const
    compiler_clock_t_defined* = 1 ## Generated based on /usr/include/bits/types/clock_t.h:2:9
else:
  let compiler_clock_t_defined* = 1 ## Generated based on /usr/include/bits/types/clock_t.h:2:9
when 1 is static:
  const
    compiler_clockid_t_defined* = 1 ## Generated based on /usr/include/bits/types/clockid_t.h:2:9
else:
  let compiler_clockid_t_defined* = 1 ## Generated based on /usr/include/bits/types/clockid_t.h:2:9
when 1 is static:
  const
    compiler_time_t_defined* = 1 ## Generated based on /usr/include/bits/types/time_t.h:2:9
else:
  let compiler_time_t_defined* = 1 ## Generated based on /usr/include/bits/types/time_t.h:2:9
when 1 is static:
  const
    compiler_timer_t_defined* = 1 ## Generated based on /usr/include/bits/types/timer_t.h:2:9
else:
  let compiler_timer_t_defined* = 1 ## Generated based on /usr/include/bits/types/timer_t.h:2:9
when 1 is static:
  const
    compiler_BIT_TYPES_DEFINED_private* = 1 ## Generated based on /usr/include/sys/types.h:171:9
else:
  let compiler_BIT_TYPES_DEFINED_private* = 1 ## Generated based on /usr/include/sys/types.h:171:9
when 1 is static:
  const
    internal_ENDIAN_H* = 1   ## Generated based on /usr/include/endian.h:19:9
else:
  let internal_ENDIAN_H* = 1 ## Generated based on /usr/include/endian.h:19:9
when 1 is static:
  const
    internal_BITS_ENDIAN_H* = 1 ## Generated based on /usr/include/bits/endian.h:20:9
else:
  let internal_BITS_ENDIAN_H* = 1 ## Generated based on /usr/include/bits/endian.h:20:9
when 1234 is static:
  const
    compiler_LITTLE_ENDIAN* = 1234 ## Generated based on /usr/include/bits/endian.h:30:9
else:
  let compiler_LITTLE_ENDIAN* = 1234 ## Generated based on /usr/include/bits/endian.h:30:9
when 4321 is static:
  const
    compiler_BIG_ENDIAN* = 4321 ## Generated based on /usr/include/bits/endian.h:31:9
else:
  let compiler_BIG_ENDIAN* = 4321 ## Generated based on /usr/include/bits/endian.h:31:9
when 3412 is static:
  const
    compiler_PDP_ENDIAN* = 3412 ## Generated based on /usr/include/bits/endian.h:32:9
else:
  let compiler_PDP_ENDIAN* = 3412 ## Generated based on /usr/include/bits/endian.h:32:9
when 1 is static:
  const
    internal_BITS_ENDIANNESS_H* = 1 ## Generated based on /usr/include/bits/endianness.h:2:9
else:
  let internal_BITS_ENDIANNESS_H* = 1 ## Generated based on /usr/include/bits/endianness.h:2:9
when compiler_LITTLE_ENDIAN is typedesc:
  type
    compiler_BYTE_ORDER* = compiler_LITTLE_ENDIAN ## Generated based on /usr/include/bits/endianness.h:9:9
else:
  when compiler_LITTLE_ENDIAN is static:
    const
      compiler_BYTE_ORDER* = compiler_LITTLE_ENDIAN ## Generated based on /usr/include/bits/endianness.h:9:9
  else:
    let compiler_BYTE_ORDER* = compiler_LITTLE_ENDIAN ## Generated based on /usr/include/bits/endianness.h:9:9
when compiler_LITTLE_ENDIAN is typedesc:
  type
    LITTLE_ENDIAN* = compiler_LITTLE_ENDIAN ## Generated based on /usr/include/endian.h:27:10
else:
  when compiler_LITTLE_ENDIAN is static:
    const
      LITTLE_ENDIAN* = compiler_LITTLE_ENDIAN ## Generated based on /usr/include/endian.h:27:10
  else:
    let LITTLE_ENDIAN* = compiler_LITTLE_ENDIAN ## Generated based on /usr/include/endian.h:27:10
when compiler_BIG_ENDIAN is typedesc:
  type
    BIG_ENDIAN* = compiler_BIG_ENDIAN ## Generated based on /usr/include/endian.h:28:10
else:
  when compiler_BIG_ENDIAN is static:
    const
      BIG_ENDIAN* = compiler_BIG_ENDIAN ## Generated based on /usr/include/endian.h:28:10
  else:
    let BIG_ENDIAN* = compiler_BIG_ENDIAN ## Generated based on /usr/include/endian.h:28:10
when compiler_PDP_ENDIAN is typedesc:
  type
    PDP_ENDIAN* = compiler_PDP_ENDIAN ## Generated based on /usr/include/endian.h:29:10
else:
  when compiler_PDP_ENDIAN is static:
    const
      PDP_ENDIAN* = compiler_PDP_ENDIAN ## Generated based on /usr/include/endian.h:29:10
  else:
    let PDP_ENDIAN* = compiler_PDP_ENDIAN ## Generated based on /usr/include/endian.h:29:10
when 1 is static:
  const
    internal_BITS_BYTESWAP_H* = 1 ## Generated based on /usr/include/bits/byteswap.h:24:9
else:
  let internal_BITS_BYTESWAP_H* = 1 ## Generated based on /usr/include/bits/byteswap.h:24:9
when 1 is static:
  const
    internal_BITS_UINTN_IDENTITY_H* = 1 ## Generated based on /usr/include/bits/uintn-identity.h:24:9
else:
  let internal_BITS_UINTN_IDENTITY_H* = 1 ## Generated based on /usr/include/bits/uintn-identity.h:24:9
when 1 is static:
  const
    internal_SYS_SELECT_H* = 1 ## Generated based on /usr/include/sys/select.h:22:9
else:
  let internal_SYS_SELECT_H* = 1 ## Generated based on /usr/include/sys/select.h:22:9
when 1 is static:
  const
    compiler_sigset_t_defined* = 1 ## Generated based on /usr/include/bits/types/sigset_t.h:2:9
else:
  let compiler_sigset_t_defined* = 1 ## Generated based on /usr/include/bits/types/sigset_t.h:2:9
when 1 is static:
  const
    compiler_timeval_defined* = 1 ## Generated based on /usr/include/bits/types/struct_timeval.h:2:9
else:
  let compiler_timeval_defined* = 1 ## Generated based on /usr/include/bits/types/struct_timeval.h:2:9
when 1 is static:
  const
    internal_STRUCT_TIMESPEC* = 1 ## Generated based on /usr/include/bits/types/struct_timespec.h:3:9
else:
  let internal_STRUCT_TIMESPEC* = 1 ## Generated based on /usr/include/bits/types/struct_timespec.h:3:9
when compiler_FD_SETSIZE is typedesc:
  type
    FD_SETSIZE* = compiler_FD_SETSIZE ## Generated based on /usr/include/sys/select.h:73:9
else:
  when compiler_FD_SETSIZE is static:
    const
      FD_SETSIZE* = compiler_FD_SETSIZE ## Generated based on /usr/include/sys/select.h:73:9
  else:
    let FD_SETSIZE* = compiler_FD_SETSIZE ## Generated based on /usr/include/sys/select.h:73:9
when 1 is static:
  const
    internal_BITS_PTHREADTYPES_COMMON_H* = 1 ## Generated based on /usr/include/bits/pthreadtypes.h:20:10
else:
  let internal_BITS_PTHREADTYPES_COMMON_H* = 1 ## Generated based on /usr/include/bits/pthreadtypes.h:20:10
when 1 is static:
  const
    internal_THREAD_SHARED_TYPES_H* = 1 ## Generated based on /usr/include/bits/thread-shared-types.h:20:9
else:
  let internal_THREAD_SHARED_TYPES_H* = 1 ## Generated based on /usr/include/bits/thread-shared-types.h:20:9
when 1 is static:
  const
    internal_BITS_PTHREADTYPES_ARCH_H* = 1 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:19:9
else:
  let internal_BITS_PTHREADTYPES_ARCH_H* = 1 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:19:9
when 40 is static:
  const
    compiler_SIZEOF_PTHREAD_MUTEX_T* = 40 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:25:11
else:
  let compiler_SIZEOF_PTHREAD_MUTEX_T* = 40 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:25:11
when 56 is static:
  const
    compiler_SIZEOF_PTHREAD_ATTR_T* = 56 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:26:11
else:
  let compiler_SIZEOF_PTHREAD_ATTR_T* = 56 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:26:11
when 56 is static:
  const
    compiler_SIZEOF_PTHREAD_RWLOCK_T* = 56 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:27:11
else:
  let compiler_SIZEOF_PTHREAD_RWLOCK_T* = 56 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:27:11
when 32 is static:
  const
    compiler_SIZEOF_PTHREAD_BARRIER_T* = 32 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:28:11
else:
  let compiler_SIZEOF_PTHREAD_BARRIER_T* = 32 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:28:11
when 4 is static:
  const
    compiler_SIZEOF_PTHREAD_MUTEXATTR_T* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:41:9
else:
  let compiler_SIZEOF_PTHREAD_MUTEXATTR_T* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:41:9
when 48 is static:
  const
    compiler_SIZEOF_PTHREAD_COND_T* = 48 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:42:9
else:
  let compiler_SIZEOF_PTHREAD_COND_T* = 48 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:42:9
when 4 is static:
  const
    compiler_SIZEOF_PTHREAD_CONDATTR_T* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:43:9
else:
  let compiler_SIZEOF_PTHREAD_CONDATTR_T* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:43:9
when 8 is static:
  const
    compiler_SIZEOF_PTHREAD_RWLOCKATTR_T* = 8 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:44:9
else:
  let compiler_SIZEOF_PTHREAD_RWLOCKATTR_T* = 8 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:44:9
when 4 is static:
  const
    compiler_SIZEOF_PTHREAD_BARRIERATTR_T* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:45:9
else:
  let compiler_SIZEOF_PTHREAD_BARRIERATTR_T* = 4 ## Generated based on /usr/include/bits/pthreadtypes-arch.h:45:9
when 1 is static:
  const
    internal_THREAD_MUTEX_INTERNAL_H* = 1 ## Generated based on /usr/include/bits/struct_mutex.h:20:9
else:
  let internal_THREAD_MUTEX_INTERNAL_H* = 1 ## Generated based on /usr/include/bits/struct_mutex.h:20:9
when 1 is static:
  const
    compiler_PTHREAD_MUTEX_HAVE_PREV* = 1 ## Generated based on /usr/include/bits/struct_mutex.h:37:10
else:
  let compiler_PTHREAD_MUTEX_HAVE_PREV* = 1 ## Generated based on /usr/include/bits/struct_mutex.h:37:10
when 1 is static:
  const
    compiler_have_pthread_attr_t* = 1 ## Generated based on /usr/include/bits/pthreadtypes.h:63:10
else:
  let compiler_have_pthread_attr_t* = 1 ## Generated based on /usr/include/bits/pthreadtypes.h:63:10
when 1 is static:
  const
    internal_ALLOCA_H* = 1   ## Generated based on /usr/include/alloca.h:19:9
else:
  let internal_ALLOCA_H* = 1 ## Generated based on /usr/include/alloca.h:19:9
when 1 is static:
  const
    internal_STRING_H* = 1   ## Generated based on /usr/include/string.h:23:9
else:
  let internal_STRING_H* = 1 ## Generated based on /usr/include/string.h:23:9
when 1 is static:
  const
    internal_BITS_TYPES_LOCALE_T_H* = 1 ## Generated based on /usr/include/bits/types/locale_t.h:20:9
else:
  let internal_BITS_TYPES_LOCALE_T_H* = 1 ## Generated based on /usr/include/bits/types/locale_t.h:20:9
when 1 is static:
  const
    internal_BITS_TYPES_LOCALE_T_H_const* = 1 ## Generated based on /usr/include/bits/types/__locale_t.h:20:9
else:
  let internal_BITS_TYPES_LOCALE_T_H_const* = 1 ## Generated based on /usr/include/bits/types/__locale_t.h:20:9
when 1 is static:
  const
    internal_STRINGS_H* = 1  ## Generated based on /usr/include/strings.h:19:9
else:
  let internal_STRINGS_H* = 1 ## Generated based on /usr/include/strings.h:19:9
when 1 is static:
  const
    internal_TIME_H* = 1     ## Generated based on /usr/include/time.h:23:9
else:
  let internal_TIME_H* = 1   ## Generated based on /usr/include/time.h:23:9
when 1 is static:
  const
    internal_BITS_TIME_H* = 1 ## Generated based on /usr/include/bits/time.h:24:9
else:
  let internal_BITS_TIME_H* = 1 ## Generated based on /usr/include/bits/time.h:24:9
when 0 is static:
  const
    CLOCK_REALTIME* = 0      ## Generated based on /usr/include/bits/time.h:46:10
else:
  let CLOCK_REALTIME* = 0    ## Generated based on /usr/include/bits/time.h:46:10
when 1 is static:
  const
    CLOCK_MONOTONIC* = 1     ## Generated based on /usr/include/bits/time.h:48:10
else:
  let CLOCK_MONOTONIC* = 1   ## Generated based on /usr/include/bits/time.h:48:10
when 2 is static:
  const
    CLOCK_PROCESS_CPUTIME_ID* = 2 ## Generated based on /usr/include/bits/time.h:50:10
else:
  let CLOCK_PROCESS_CPUTIME_ID* = 2 ## Generated based on /usr/include/bits/time.h:50:10
when 3 is static:
  const
    CLOCK_THREAD_CPUTIME_ID* = 3 ## Generated based on /usr/include/bits/time.h:52:10
else:
  let CLOCK_THREAD_CPUTIME_ID* = 3 ## Generated based on /usr/include/bits/time.h:52:10
when 4 is static:
  const
    CLOCK_MONOTONIC_RAW* = 4 ## Generated based on /usr/include/bits/time.h:54:10
else:
  let CLOCK_MONOTONIC_RAW* = 4 ## Generated based on /usr/include/bits/time.h:54:10
when 5 is static:
  const
    CLOCK_REALTIME_COARSE* = 5 ## Generated based on /usr/include/bits/time.h:56:10
else:
  let CLOCK_REALTIME_COARSE* = 5 ## Generated based on /usr/include/bits/time.h:56:10
when 6 is static:
  const
    CLOCK_MONOTONIC_COARSE* = 6 ## Generated based on /usr/include/bits/time.h:58:10
else:
  let CLOCK_MONOTONIC_COARSE* = 6 ## Generated based on /usr/include/bits/time.h:58:10
when 7 is static:
  const
    CLOCK_BOOTTIME* = 7      ## Generated based on /usr/include/bits/time.h:60:10
else:
  let CLOCK_BOOTTIME* = 7    ## Generated based on /usr/include/bits/time.h:60:10
when 8 is static:
  const
    CLOCK_REALTIME_ALARM* = 8 ## Generated based on /usr/include/bits/time.h:62:10
else:
  let CLOCK_REALTIME_ALARM* = 8 ## Generated based on /usr/include/bits/time.h:62:10
when 9 is static:
  const
    CLOCK_BOOTTIME_ALARM* = 9 ## Generated based on /usr/include/bits/time.h:64:10
else:
  let CLOCK_BOOTTIME_ALARM* = 9 ## Generated based on /usr/include/bits/time.h:64:10
when 11 is static:
  const
    CLOCK_TAI* = 11          ## Generated based on /usr/include/bits/time.h:66:10
else:
  let CLOCK_TAI* = 11        ## Generated based on /usr/include/bits/time.h:66:10
when 1 is static:
  const
    TIMER_ABSTIME* = 1       ## Generated based on /usr/include/bits/time.h:69:10
else:
  let TIMER_ABSTIME* = 1     ## Generated based on /usr/include/bits/time.h:69:10
when 1 is static:
  const
    compiler_struct_tm_defined* = 1 ## Generated based on /usr/include/bits/types/struct_tm.h:2:9
else:
  let compiler_struct_tm_defined* = 1 ## Generated based on /usr/include/bits/types/struct_tm.h:2:9
when 1 is static:
  const
    compiler_itimerspec_defined* = 1 ## Generated based on /usr/include/bits/types/struct_itimerspec.h:2:9
else:
  let compiler_itimerspec_defined* = 1 ## Generated based on /usr/include/bits/types/struct_itimerspec.h:2:9
when 1 is static:
  const
    TIME_UTC* = 1            ## Generated based on /usr/include/time.h:65:10
else:
  let TIME_UTC* = 1          ## Generated based on /usr/include/time.h:65:10
when -1 is static:
  const
    SPLAY_NEGINF* = -1       ## Generated based on /usr/include/xlsxwriter/third_party/tree.h:278:9
else:
  let SPLAY_NEGINF* = -1     ## Generated based on /usr/include/xlsxwriter/third_party/tree.h:278:9
when 1 is static:
  const
    SPLAY_INF* = 1           ## Generated based on /usr/include/xlsxwriter/third_party/tree.h:279:9
else:
  let SPLAY_INF* = 1         ## Generated based on /usr/include/xlsxwriter/third_party/tree.h:279:9
when 0 is static:
  const
    RB_BLACK* = 0            ## Generated based on /usr/include/xlsxwriter/third_party/tree.h:308:9
else:
  let RB_BLACK* = 0          ## Generated based on /usr/include/xlsxwriter/third_party/tree.h:308:9
when 1 is static:
  const
    RB_RED* = 1              ## Generated based on /usr/include/xlsxwriter/third_party/tree.h:309:9
else:
  let RB_RED* = 1            ## Generated based on /usr/include/xlsxwriter/third_party/tree.h:309:9
when -1 is static:
  const
    RB_NEGINF* = -1          ## Generated based on /usr/include/xlsxwriter/third_party/tree.h:759:9
else:
  let RB_NEGINF* = -1        ## Generated based on /usr/include/xlsxwriter/third_party/tree.h:759:9
when 1 is static:
  const
    RB_INF* = 1              ## Generated based on /usr/include/xlsxwriter/third_party/tree.h:760:9
else:
  let RB_INF* = 1            ## Generated based on /usr/include/xlsxwriter/third_party/tree.h:760:9
when 16 is static:
  const
    LXW_MD5_SIZE* = 16       ## Generated based on /usr/include/xlsxwriter/common.h:186:9
else:
  let LXW_MD5_SIZE* = 16     ## Generated based on /usr/include/xlsxwriter/common.h:186:9
when 31 is static:
  const
    LXW_SHEETNAME_MAX* = 31  ## Generated based on /usr/include/xlsxwriter/common.h:189:9
else:
  let LXW_SHEETNAME_MAX* = 31 ## Generated based on /usr/include/xlsxwriter/common.h:189:9
when 0 is static:
  const
    LXW_EPOCH_1900* = 0      ## Generated based on /usr/include/xlsxwriter/common.h:215:9
else:
  let LXW_EPOCH_1900* = 0    ## Generated based on /usr/include/xlsxwriter/common.h:215:9
when 1 is static:
  const
    LXW_EPOCH_1904* = 1      ## Generated based on /usr/include/xlsxwriter/common.h:216:9
else:
  let LXW_EPOCH_1904* = 1    ## Generated based on /usr/include/xlsxwriter/common.h:216:9
when 128 is static:
  const
    LXW_FILENAME_LENGTH* = 128 ## Generated based on /usr/include/xlsxwriter/common.h:219:9
else:
  let LXW_FILENAME_LENGTH* = 128 ## Generated based on /usr/include/xlsxwriter/common.h:219:9
when 1 is static:
  const
    LXW_IGNORE* = 1          ## Generated based on /usr/include/xlsxwriter/common.h:220:9
else:
  let LXW_IGNORE* = 1        ## Generated based on /usr/include/xlsxwriter/common.h:220:9
when 1 is static:
  const
    LXW_PORTRAIT* = 1        ## Generated based on /usr/include/xlsxwriter/common.h:222:9
else:
  let LXW_PORTRAIT* = 1      ## Generated based on /usr/include/xlsxwriter/common.h:222:9
when 0 is static:
  const
    LXW_LANDSCAPE* = 0       ## Generated based on /usr/include/xlsxwriter/common.h:223:9
else:
  let LXW_LANDSCAPE* = 0     ## Generated based on /usr/include/xlsxwriter/common.h:223:9
when "http://schemas.microsoft.com/office/2006/relationships" is static:
  const
    LXW_SCHEMA_MS* = "http://schemas.microsoft.com/office/2006/relationships" ## Generated based on /usr/include/xlsxwriter/common.h:225:9
else:
  let LXW_SCHEMA_MS* = "http://schemas.microsoft.com/office/2006/relationships" ## Generated based on /usr/include/xlsxwriter/common.h:225:9
when "http://schemas.openxmlformats.org" is static:
  const
    LXW_SCHEMA_ROOT* = "http://schemas.openxmlformats.org" ## Generated based on /usr/include/xlsxwriter/common.h:226:9
else:
  let LXW_SCHEMA_ROOT* = "http://schemas.openxmlformats.org" ## Generated based on /usr/include/xlsxwriter/common.h:226:9
proc fprintf*(compiler_stream: ptr FILE; compiler_format: cstring): cint {.
    cdecl, varargs, importc: "fprintf".}
when 128 is static:
  const
    LXW_FORMAT_FIELD_LEN* = 128 ## Generated based on /usr/include/xlsxwriter/format.h:78:9
else:
  let LXW_FORMAT_FIELD_LEN* = 128 ## Generated based on /usr/include/xlsxwriter/format.h:78:9
when "Calibri" is static:
  const
    LXW_DEFAULT_FONT_NAME* = "Calibri" ## Generated based on /usr/include/xlsxwriter/format.h:79:9
else:
  let LXW_DEFAULT_FONT_NAME* = "Calibri" ## Generated based on /usr/include/xlsxwriter/format.h:79:9
when 2 is static:
  const
    LXW_DEFAULT_FONT_FAMILY* = 2 ## Generated based on /usr/include/xlsxwriter/format.h:80:9
else:
  let LXW_DEFAULT_FONT_FAMILY* = 2 ## Generated based on /usr/include/xlsxwriter/format.h:80:9
when 1 is static:
  const
    LXW_DEFAULT_FONT_THEME* = 1 ## Generated based on /usr/include/xlsxwriter/format.h:81:9
else:
  let LXW_DEFAULT_FONT_THEME* = 1 ## Generated based on /usr/include/xlsxwriter/format.h:81:9
when -1 is static:
  const
    LXW_PROPERTY_UNSET* = -1 ## Generated based on /usr/include/xlsxwriter/format.h:82:9
else:
  let LXW_PROPERTY_UNSET* = -1 ## Generated based on /usr/include/xlsxwriter/format.h:82:9
when 0 is static:
  const
    LXW_COLOR_UNSET* = 0     ## Generated based on /usr/include/xlsxwriter/format.h:83:9
else:
  let LXW_COLOR_UNSET* = 0   ## Generated based on /usr/include/xlsxwriter/format.h:83:9
when 16777215 is static:
  const
    LXW_COLOR_MASK* = 16777215 ## Generated based on /usr/include/xlsxwriter/format.h:84:9
else:
  let LXW_COLOR_MASK* = 16777215 ## Generated based on /usr/include/xlsxwriter/format.h:84:9
when 1.0 is static:
  const
    LXW_MIN_FONT_SIZE* = 1.0 ## Generated based on /usr/include/xlsxwriter/format.h:85:9
else:
  let LXW_MIN_FONT_SIZE* = 1.0 ## Generated based on /usr/include/xlsxwriter/format.h:85:9
when 409.0 is static:
  const
    LXW_MAX_FONT_SIZE* = 409.0 ## Generated based on /usr/include/xlsxwriter/format.h:86:9
else:
  let LXW_MAX_FONT_SIZE* = 409.0 ## Generated based on /usr/include/xlsxwriter/format.h:86:9
when 128 is static:
  const
    LXW_CHART_NUM_FORMAT_LEN* = 128 ## Generated based on /usr/include/xlsxwriter/chart.h:84:9
else:
  let LXW_CHART_NUM_FORMAT_LEN* = 128 ## Generated based on /usr/include/xlsxwriter/chart.h:84:9
when 501 is static:
  const
    LXW_CHART_DEFAULT_GAP* = 501 ## Generated based on /usr/include/xlsxwriter/chart.h:85:9
else:
  let LXW_CHART_DEFAULT_GAP* = 501 ## Generated based on /usr/include/xlsxwriter/chart.h:85:9
when 1 is static:
  const
    internal_CTYPE_H* = 1    ## Generated based on /usr/include/ctype.h:23:9
else:
  let internal_CTYPE_H* = 1  ## Generated based on /usr/include/ctype.h:23:9
when 2080 is static:
  const
    LXW_MAX_ATTRIBUTE_LENGTH* = 2080 ## Generated based on /usr/include/xlsxwriter/xmlwriter.h:28:9
else:
  let LXW_MAX_ATTRIBUTE_LENGTH* = 2080 ## Generated based on /usr/include/xlsxwriter/xmlwriter.h:28:9
when 32 is static:
  const
    LXW_ATTR_32* = 32        ## Generated based on /usr/include/xlsxwriter/xmlwriter.h:29:9
else:
  let LXW_ATTR_32* = 32      ## Generated based on /usr/include/xlsxwriter/xmlwriter.h:29:9
proc strcasecmp*(compiler_s1: cstring; compiler_s2: cstring): cint {.cdecl,
    importc: "strcasecmp".}
when 1048576 is static:
  const
    LXW_ROW_MAX* = 1048576   ## Generated based on /usr/include/xlsxwriter/worksheet.h:60:9
else:
  let LXW_ROW_MAX* = 1048576 ## Generated based on /usr/include/xlsxwriter/worksheet.h:60:9
when 16384 is static:
  const
    LXW_COL_MAX* = 16384     ## Generated based on /usr/include/xlsxwriter/worksheet.h:61:9
else:
  let LXW_COL_MAX* = 16384   ## Generated based on /usr/include/xlsxwriter/worksheet.h:61:9
when 128 is static:
  const
    LXW_COL_META_MAX* = 128  ## Generated based on /usr/include/xlsxwriter/worksheet.h:62:9
else:
  let LXW_COL_META_MAX* = 128 ## Generated based on /usr/include/xlsxwriter/worksheet.h:62:9
when 255 is static:
  const
    LXW_HEADER_FOOTER_MAX* = 255 ## Generated based on /usr/include/xlsxwriter/worksheet.h:63:9
else:
  let LXW_HEADER_FOOTER_MAX* = 255 ## Generated based on /usr/include/xlsxwriter/worksheet.h:63:9
when 65530 is static:
  const
    LXW_MAX_NUMBER_URLS* = 65530 ## Generated based on /usr/include/xlsxwriter/worksheet.h:64:9
else:
  let LXW_MAX_NUMBER_URLS* = 65530 ## Generated based on /usr/include/xlsxwriter/worksheet.h:64:9
when 12 is static:
  const
    LXW_PANE_NAME_LENGTH* = 12 ## Generated based on /usr/include/xlsxwriter/worksheet.h:65:9
else:
  let LXW_PANE_NAME_LENGTH* = 12 ## Generated based on /usr/include/xlsxwriter/worksheet.h:65:9
when 1024 is static:
  const
    LXW_IMAGE_BUFFER_SIZE* = 1024 ## Generated based on /usr/include/xlsxwriter/worksheet.h:66:9
else:
  let LXW_IMAGE_BUFFER_SIZE* = 1024 ## Generated based on /usr/include/xlsxwriter/worksheet.h:66:9
when 6 is static:
  const
    LXW_HEADER_FOOTER_OBJS_MAX* = 6 ## Generated based on /usr/include/xlsxwriter/worksheet.h:67:9
else:
  let LXW_HEADER_FOOTER_OBJS_MAX* = 6 ## Generated based on /usr/include/xlsxwriter/worksheet.h:67:9
when 1023 is static:
  const
    LXW_BREAKS_MAX* = 1023   ## Generated based on /usr/include/xlsxwriter/worksheet.h:71:9
else:
  let LXW_BREAKS_MAX* = 1023 ## Generated based on /usr/include/xlsxwriter/worksheet.h:71:9
when 64 is static:
  const
    LXW_DEF_COL_WIDTH_PIXELS* = 64 ## Generated based on /usr/include/xlsxwriter/worksheet.h:80:9
else:
  let LXW_DEF_COL_WIDTH_PIXELS* = 64 ## Generated based on /usr/include/xlsxwriter/worksheet.h:80:9
when 20 is static:
  const
    LXW_DEF_ROW_HEIGHT_PIXELS* = 20 ## Generated based on /usr/include/xlsxwriter/worksheet.h:83:9
else:
  let LXW_DEF_ROW_HEIGHT_PIXELS* = 20 ## Generated based on /usr/include/xlsxwriter/worksheet.h:83:9
when 128 is static:
  const
    LXW_DEFINED_NAME_LENGTH* = 128 ## Generated based on /usr/include/xlsxwriter/workbook.h:56:9
else:
  let LXW_DEFINED_NAME_LENGTH* = 128 ## Generated based on /usr/include/xlsxwriter/workbook.h:56:9
when "1.1.8" is static:
  const
    LXW_VERSION* = "1.1.8"   ## Generated based on /usr/include/xlsxwriter.h:22:9
else:
  let LXW_VERSION* = "1.1.8" ## Generated based on /usr/include/xlsxwriter.h:22:9
when 118 is static:
  const
    LXW_VERSION_ID* = 118    ## Generated based on /usr/include/xlsxwriter.h:23:9
else:
  let LXW_VERSION_ID* = 118  ## Generated based on /usr/include/xlsxwriter.h:23:9
when "7" is static:
  const
    LXW_SOVERSION* = "7"     ## Generated based on /usr/include/xlsxwriter.h:24:9
else:
  let LXW_SOVERSION* = "7"   ## Generated based on /usr/include/xlsxwriter.h:24:9
proc remove*(compiler_filename: cstring): cint {.cdecl, importc: "remove".}
proc rename*(compiler_old: cstring; compiler_new: cstring): cint {.cdecl,
    importc: "rename".}
proc renameat*(compiler_oldfd: cint; compiler_old: cstring;
               compiler_newfd: cint; compiler_new: cstring): cint {.cdecl,
    importc: "renameat".}
proc fclose*(compiler_stream: ptr FILE): cint {.cdecl, importc: "fclose".}
proc tmpfile*(): ptr FILE {.cdecl, importc: "tmpfile".}
proc tmpnam*(a0: array[20'i64, cschar]): cstring {.cdecl, importc: "tmpnam".}
proc tmpnam_r*(compiler_s: array[20'i64, cschar]): cstring {.cdecl,
    importc: "tmpnam_r".}
proc tempnam*(compiler_dir: cstring; compiler_pfx: cstring): cstring {.cdecl,
    importc: "tempnam".}
proc fflush*(compiler_stream: ptr FILE): cint {.cdecl, importc: "fflush".}
proc fflush_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fflush_unlocked".}
proc fopen*(compiler_filename: cstring; compiler_modes: cstring): ptr FILE {.
    cdecl, importc: "fopen".}
proc freopen*(compiler_filename: cstring; compiler_modes: cstring;
              compiler_stream: ptr FILE): ptr FILE {.cdecl, importc: "freopen".}
proc fdopen*(compiler_fd: cint; compiler_modes: cstring): ptr FILE {.cdecl,
    importc: "fdopen".}
proc fopencookie*(compiler_magic_cookie: pointer; compiler_modes: cstring;
                  compiler_io_funcs: cookie_io_functions_t): ptr FILE {.cdecl,
    importc: "fopencookie".}
proc fmemopen*(compiler_s: pointer; compiler_len: csize_t;
               compiler_modes: cstring): ptr FILE {.cdecl, importc: "fmemopen".}
proc open_memstream*(compiler_bufloc: ptr cstring; compiler_sizeloc: ptr csize_t): ptr FILE {.
    cdecl, importc: "open_memstream".}
proc setbuf*(compiler_stream: ptr FILE; compiler_buf: cstring): void {.cdecl,
    importc: "setbuf".}
proc setvbuf*(compiler_stream: ptr FILE; compiler_buf: cstring;
              compiler_modes: cint; compiler_n: csize_t): cint {.cdecl,
    importc: "setvbuf".}
proc setbuffer*(compiler_stream: ptr FILE; compiler_buf: cstring;
                compiler_size: csize_t): void {.cdecl, importc: "setbuffer".}
proc setlinebuf*(compiler_stream: ptr FILE): void {.cdecl, importc: "setlinebuf".}
proc printf*(compiler_format: cstring): cint {.cdecl, varargs, importc: "printf".}
proc sprintf*(compiler_s: cstring; compiler_format: cstring): cint {.cdecl,
    varargs, importc: "sprintf".}
proc vfprintf*(compiler_s: ptr FILE; compiler_format: cstring;
               compiler_arg: ptr compiler_va_list_tag): cint {.cdecl,
    importc: "vfprintf".}
proc vprintf*(compiler_format: cstring; compiler_arg: ptr compiler_va_list_tag): cint {.
    cdecl, importc: "vprintf".}
proc vsprintf*(compiler_s: cstring; compiler_format: cstring;
               compiler_arg: ptr compiler_va_list_tag): cint {.cdecl,
    importc: "vsprintf".}
proc snprintf*(compiler_s: cstring; compiler_maxlen: culong;
               compiler_format: cstring): cint {.cdecl, varargs,
    importc: "snprintf".}
proc vsnprintf*(compiler_s: cstring; compiler_maxlen: culong;
                compiler_format: cstring; compiler_arg: ptr compiler_va_list_tag): cint {.
    cdecl, importc: "vsnprintf".}
proc vasprintf*(compiler_ptr: ptr cstring; compiler_f: cstring;
                compiler_arg: compiler_gnuc_va_list): cint {.cdecl,
    importc: "vasprintf".}
proc compiler_asprintf*(compiler_ptr: ptr cstring; compiler_fmt: cstring): cint {.
    cdecl, varargs, importc: "__asprintf".}
proc asprintf*(compiler_ptr: ptr cstring; compiler_fmt: cstring): cint {.cdecl,
    varargs, importc: "asprintf".}
proc vdprintf*(compiler_fd: cint; compiler_fmt: cstring;
               compiler_arg: compiler_gnuc_va_list): cint {.cdecl,
    importc: "vdprintf".}
proc dprintf*(compiler_fd: cint; compiler_fmt: cstring): cint {.cdecl, varargs,
    importc: "dprintf".}
proc fscanf*(compiler_stream: ptr FILE; compiler_format: cstring): cint {.cdecl,
    varargs, importc: "fscanf".}
proc scanf*(compiler_format: cstring): cint {.cdecl, varargs, importc: "scanf".}
proc sscanf*(compiler_s: cstring; compiler_format: cstring): cint {.cdecl,
    varargs, importc: "sscanf".}
proc vfscanf*(compiler_s: ptr FILE; compiler_format: cstring;
              compiler_arg: ptr compiler_va_list_tag): cint {.cdecl,
    importc: "vfscanf".}
proc vscanf*(compiler_format: cstring; compiler_arg: ptr compiler_va_list_tag): cint {.
    cdecl, importc: "vscanf".}
proc vsscanf*(compiler_s: cstring; compiler_format: cstring;
              compiler_arg: ptr compiler_va_list_tag): cint {.cdecl,
    importc: "vsscanf".}
proc fgetc*(compiler_stream: ptr FILE): cint {.cdecl, importc: "fgetc".}
proc getc*(compiler_stream: ptr FILE): cint {.cdecl, importc: "getc".}
proc getchar*(): cint {.cdecl, importc: "getchar".}
proc getc_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "getc_unlocked".}
proc getchar_unlocked*(): cint {.cdecl, importc: "getchar_unlocked".}
proc fgetc_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fgetc_unlocked".}
proc fputc*(compiler_c: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fputc".}
proc putc*(compiler_c: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "putc".}
proc putchar*(compiler_c: cint): cint {.cdecl, importc: "putchar".}
proc fputc_unlocked*(compiler_c: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fputc_unlocked".}
proc putc_unlocked*(compiler_c: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "putc_unlocked".}
proc putchar_unlocked*(compiler_c: cint): cint {.cdecl,
    importc: "putchar_unlocked".}
proc getw*(compiler_stream: ptr FILE): cint {.cdecl, importc: "getw".}
proc putw*(compiler_w: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "putw".}
proc fgets*(compiler_s: cstring; compiler_n: cint; compiler_stream: ptr FILE): cstring {.
    cdecl, importc: "fgets".}
proc compiler_getdelim*(compiler_lineptr: ptr cstring; compiler_n: ptr csize_t;
                        compiler_delimiter: cint; compiler_stream: ptr FILE): compiler_ssize_t {.
    cdecl, importc: "__getdelim".}
proc getdelim*(compiler_lineptr: ptr cstring; compiler_n: ptr csize_t;
               compiler_delimiter: cint; compiler_stream: ptr FILE): compiler_ssize_t {.
    cdecl, importc: "getdelim".}
proc getline*(compiler_lineptr: ptr cstring; compiler_n: ptr csize_t;
              compiler_stream: ptr FILE): compiler_ssize_t {.cdecl,
    importc: "getline".}
proc fputs*(compiler_s: cstring; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fputs".}
proc puts*(compiler_s: cstring): cint {.cdecl, importc: "puts".}
proc ungetc*(compiler_c: cint; compiler_stream: ptr FILE): cint {.cdecl,
    importc: "ungetc".}
proc fread*(compiler_ptr: pointer; compiler_size: culong; compiler_n: culong;
            compiler_stream: ptr FILE): culong {.cdecl, importc: "fread".}
proc fwrite*(compiler_ptr: pointer; compiler_size: culong; compiler_n: culong;
             compiler_s: ptr FILE): culong {.cdecl, importc: "fwrite".}
proc fread_unlocked*(compiler_ptr: pointer; compiler_size: csize_t;
                     compiler_n: csize_t; compiler_stream: ptr FILE): csize_t {.
    cdecl, importc: "fread_unlocked".}
proc fwrite_unlocked*(compiler_ptr: pointer; compiler_size: csize_t;
                      compiler_n: csize_t; compiler_stream: ptr FILE): csize_t {.
    cdecl, importc: "fwrite_unlocked".}
proc fseek*(compiler_stream: ptr FILE; compiler_off: clong;
            compiler_whence: cint): cint {.cdecl, importc: "fseek".}
proc ftell*(compiler_stream: ptr FILE): clong {.cdecl, importc: "ftell".}
proc rewind*(compiler_stream: ptr FILE): void {.cdecl, importc: "rewind".}
proc fseeko*(compiler_stream: ptr FILE; compiler_off: compiler_off_t;
             compiler_whence: cint): cint {.cdecl, importc: "fseeko".}
proc ftello*(compiler_stream: ptr FILE): compiler_off_t {.cdecl,
    importc: "ftello".}
proc fgetpos*(compiler_stream: ptr FILE; compiler_pos: ptr fpos_t): cint {.
    cdecl, importc: "fgetpos".}
proc fsetpos*(compiler_stream: ptr FILE; compiler_pos: ptr fpos_t): cint {.
    cdecl, importc: "fsetpos".}
proc clearerr*(compiler_stream: ptr FILE): void {.cdecl, importc: "clearerr".}
proc feof*(compiler_stream: ptr FILE): cint {.cdecl, importc: "feof".}
proc ferror*(compiler_stream: ptr FILE): cint {.cdecl, importc: "ferror".}
proc clearerr_unlocked*(compiler_stream: ptr FILE): void {.cdecl,
    importc: "clearerr_unlocked".}
proc feof_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "feof_unlocked".}
proc ferror_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "ferror_unlocked".}
proc perror*(compiler_s: cstring): void {.cdecl, importc: "perror".}
proc fileno*(compiler_stream: ptr FILE): cint {.cdecl, importc: "fileno".}
proc fileno_unlocked*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "fileno_unlocked".}
proc pclose*(compiler_stream: ptr FILE): cint {.cdecl, importc: "pclose".}
proc popen*(compiler_command: cstring; compiler_modes: cstring): ptr FILE {.
    cdecl, importc: "popen".}
proc ctermid*(compiler_s: cstring): cstring {.cdecl, importc: "ctermid".}
proc flockfile*(compiler_stream: ptr FILE): void {.cdecl, importc: "flockfile".}
proc ftrylockfile*(compiler_stream: ptr FILE): cint {.cdecl,
    importc: "ftrylockfile".}
proc funlockfile*(compiler_stream: ptr FILE): void {.cdecl,
    importc: "funlockfile".}
proc compiler_uflow*(a0: ptr FILE): cint {.cdecl, importc: "__uflow".}
proc compiler_overflow*(a0: ptr FILE; a1: cint): cint {.cdecl,
    importc: "__overflow".}
proc compiler_errno_location*(): ptr cint {.cdecl, importc: "__errno_location".}
proc compiler_ctype_get_mb_cur_max*(): csize_t {.cdecl,
    importc: "__ctype_get_mb_cur_max".}
proc atof*(compiler_nptr: cstring): cdouble {.cdecl, importc: "atof".}
proc atoi*(compiler_nptr: cstring): cint {.cdecl, importc: "atoi".}
proc atol*(compiler_nptr: cstring): clong {.cdecl, importc: "atol".}
proc atoll*(compiler_nptr: cstring): clonglong {.cdecl, importc: "atoll".}
proc strtod*(compiler_nptr: cstring; compiler_endptr: ptr cstring): cdouble {.
    cdecl, importc: "strtod".}
proc strtof*(compiler_nptr: cstring; compiler_endptr: ptr cstring): cfloat {.
    cdecl, importc: "strtof".}
proc strtold*(compiler_nptr: cstring; compiler_endptr: ptr cstring): clongdouble {.
    cdecl, importc: "strtold".}
proc strtol*(compiler_nptr: cstring; compiler_endptr: ptr cstring;
             compiler_base: cint): clong {.cdecl, importc: "strtol".}
proc strtoul*(compiler_nptr: cstring; compiler_endptr: ptr cstring;
              compiler_base: cint): culong {.cdecl, importc: "strtoul".}
proc strtoq*(compiler_nptr: cstring; compiler_endptr: ptr cstring;
             compiler_base: cint): clonglong {.cdecl, importc: "strtoq".}
proc strtouq*(compiler_nptr: cstring; compiler_endptr: ptr cstring;
              compiler_base: cint): culonglong {.cdecl, importc: "strtouq".}
proc strtoll*(compiler_nptr: cstring; compiler_endptr: ptr cstring;
              compiler_base: cint): clonglong {.cdecl, importc: "strtoll".}
proc strtoull*(compiler_nptr: cstring; compiler_endptr: ptr cstring;
               compiler_base: cint): culonglong {.cdecl, importc: "strtoull".}
proc l64a*(compiler_n: clong): cstring {.cdecl, importc: "l64a".}
proc a64l*(compiler_s: cstring): clong {.cdecl, importc: "a64l".}
proc select*(compiler_nfds: cint; compiler_readfds: ptr fd_set;
             compiler_writefds: ptr fd_set; compiler_exceptfds: ptr fd_set;
             compiler_timeout: ptr struct_timeval): cint {.cdecl,
    importc: "select".}
proc pselect*(compiler_nfds: cint; compiler_readfds: ptr fd_set;
              compiler_writefds: ptr fd_set; compiler_exceptfds: ptr fd_set;
              compiler_timeout: ptr struct_timespec;
              compiler_sigmask: ptr compiler_sigset_t): cint {.cdecl,
    importc: "pselect".}
proc random*(): clong {.cdecl, importc: "random".}
proc srandom*(compiler_seed: cuint): void {.cdecl, importc: "srandom".}
proc initstate*(compiler_seed: cuint; compiler_statebuf: cstring;
                compiler_statelen: csize_t): cstring {.cdecl,
    importc: "initstate".}
proc setstate*(compiler_statebuf: cstring): cstring {.cdecl, importc: "setstate".}
proc random_r*(compiler_buf: ptr struct_random_data; compiler_result: ptr int32): cint {.
    cdecl, importc: "random_r".}
proc srandom_r*(compiler_seed: cuint; compiler_buf: ptr struct_random_data): cint {.
    cdecl, importc: "srandom_r".}
proc initstate_r*(compiler_seed: cuint; compiler_statebuf: cstring;
                  compiler_statelen: csize_t;
                  compiler_buf: ptr struct_random_data): cint {.cdecl,
    importc: "initstate_r".}
proc setstate_r*(compiler_statebuf: cstring;
                 compiler_buf: ptr struct_random_data): cint {.cdecl,
    importc: "setstate_r".}
proc rand*(): cint {.cdecl, importc: "rand".}
proc srand*(compiler_seed: cuint): void {.cdecl, importc: "srand".}
proc rand_r*(compiler_seed: ptr cuint): cint {.cdecl, importc: "rand_r".}
proc drand48*(): cdouble {.cdecl, importc: "drand48".}
proc erand48*(compiler_xsubi: array[3'i64, cushort]): cdouble {.cdecl,
    importc: "erand48".}
proc lrand48*(): clong {.cdecl, importc: "lrand48".}
proc nrand48*(compiler_xsubi: array[3'i64, cushort]): clong {.cdecl,
    importc: "nrand48".}
proc mrand48*(): clong {.cdecl, importc: "mrand48".}
proc jrand48*(compiler_xsubi: array[3'i64, cushort]): clong {.cdecl,
    importc: "jrand48".}
proc srand48*(compiler_seedval: clong): void {.cdecl, importc: "srand48".}
proc seed48*(compiler_seed16v: array[3'i64, cushort]): ptr cushort {.cdecl,
    importc: "seed48".}
proc lcong48*(compiler_param: array[7'i64, cushort]): void {.cdecl,
    importc: "lcong48".}
proc drand48_r*(compiler_buffer: ptr struct_drand48_data;
                compiler_result: ptr cdouble): cint {.cdecl,
    importc: "drand48_r".}
proc erand48_r*(compiler_xsubi: array[3'i64, cushort];
                compiler_buffer: ptr struct_drand48_data;
                compiler_result: ptr cdouble): cint {.cdecl,
    importc: "erand48_r".}
proc lrand48_r*(compiler_buffer: ptr struct_drand48_data;
                compiler_result: ptr clong): cint {.cdecl, importc: "lrand48_r".}
proc nrand48_r*(compiler_xsubi: array[3'i64, cushort];
                compiler_buffer: ptr struct_drand48_data;
                compiler_result: ptr clong): cint {.cdecl, importc: "nrand48_r".}
proc mrand48_r*(compiler_buffer: ptr struct_drand48_data;
                compiler_result: ptr clong): cint {.cdecl, importc: "mrand48_r".}
proc jrand48_r*(compiler_xsubi: array[3'i64, cushort];
                compiler_buffer: ptr struct_drand48_data;
                compiler_result: ptr clong): cint {.cdecl, importc: "jrand48_r".}
proc srand48_r*(compiler_seedval: clong;
                compiler_buffer: ptr struct_drand48_data): cint {.cdecl,
    importc: "srand48_r".}
proc seed48_r*(compiler_seed16v: array[3'i64, cushort];
               compiler_buffer: ptr struct_drand48_data): cint {.cdecl,
    importc: "seed48_r".}
proc lcong48_r*(compiler_param: array[7'i64, cushort];
                compiler_buffer: ptr struct_drand48_data): cint {.cdecl,
    importc: "lcong48_r".}
proc arc4random*(): compiler_uint32_t {.cdecl, importc: "arc4random".}
proc arc4random_buf*(compiler_buf: pointer; compiler_size: csize_t): void {.
    cdecl, importc: "arc4random_buf".}
proc arc4random_uniform*(compiler_upper_bound: compiler_uint32_t): compiler_uint32_t {.
    cdecl, importc: "arc4random_uniform".}
proc malloc*(compiler_size: culong): pointer {.cdecl, importc: "malloc".}
proc calloc*(compiler_nmemb: culong; compiler_size: culong): pointer {.cdecl,
    importc: "calloc".}
proc realloc*(compiler_ptr: pointer; compiler_size: culong): pointer {.cdecl,
    importc: "realloc".}
proc free*(compiler_ptr: pointer): void {.cdecl, importc: "free".}
proc reallocarray*(compiler_ptr: pointer; compiler_nmemb: csize_t;
                   compiler_size: csize_t): pointer {.cdecl,
    importc: "reallocarray".}
proc alloca*(compiler_size: culong): pointer {.cdecl, importc: "alloca".}
proc valloc*(compiler_size: csize_t): pointer {.cdecl, importc: "valloc".}
proc posix_memalign*(compiler_memptr: ptr pointer; compiler_alignment: csize_t;
                     compiler_size: csize_t): cint {.cdecl,
    importc: "posix_memalign".}
proc aligned_alloc*(compiler_alignment: culong; compiler_size: culong): pointer {.
    cdecl, importc: "aligned_alloc".}
proc abort*(): void {.cdecl, importc: "abort".}
proc atexit*(compiler_func: proc (): void {.cdecl.}): cint {.cdecl,
    importc: "atexit".}
proc at_quick_exit*(compiler_func: proc (): void {.cdecl.}): cint {.cdecl,
    importc: "at_quick_exit".}
proc on_exit*(compiler_func: proc (a0: cint; a1: pointer): void {.cdecl.};
              compiler_arg: pointer): cint {.cdecl, importc: "on_exit".}
proc exit*(compiler_status: cint): void {.cdecl, importc: "exit".}
proc quick_exit*(compiler_status: cint): void {.cdecl, importc: "quick_exit".}
proc internal_Exit*(compiler_status: cint): void {.cdecl, importc: "_Exit".}
proc getenv*(compiler_name: cstring): cstring {.cdecl, importc: "getenv".}
proc putenv*(compiler_string: cstring): cint {.cdecl, importc: "putenv".}
proc setenv*(compiler_name: cstring; compiler_value: cstring;
             compiler_replace: cint): cint {.cdecl, importc: "setenv".}
proc unsetenv*(compiler_name: cstring): cint {.cdecl, importc: "unsetenv".}
proc clearenv*(): cint {.cdecl, importc: "clearenv".}
proc mktemp*(compiler_template: cstring): cstring {.cdecl, importc: "mktemp".}
proc mkstemp*(compiler_template: cstring): cint {.cdecl, importc: "mkstemp".}
proc mkstemps*(compiler_template: cstring; compiler_suffixlen: cint): cint {.
    cdecl, importc: "mkstemps".}
proc mkdtemp*(compiler_template: cstring): cstring {.cdecl, importc: "mkdtemp".}
proc system*(compiler_command: cstring): cint {.cdecl, importc: "system".}
proc realpath*(compiler_name: cstring; compiler_resolved: cstring): cstring {.
    cdecl, importc: "realpath".}
proc bsearch*(compiler_key: pointer; compiler_base: pointer;
              compiler_nmemb: csize_t; compiler_size: csize_t;
              compiler_compar: compiler_compar_fn_t): pointer {.cdecl,
    importc: "bsearch".}
proc qsort*(compiler_base: pointer; compiler_nmemb: csize_t;
            compiler_size: csize_t; compiler_compar: compiler_compar_fn_t): void {.
    cdecl, importc: "qsort".}
proc abs*(compiler_x: cint): cint {.cdecl, importc: "abs".}
proc labs*(compiler_x: clong): clong {.cdecl, importc: "labs".}
proc llabs*(compiler_x: clonglong): clonglong {.cdecl, importc: "llabs".}
proc div_proc*(compiler_numer: cint; compiler_denom: cint): div_t {.cdecl,
    importc: "div".}
proc ldiv*(compiler_numer: clong; compiler_denom: clong): ldiv_t {.cdecl,
    importc: "ldiv".}
proc lldiv*(compiler_numer: clonglong; compiler_denom: clonglong): lldiv_t {.
    cdecl, importc: "lldiv".}
proc ecvt*(compiler_value: cdouble; compiler_ndigit: cint;
           compiler_decpt: ptr cint; compiler_sign: ptr cint): cstring {.cdecl,
    importc: "ecvt".}
proc fcvt*(compiler_value: cdouble; compiler_ndigit: cint;
           compiler_decpt: ptr cint; compiler_sign: ptr cint): cstring {.cdecl,
    importc: "fcvt".}
proc gcvt*(compiler_value: cdouble; compiler_ndigit: cint; compiler_buf: cstring): cstring {.
    cdecl, importc: "gcvt".}
proc qecvt*(compiler_value: clongdouble; compiler_ndigit: cint;
            compiler_decpt: ptr cint; compiler_sign: ptr cint): cstring {.cdecl,
    importc: "qecvt".}
proc qfcvt*(compiler_value: clongdouble; compiler_ndigit: cint;
            compiler_decpt: ptr cint; compiler_sign: ptr cint): cstring {.cdecl,
    importc: "qfcvt".}
proc qgcvt*(compiler_value: clongdouble; compiler_ndigit: cint;
            compiler_buf: cstring): cstring {.cdecl, importc: "qgcvt".}
proc ecvt_r*(compiler_value: cdouble; compiler_ndigit: cint;
             compiler_decpt: ptr cint; compiler_sign: ptr cint;
             compiler_buf: cstring; compiler_len: csize_t): cint {.cdecl,
    importc: "ecvt_r".}
proc fcvt_r*(compiler_value: cdouble; compiler_ndigit: cint;
             compiler_decpt: ptr cint; compiler_sign: ptr cint;
             compiler_buf: cstring; compiler_len: csize_t): cint {.cdecl,
    importc: "fcvt_r".}
proc qecvt_r*(compiler_value: clongdouble; compiler_ndigit: cint;
              compiler_decpt: ptr cint; compiler_sign: ptr cint;
              compiler_buf: cstring; compiler_len: csize_t): cint {.cdecl,
    importc: "qecvt_r".}
proc qfcvt_r*(compiler_value: clongdouble; compiler_ndigit: cint;
              compiler_decpt: ptr cint; compiler_sign: ptr cint;
              compiler_buf: cstring; compiler_len: csize_t): cint {.cdecl,
    importc: "qfcvt_r".}
proc mblen*(compiler_s: cstring; compiler_n: csize_t): cint {.cdecl,
    importc: "mblen".}
proc mbtowc*(compiler_pwc: ptr wchar_t; compiler_s: cstring; compiler_n: csize_t): cint {.
    cdecl, importc: "mbtowc".}
proc wctomb*(compiler_s: cstring; compiler_wchar: wchar_t): cint {.cdecl,
    importc: "wctomb".}
proc mbstowcs*(compiler_pwcs: ptr wchar_t; compiler_s: cstring;
               compiler_n: csize_t): csize_t {.cdecl, importc: "mbstowcs".}
proc wcstombs*(compiler_s: cstring; compiler_pwcs: ptr wchar_t;
               compiler_n: csize_t): csize_t {.cdecl, importc: "wcstombs".}
proc rpmatch*(compiler_response: cstring): cint {.cdecl, importc: "rpmatch".}
proc getsubopt*(compiler_optionp: ptr cstring; compiler_tokens: ptr cstring;
                compiler_valuep: ptr cstring): cint {.cdecl,
    importc: "getsubopt".}
proc getloadavg*(compiler_loadavg: ptr UncheckedArray[cdouble];
                 compiler_nelem: cint): cint {.cdecl, importc: "getloadavg".}
proc memcpy*(compiler_dest: pointer; compiler_src: pointer; compiler_n: culong): pointer {.
    cdecl, importc: "memcpy".}
proc memmove*(compiler_dest: pointer; compiler_src: pointer; compiler_n: culong): pointer {.
    cdecl, importc: "memmove".}
proc memccpy*(compiler_dest: pointer; compiler_src: pointer; compiler_c: cint;
              compiler_n: culong): pointer {.cdecl, importc: "memccpy".}
proc memset*(compiler_s: pointer; compiler_c: cint; compiler_n: culong): pointer {.
    cdecl, importc: "memset".}
proc memcmp*(compiler_s1: pointer; compiler_s2: pointer; compiler_n: culong): cint {.
    cdecl, importc: "memcmp".}
proc compiler_memcmpeq*(compiler_s1: pointer; compiler_s2: pointer;
                        compiler_n: csize_t): cint {.cdecl,
    importc: "__memcmpeq".}
proc memchr*(compiler_s: pointer; compiler_c: cint; compiler_n: culong): pointer {.
    cdecl, importc: "memchr".}
proc strcpy*(compiler_dest: cstring; compiler_src: cstring): cstring {.cdecl,
    importc: "strcpy".}
proc strncpy*(compiler_dest: cstring; compiler_src: cstring; compiler_n: culong): cstring {.
    cdecl, importc: "strncpy".}
proc strcat*(compiler_dest: cstring; compiler_src: cstring): cstring {.cdecl,
    importc: "strcat".}
proc strncat*(compiler_dest: cstring; compiler_src: cstring; compiler_n: culong): cstring {.
    cdecl, importc: "strncat".}
proc strcmp*(compiler_s1: cstring; compiler_s2: cstring): cint {.cdecl,
    importc: "strcmp".}
proc strncmp*(compiler_s1: cstring; compiler_s2: cstring; compiler_n: culong): cint {.
    cdecl, importc: "strncmp".}
proc strcoll*(compiler_s1: cstring; compiler_s2: cstring): cint {.cdecl,
    importc: "strcoll".}
proc strxfrm*(compiler_dest: cstring; compiler_src: cstring; compiler_n: culong): culong {.
    cdecl, importc: "strxfrm".}
proc strcoll_l*(compiler_s1: cstring; compiler_s2: cstring; compiler_l: locale_t): cint {.
    cdecl, importc: "strcoll_l".}
proc strxfrm_l*(compiler_dest: cstring; compiler_src: cstring;
                compiler_n: csize_t; compiler_l: locale_t): csize_t {.cdecl,
    importc: "strxfrm_l".}
proc strdup*(compiler_s: cstring): cstring {.cdecl, importc: "strdup".}
proc strndup*(compiler_string: cstring; compiler_n: culong): cstring {.cdecl,
    importc: "strndup".}
proc strchr*(compiler_s: cstring; compiler_c: cint): cstring {.cdecl,
    importc: "strchr".}
proc strrchr*(compiler_s: cstring; compiler_c: cint): cstring {.cdecl,
    importc: "strrchr".}
proc strchrnul*(compiler_s: cstring; compiler_c: cint): cstring {.cdecl,
    importc: "strchrnul".}
proc strcspn*(compiler_s: cstring; compiler_reject: cstring): culong {.cdecl,
    importc: "strcspn".}
proc strspn*(compiler_s: cstring; compiler_accept: cstring): culong {.cdecl,
    importc: "strspn".}
proc strpbrk*(compiler_s: cstring; compiler_accept: cstring): cstring {.cdecl,
    importc: "strpbrk".}
proc strstr*(compiler_haystack: cstring; compiler_needle: cstring): cstring {.
    cdecl, importc: "strstr".}
proc strtok*(compiler_s: cstring; compiler_delim: cstring): cstring {.cdecl,
    importc: "strtok".}
proc compiler_strtok_r*(compiler_s: cstring; compiler_delim: cstring;
                        compiler_save_ptr: ptr cstring): cstring {.cdecl,
    importc: "__strtok_r".}
proc strtok_r*(compiler_s: cstring; compiler_delim: cstring;
               compiler_save_ptr: ptr cstring): cstring {.cdecl,
    importc: "strtok_r".}
proc strcasestr*(compiler_haystack: cstring; compiler_needle: cstring): cstring {.
    cdecl, importc: "strcasestr".}
proc memmem*(compiler_haystack: pointer; compiler_haystacklen: csize_t;
             compiler_needle: pointer; compiler_needlelen: csize_t): pointer {.
    cdecl, importc: "memmem".}
proc compiler_mempcpy*(compiler_dest: pointer; compiler_src: pointer;
                       compiler_n: csize_t): pointer {.cdecl,
    importc: "__mempcpy".}
proc mempcpy*(compiler_dest: pointer; compiler_src: pointer; compiler_n: culong): pointer {.
    cdecl, importc: "mempcpy".}
proc strlen*(compiler_s: cstring): culong {.cdecl, importc: "strlen".}
proc strnlen*(compiler_string: cstring; compiler_maxlen: csize_t): csize_t {.
    cdecl, importc: "strnlen".}
proc strerror*(compiler_errnum: cint): cstring {.cdecl, importc: "strerror".}
proc strerror_r*(compiler_errnum: cint; compiler_buf: cstring;
                 compiler_buflen: csize_t): cint {.cdecl, importc: "strerror_r".}
proc strerror_l*(compiler_errnum: cint; compiler_l: locale_t): cstring {.cdecl,
    importc: "strerror_l".}
proc bcmp*(compiler_s1: pointer; compiler_s2: pointer; compiler_n: culong): cint {.
    cdecl, importc: "bcmp".}
proc bcopy*(compiler_src: pointer; compiler_dest: pointer; compiler_n: culong): void {.
    cdecl, importc: "bcopy".}
proc bzero*(compiler_s: pointer; compiler_n: culong): void {.cdecl,
    importc: "bzero".}
proc index*(compiler_s: cstring; compiler_c: cint): cstring {.cdecl,
    importc: "index".}
proc rindex*(compiler_s: cstring; compiler_c: cint): cstring {.cdecl,
    importc: "rindex".}
proc ffs*(compiler_i: cint): cint {.cdecl, importc: "ffs".}
proc ffsl*(compiler_l: clong): cint {.cdecl, importc: "ffsl".}
proc ffsll*(compiler_ll: clonglong): cint {.cdecl, importc: "ffsll".}
proc strncasecmp*(compiler_s1: cstring; compiler_s2: cstring; compiler_n: culong): cint {.
    cdecl, importc: "strncasecmp".}
proc strcasecmp_l*(compiler_s1: cstring; compiler_s2: cstring;
                   compiler_loc: locale_t): cint {.cdecl,
    importc: "strcasecmp_l".}
proc strncasecmp_l*(compiler_s1: cstring; compiler_s2: cstring;
                    compiler_n: csize_t; compiler_loc: locale_t): cint {.cdecl,
    importc: "strncasecmp_l".}
proc explicit_bzero*(compiler_s: pointer; compiler_n: csize_t): void {.cdecl,
    importc: "explicit_bzero".}
proc strsep*(compiler_stringp: ptr cstring; compiler_delim: cstring): cstring {.
    cdecl, importc: "strsep".}
proc strsignal*(compiler_sig: cint): cstring {.cdecl, importc: "strsignal".}
proc compiler_stpcpy*(compiler_dest: cstring; compiler_src: cstring): cstring {.
    cdecl, importc: "__stpcpy".}
proc stpcpy*(compiler_dest: cstring; compiler_src: cstring): cstring {.cdecl,
    importc: "stpcpy".}
proc compiler_stpncpy*(compiler_dest: cstring; compiler_src: cstring;
                       compiler_n: csize_t): cstring {.cdecl,
    importc: "__stpncpy".}
proc stpncpy*(compiler_dest: cstring; compiler_src: cstring; compiler_n: culong): cstring {.
    cdecl, importc: "stpncpy".}
proc strlcpy*(compiler_dest: cstring; compiler_src: cstring; compiler_n: culong): culong {.
    cdecl, importc: "strlcpy".}
proc strlcat*(compiler_dest: cstring; compiler_src: cstring; compiler_n: culong): culong {.
    cdecl, importc: "strlcat".}
proc clock*(): clock_t {.cdecl, importc: "clock".}
proc time*(compiler_timer: ptr time_t): time_t {.cdecl, importc: "time".}
proc difftime*(compiler_time1: time_t; compiler_time0: time_t): cdouble {.cdecl,
    importc: "difftime".}
proc mktime*(compiler_tp: ptr struct_tm): time_t {.cdecl, importc: "mktime".}
proc strftime*(compiler_s: cstring; compiler_maxsize: csize_t;
               compiler_format: cstring; compiler_tp: ptr struct_tm): csize_t {.
    cdecl, importc: "strftime".}
proc strftime_l*(compiler_s: cstring; compiler_maxsize: csize_t;
                 compiler_format: cstring; compiler_tp: ptr struct_tm;
                 compiler_loc: locale_t): csize_t {.cdecl, importc: "strftime_l".}
proc gmtime*(compiler_timer: ptr time_t): ptr struct_tm {.cdecl,
    importc: "gmtime".}
proc localtime*(compiler_timer: ptr time_t): ptr struct_tm {.cdecl,
    importc: "localtime".}
proc gmtime_r*(compiler_timer: ptr time_t; compiler_tp: ptr struct_tm): ptr struct_tm {.
    cdecl, importc: "gmtime_r".}
proc localtime_r*(compiler_timer: ptr time_t; compiler_tp: ptr struct_tm): ptr struct_tm {.
    cdecl, importc: "localtime_r".}
proc asctime*(compiler_tp: ptr struct_tm): cstring {.cdecl, importc: "asctime".}
proc ctime*(compiler_timer: ptr time_t): cstring {.cdecl, importc: "ctime".}
proc asctime_r*(compiler_tp: ptr struct_tm; compiler_buf: cstring): cstring {.
    cdecl, importc: "asctime_r".}
proc ctime_r*(compiler_timer: ptr time_t; compiler_buf: cstring): cstring {.
    cdecl, importc: "ctime_r".}
var compiler_tzname* {.importc: "__tzname".}: array[2'i64, cstring]
var compiler_daylight* {.importc: "__daylight".}: cint
var compiler_timezone* {.importc: "__timezone".}: clong
var tzname* {.importc: "tzname".}: array[2'i64, cstring]
proc tzset*(): void {.cdecl, importc: "tzset".}
var daylight* {.importc: "daylight".}: cint
var timezone* {.importc: "timezone".}: clong
proc timegm*(compiler_tp: ptr struct_tm): time_t {.cdecl, importc: "timegm".}
proc timelocal*(compiler_tp: ptr struct_tm): time_t {.cdecl,
    importc: "timelocal".}
proc dysize*(compiler_year: cint): cint {.cdecl, importc: "dysize".}
proc nanosleep*(compiler_requested_time: ptr struct_timespec;
                compiler_remaining: ptr struct_timespec): cint {.cdecl,
    importc: "nanosleep".}
proc clock_getres*(compiler_clock_id: clockid_t;
                   compiler_res: ptr struct_timespec): cint {.cdecl,
    importc: "clock_getres".}
proc clock_gettime*(compiler_clock_id: clockid_t;
                    compiler_tp: ptr struct_timespec): cint {.cdecl,
    importc: "clock_gettime".}
proc clock_settime*(compiler_clock_id: clockid_t;
                    compiler_tp: ptr struct_timespec): cint {.cdecl,
    importc: "clock_settime".}
proc clock_nanosleep*(compiler_clock_id: clockid_t; compiler_flags: cint;
                      compiler_req: ptr struct_timespec;
                      compiler_rem: ptr struct_timespec): cint {.cdecl,
    importc: "clock_nanosleep".}
proc clock_getcpuclockid*(compiler_pid: pid_t; compiler_clock_id: ptr clockid_t): cint {.
    cdecl, importc: "clock_getcpuclockid".}
proc timer_create*(compiler_clock_id: clockid_t;
                   compiler_evp: ptr struct_sigevent;
                   compiler_timerid: ptr timer_t): cint {.cdecl,
    importc: "timer_create".}
proc timer_delete*(compiler_timerid: timer_t): cint {.cdecl,
    importc: "timer_delete".}
proc timer_settime*(compiler_timerid: timer_t; compiler_flags: cint;
                    compiler_value: ptr struct_itimerspec;
                    compiler_ovalue: ptr struct_itimerspec): cint {.cdecl,
    importc: "timer_settime".}
proc timer_gettime*(compiler_timerid: timer_t;
                    compiler_value: ptr struct_itimerspec): cint {.cdecl,
    importc: "timer_gettime".}
proc timer_getoverrun*(compiler_timerid: timer_t): cint {.cdecl,
    importc: "timer_getoverrun".}
proc timespec_get*(compiler_ts: ptr struct_timespec; compiler_base: cint): cint {.
    cdecl, importc: "timespec_get".}
proc lxw_sst_new*(): ptr lxw_sst {.cdecl, importc: "lxw_sst_new".}
proc lxw_sst_free*(sst: ptr lxw_sst): void {.cdecl, importc: "lxw_sst_free".}
proc lxw_get_sst_index*(sst: ptr lxw_sst; string: cstring; is_rich_string: uint8): ptr struct_sst_element {.
    cdecl, importc: "lxw_get_sst_index".}
proc lxw_sst_assemble_xml_file*(self: ptr lxw_sst): void {.cdecl,
    importc: "lxw_sst_assemble_xml_file".}
proc lxw_hash_key_exists*(lxw_hash: ptr lxw_hash_table; key: pointer;
                          key_len: csize_t): ptr lxw_hash_element {.cdecl,
    importc: "lxw_hash_key_exists".}
proc lxw_insert_hash_element*(lxw_hash: ptr lxw_hash_table; key: pointer;
                              value: pointer; key_len: csize_t): ptr lxw_hash_element {.
    cdecl, importc: "lxw_insert_hash_element".}
proc lxw_hash_new*(num_buckets: uint32; free_key: uint8; free_value: uint8): ptr lxw_hash_table {.
    cdecl, importc: "lxw_hash_new".}
proc lxw_hash_free*(lxw_hash: ptr lxw_hash_table): void {.cdecl,
    importc: "lxw_hash_free".}
proc lxw_format_new*(): ptr lxw_format {.cdecl, importc: "lxw_format_new".}
proc lxw_format_free*(format: ptr lxw_format): void {.cdecl,
    importc: "lxw_format_free".}
proc lxw_format_get_xf_index*(format: ptr lxw_format): int32 {.cdecl,
    importc: "lxw_format_get_xf_index".}
proc lxw_format_get_dxf_index*(format: ptr lxw_format): int32 {.cdecl,
    importc: "lxw_format_get_dxf_index".}
proc lxw_format_get_font_key*(format: ptr lxw_format): ptr lxw_font {.cdecl,
    importc: "lxw_format_get_font_key".}
proc lxw_format_get_border_key*(format: ptr lxw_format): ptr lxw_border {.cdecl,
    importc: "lxw_format_get_border_key".}
proc lxw_format_get_fill_key*(format: ptr lxw_format): ptr lxw_fill {.cdecl,
    importc: "lxw_format_get_fill_key".}
proc format_set_font_name*(format: ptr lxw_format; font_name: cstring): void {.
    cdecl, importc: "format_set_font_name".}
proc format_set_font_size*(format: ptr lxw_format; size: cdouble): void {.cdecl,
    importc: "format_set_font_size".}
proc format_set_font_color*(format: ptr lxw_format; color: lxw_color_t): void {.
    cdecl, importc: "format_set_font_color".}
proc format_set_bold*(format: ptr lxw_format): void {.cdecl,
    importc: "format_set_bold".}
proc format_set_italic*(format: ptr lxw_format): void {.cdecl,
    importc: "format_set_italic".}
proc format_set_underline*(format: ptr lxw_format; style: uint8): void {.cdecl,
    importc: "format_set_underline".}
proc format_set_font_strikeout*(format: ptr lxw_format): void {.cdecl,
    importc: "format_set_font_strikeout".}
proc format_set_font_script*(format: ptr lxw_format; style: uint8): void {.
    cdecl, importc: "format_set_font_script".}
proc format_set_num_format*(format: ptr lxw_format; num_format: cstring): void {.
    cdecl, importc: "format_set_num_format".}
proc format_set_num_format_index*(format: ptr lxw_format; index: uint8): void {.
    cdecl, importc: "format_set_num_format_index".}
proc format_set_unlocked*(format: ptr lxw_format): void {.cdecl,
    importc: "format_set_unlocked".}
proc format_set_hidden*(format: ptr lxw_format): void {.cdecl,
    importc: "format_set_hidden".}
proc format_set_align*(format: ptr lxw_format; alignment: uint8): void {.cdecl,
    importc: "format_set_align".}
proc format_set_text_wrap*(format: ptr lxw_format): void {.cdecl,
    importc: "format_set_text_wrap".}
proc format_set_rotation*(format: ptr lxw_format; angle: int16): void {.cdecl,
    importc: "format_set_rotation".}
proc format_set_indent*(format: ptr lxw_format; level: uint8): void {.cdecl,
    importc: "format_set_indent".}
proc format_set_shrink*(format: ptr lxw_format): void {.cdecl,
    importc: "format_set_shrink".}
proc format_set_pattern*(format: ptr lxw_format; index: uint8): void {.cdecl,
    importc: "format_set_pattern".}
proc format_set_bg_color*(format: ptr lxw_format; color: lxw_color_t): void {.
    cdecl, importc: "format_set_bg_color".}
proc format_set_fg_color*(format: ptr lxw_format; color: lxw_color_t): void {.
    cdecl, importc: "format_set_fg_color".}
proc format_set_border*(format: ptr lxw_format; style: uint8): void {.cdecl,
    importc: "format_set_border".}
proc format_set_bottom*(format: ptr lxw_format; style: uint8): void {.cdecl,
    importc: "format_set_bottom".}
proc format_set_top*(format: ptr lxw_format; style: uint8): void {.cdecl,
    importc: "format_set_top".}
proc format_set_left*(format: ptr lxw_format; style: uint8): void {.cdecl,
    importc: "format_set_left".}
proc format_set_right*(format: ptr lxw_format; style: uint8): void {.cdecl,
    importc: "format_set_right".}
proc format_set_border_color*(format: ptr lxw_format; color: lxw_color_t): void {.
    cdecl, importc: "format_set_border_color".}
proc format_set_bottom_color*(format: ptr lxw_format; color: lxw_color_t): void {.
    cdecl, importc: "format_set_bottom_color".}
proc format_set_top_color*(format: ptr lxw_format; color: lxw_color_t): void {.
    cdecl, importc: "format_set_top_color".}
proc format_set_left_color*(format: ptr lxw_format; color: lxw_color_t): void {.
    cdecl, importc: "format_set_left_color".}
proc format_set_right_color*(format: ptr lxw_format; color: lxw_color_t): void {.
    cdecl, importc: "format_set_right_color".}
proc format_set_diag_type*(format: ptr lxw_format; type_arg: uint8): void {.
    cdecl, importc: "format_set_diag_type".}
proc format_set_diag_border*(format: ptr lxw_format; style: uint8): void {.
    cdecl, importc: "format_set_diag_border".}
proc format_set_diag_color*(format: ptr lxw_format; color: lxw_color_t): void {.
    cdecl, importc: "format_set_diag_color".}
proc format_set_quote_prefix*(format: ptr lxw_format): void {.cdecl,
    importc: "format_set_quote_prefix".}
proc format_set_font_outline*(format: ptr lxw_format): void {.cdecl,
    importc: "format_set_font_outline".}
proc format_set_font_shadow*(format: ptr lxw_format): void {.cdecl,
    importc: "format_set_font_shadow".}
proc format_set_font_family*(format: ptr lxw_format; value: uint8): void {.
    cdecl, importc: "format_set_font_family".}
proc format_set_font_charset*(format: ptr lxw_format; value: uint8): void {.
    cdecl, importc: "format_set_font_charset".}
proc format_set_font_scheme*(format: ptr lxw_format; font_scheme: cstring): void {.
    cdecl, importc: "format_set_font_scheme".}
proc format_set_font_condense*(format: ptr lxw_format): void {.cdecl,
    importc: "format_set_font_condense".}
proc format_set_font_extend*(format: ptr lxw_format): void {.cdecl,
    importc: "format_set_font_extend".}
proc format_set_reading_order*(format: ptr lxw_format; value: uint8): void {.
    cdecl, importc: "format_set_reading_order".}
proc format_set_theme*(format: ptr lxw_format; value: uint8): void {.cdecl,
    importc: "format_set_theme".}
proc format_set_hyperlink*(format: ptr lxw_format): void {.cdecl,
    importc: "format_set_hyperlink".}
proc format_set_color_indexed*(format: ptr lxw_format; value: uint8): void {.
    cdecl, importc: "format_set_color_indexed".}
proc format_set_font_only*(format: ptr lxw_format): void {.cdecl,
    importc: "format_set_font_only".}
proc lxw_chart_new*(type_arg: uint8): ptr lxw_chart {.cdecl,
    importc: "lxw_chart_new".}
proc lxw_chart_free*(chart: ptr lxw_chart): void {.cdecl,
    importc: "lxw_chart_free".}
proc lxw_chart_assemble_xml_file*(chart: ptr lxw_chart): void {.cdecl,
    importc: "lxw_chart_assemble_xml_file".}
proc chart_add_series*(chart: ptr lxw_chart; categories: cstring;
                       values: cstring): ptr lxw_chart_series {.cdecl,
    importc: "chart_add_series".}
proc chart_series_set_categories*(series: ptr lxw_chart_series;
                                  sheetname: cstring; first_row: lxw_row_t;
                                  first_col: lxw_col_t; last_row: lxw_row_t;
                                  last_col: lxw_col_t): void {.cdecl,
    importc: "chart_series_set_categories".}
proc chart_series_set_values*(series: ptr lxw_chart_series; sheetname: cstring;
                              first_row: lxw_row_t; first_col: lxw_col_t;
                              last_row: lxw_row_t; last_col: lxw_col_t): void {.
    cdecl, importc: "chart_series_set_values".}
proc chart_series_set_name*(series: ptr lxw_chart_series; name: cstring): void {.
    cdecl, importc: "chart_series_set_name".}
proc chart_series_set_name_range*(series: ptr lxw_chart_series;
                                  sheetname: cstring; row: lxw_row_t;
                                  col: lxw_col_t): void {.cdecl,
    importc: "chart_series_set_name_range".}
proc chart_series_set_line*(series: ptr lxw_chart_series;
                            line: ptr lxw_chart_line): void {.cdecl,
    importc: "chart_series_set_line".}
proc chart_series_set_fill*(series: ptr lxw_chart_series;
                            fill: ptr lxw_chart_fill): void {.cdecl,
    importc: "chart_series_set_fill".}
proc chart_series_set_invert_if_negative*(series: ptr lxw_chart_series): void {.
    cdecl, importc: "chart_series_set_invert_if_negative".}
proc chart_series_set_pattern*(series: ptr lxw_chart_series;
                               pattern: ptr lxw_chart_pattern): void {.cdecl,
    importc: "chart_series_set_pattern".}
proc chart_series_set_marker_type*(series: ptr lxw_chart_series; type_arg: uint8): void {.
    cdecl, importc: "chart_series_set_marker_type".}
proc chart_series_set_marker_size*(series: ptr lxw_chart_series; size: uint8): void {.
    cdecl, importc: "chart_series_set_marker_size".}
proc chart_series_set_marker_line*(series: ptr lxw_chart_series;
                                   line: ptr lxw_chart_line): void {.cdecl,
    importc: "chart_series_set_marker_line".}
proc chart_series_set_marker_fill*(series: ptr lxw_chart_series;
                                   fill: ptr lxw_chart_fill): void {.cdecl,
    importc: "chart_series_set_marker_fill".}
proc chart_series_set_marker_pattern*(series: ptr lxw_chart_series;
                                      pattern: ptr lxw_chart_pattern): void {.
    cdecl, importc: "chart_series_set_marker_pattern".}
proc chart_series_set_points*(series: ptr lxw_chart_series;
                              points: ptr UncheckedArray[ptr lxw_chart_point]): lxw_error {.
    cdecl, importc: "chart_series_set_points".}
proc chart_series_set_smooth*(series: ptr lxw_chart_series; smooth: uint8): void {.
    cdecl, importc: "chart_series_set_smooth".}
proc chart_series_set_labels*(series: ptr lxw_chart_series): void {.cdecl,
    importc: "chart_series_set_labels".}
proc chart_series_set_labels_options*(series: ptr lxw_chart_series;
                                      show_name: uint8; show_category: uint8;
                                      show_value: uint8): void {.cdecl,
    importc: "chart_series_set_labels_options".}
proc chart_series_set_labels_custom*(series: ptr lxw_chart_series; data_labels: ptr UncheckedArray[
    ptr lxw_chart_data_label]): lxw_error {.cdecl,
    importc: "chart_series_set_labels_custom".}
proc chart_series_set_labels_separator*(series: ptr lxw_chart_series;
                                        separator: uint8): void {.cdecl,
    importc: "chart_series_set_labels_separator".}
proc chart_series_set_labels_position*(series: ptr lxw_chart_series;
                                       position: uint8): void {.cdecl,
    importc: "chart_series_set_labels_position".}
proc chart_series_set_labels_leader_line*(series: ptr lxw_chart_series): void {.
    cdecl, importc: "chart_series_set_labels_leader_line".}
proc chart_series_set_labels_legend*(series: ptr lxw_chart_series): void {.
    cdecl, importc: "chart_series_set_labels_legend".}
proc chart_series_set_labels_percentage*(series: ptr lxw_chart_series): void {.
    cdecl, importc: "chart_series_set_labels_percentage".}
proc chart_series_set_labels_num_format*(series: ptr lxw_chart_series;
    num_format: cstring): void {.cdecl,
                                 importc: "chart_series_set_labels_num_format".}
proc chart_series_set_labels_font*(series: ptr lxw_chart_series;
                                   font: ptr lxw_chart_font): void {.cdecl,
    importc: "chart_series_set_labels_font".}
proc chart_series_set_labels_line*(series: ptr lxw_chart_series;
                                   line: ptr lxw_chart_line): void {.cdecl,
    importc: "chart_series_set_labels_line".}
proc chart_series_set_labels_fill*(series: ptr lxw_chart_series;
                                   fill: ptr lxw_chart_fill): void {.cdecl,
    importc: "chart_series_set_labels_fill".}
proc chart_series_set_labels_pattern*(series: ptr lxw_chart_series;
                                      pattern: ptr lxw_chart_pattern): void {.
    cdecl, importc: "chart_series_set_labels_pattern".}
proc chart_series_set_trendline*(series: ptr lxw_chart_series; type_arg: uint8;
                                 value: uint8): void {.cdecl,
    importc: "chart_series_set_trendline".}
proc chart_series_set_trendline_forecast*(series: ptr lxw_chart_series;
    forward: cdouble; backward: cdouble): void {.cdecl,
    importc: "chart_series_set_trendline_forecast".}
proc chart_series_set_trendline_equation*(series: ptr lxw_chart_series): void {.
    cdecl, importc: "chart_series_set_trendline_equation".}
proc chart_series_set_trendline_r_squared*(series: ptr lxw_chart_series): void {.
    cdecl, importc: "chart_series_set_trendline_r_squared".}
proc chart_series_set_trendline_intercept*(series: ptr lxw_chart_series;
    intercept: cdouble): void {.cdecl,
                                importc: "chart_series_set_trendline_intercept".}
proc chart_series_set_trendline_name*(series: ptr lxw_chart_series;
                                      name: cstring): void {.cdecl,
    importc: "chart_series_set_trendline_name".}
proc chart_series_set_trendline_line*(series: ptr lxw_chart_series;
                                      line: ptr lxw_chart_line): void {.cdecl,
    importc: "chart_series_set_trendline_line".}
proc chart_series_get_error_bars*(series: ptr lxw_chart_series;
                                  axis_type: lxw_chart_error_bar_axis): ptr lxw_series_error_bars {.
    cdecl, importc: "chart_series_get_error_bars".}
proc chart_series_set_error_bars*(error_bars: ptr lxw_series_error_bars;
                                  type_arg: uint8; value: cdouble): void {.
    cdecl, importc: "chart_series_set_error_bars".}
proc chart_series_set_error_bars_direction*(
    error_bars: ptr lxw_series_error_bars; direction: uint8): void {.cdecl,
    importc: "chart_series_set_error_bars_direction".}
proc chart_series_set_error_bars_endcap*(error_bars: ptr lxw_series_error_bars;
    endcap: uint8): void {.cdecl, importc: "chart_series_set_error_bars_endcap".}
proc chart_series_set_error_bars_line*(error_bars: ptr lxw_series_error_bars;
                                       line: ptr lxw_chart_line): void {.cdecl,
    importc: "chart_series_set_error_bars_line".}
proc chart_axis_get*(chart: ptr lxw_chart; axis_type: lxw_chart_axis_type): ptr lxw_chart_axis {.
    cdecl, importc: "chart_axis_get".}
proc chart_axis_set_name*(axis: ptr lxw_chart_axis; name: cstring): void {.
    cdecl, importc: "chart_axis_set_name".}
proc chart_axis_set_name_range*(axis: ptr lxw_chart_axis; sheetname: cstring;
                                row: lxw_row_t; col: lxw_col_t): void {.cdecl,
    importc: "chart_axis_set_name_range".}
proc chart_axis_set_name_font*(axis: ptr lxw_chart_axis;
                               font: ptr lxw_chart_font): void {.cdecl,
    importc: "chart_axis_set_name_font".}
proc chart_axis_set_num_font*(axis: ptr lxw_chart_axis; font: ptr lxw_chart_font): void {.
    cdecl, importc: "chart_axis_set_num_font".}
proc chart_axis_set_num_format*(axis: ptr lxw_chart_axis; num_format: cstring): void {.
    cdecl, importc: "chart_axis_set_num_format".}
proc chart_axis_set_line*(axis: ptr lxw_chart_axis; line: ptr lxw_chart_line): void {.
    cdecl, importc: "chart_axis_set_line".}
proc chart_axis_set_fill*(axis: ptr lxw_chart_axis; fill: ptr lxw_chart_fill): void {.
    cdecl, importc: "chart_axis_set_fill".}
proc chart_axis_set_pattern*(axis: ptr lxw_chart_axis;
                             pattern: ptr lxw_chart_pattern): void {.cdecl,
    importc: "chart_axis_set_pattern".}
proc chart_axis_set_reverse*(axis: ptr lxw_chart_axis): void {.cdecl,
    importc: "chart_axis_set_reverse".}
proc chart_axis_set_crossing*(axis: ptr lxw_chart_axis; value: cdouble): void {.
    cdecl, importc: "chart_axis_set_crossing".}
proc chart_axis_set_crossing_max*(axis: ptr lxw_chart_axis): void {.cdecl,
    importc: "chart_axis_set_crossing_max".}
proc chart_axis_set_crossing_min*(axis: ptr lxw_chart_axis): void {.cdecl,
    importc: "chart_axis_set_crossing_min".}
proc chart_axis_off*(axis: ptr lxw_chart_axis): void {.cdecl,
    importc: "chart_axis_off".}
proc chart_axis_set_position*(axis: ptr lxw_chart_axis; position: uint8): void {.
    cdecl, importc: "chart_axis_set_position".}
proc chart_axis_set_label_position*(axis: ptr lxw_chart_axis; position: uint8): void {.
    cdecl, importc: "chart_axis_set_label_position".}
proc chart_axis_set_label_align*(axis: ptr lxw_chart_axis; align: uint8): void {.
    cdecl, importc: "chart_axis_set_label_align".}
proc chart_axis_set_min*(axis: ptr lxw_chart_axis; min: cdouble): void {.cdecl,
    importc: "chart_axis_set_min".}
proc chart_axis_set_max*(axis: ptr lxw_chart_axis; max: cdouble): void {.cdecl,
    importc: "chart_axis_set_max".}
proc chart_axis_set_log_base*(axis: ptr lxw_chart_axis; log_base: uint16): void {.
    cdecl, importc: "chart_axis_set_log_base".}
proc chart_axis_set_major_tick_mark*(axis: ptr lxw_chart_axis; type_arg: uint8): void {.
    cdecl, importc: "chart_axis_set_major_tick_mark".}
proc chart_axis_set_minor_tick_mark*(axis: ptr lxw_chart_axis; type_arg: uint8): void {.
    cdecl, importc: "chart_axis_set_minor_tick_mark".}
proc chart_axis_set_interval_unit*(axis: ptr lxw_chart_axis; unit: uint16): void {.
    cdecl, importc: "chart_axis_set_interval_unit".}
proc chart_axis_set_interval_tick*(axis: ptr lxw_chart_axis; unit: uint16): void {.
    cdecl, importc: "chart_axis_set_interval_tick".}
proc chart_axis_set_major_unit*(axis: ptr lxw_chart_axis; unit: cdouble): void {.
    cdecl, importc: "chart_axis_set_major_unit".}
proc chart_axis_set_minor_unit*(axis: ptr lxw_chart_axis; unit: cdouble): void {.
    cdecl, importc: "chart_axis_set_minor_unit".}
proc chart_axis_set_display_units*(axis: ptr lxw_chart_axis; units: uint8): void {.
    cdecl, importc: "chart_axis_set_display_units".}
proc chart_axis_set_display_units_visible*(axis: ptr lxw_chart_axis;
    visible: uint8): void {.cdecl,
                            importc: "chart_axis_set_display_units_visible".}
proc chart_axis_major_gridlines_set_visible*(axis: ptr lxw_chart_axis;
    visible: uint8): void {.cdecl,
                            importc: "chart_axis_major_gridlines_set_visible".}
proc chart_axis_minor_gridlines_set_visible*(axis: ptr lxw_chart_axis;
    visible: uint8): void {.cdecl,
                            importc: "chart_axis_minor_gridlines_set_visible".}
proc chart_axis_major_gridlines_set_line*(axis: ptr lxw_chart_axis;
    line: ptr lxw_chart_line): void {.cdecl, importc: "chart_axis_major_gridlines_set_line".}
proc chart_axis_minor_gridlines_set_line*(axis: ptr lxw_chart_axis;
    line: ptr lxw_chart_line): void {.cdecl, importc: "chart_axis_minor_gridlines_set_line".}
proc chart_title_set_name*(chart: ptr lxw_chart; name: cstring): void {.cdecl,
    importc: "chart_title_set_name".}
proc chart_title_set_name_range*(chart: ptr lxw_chart; sheetname: cstring;
                                 row: lxw_row_t; col: lxw_col_t): void {.cdecl,
    importc: "chart_title_set_name_range".}
proc chart_title_set_name_font*(chart: ptr lxw_chart; font: ptr lxw_chart_font): void {.
    cdecl, importc: "chart_title_set_name_font".}
proc chart_title_off*(chart: ptr lxw_chart): void {.cdecl,
    importc: "chart_title_off".}
proc chart_legend_set_position*(chart: ptr lxw_chart; position: uint8): void {.
    cdecl, importc: "chart_legend_set_position".}
proc chart_legend_set_font*(chart: ptr lxw_chart; font: ptr lxw_chart_font): void {.
    cdecl, importc: "chart_legend_set_font".}
proc chart_legend_delete_series*(chart: ptr lxw_chart;
                                 delete_series: ptr UncheckedArray[int16]): lxw_error {.
    cdecl, importc: "chart_legend_delete_series".}
proc chart_chartarea_set_line*(chart: ptr lxw_chart; line: ptr lxw_chart_line): void {.
    cdecl, importc: "chart_chartarea_set_line".}
proc chart_chartarea_set_fill*(chart: ptr lxw_chart; fill: ptr lxw_chart_fill): void {.
    cdecl, importc: "chart_chartarea_set_fill".}
proc chart_chartarea_set_pattern*(chart: ptr lxw_chart;
                                  pattern: ptr lxw_chart_pattern): void {.cdecl,
    importc: "chart_chartarea_set_pattern".}
proc chart_plotarea_set_line*(chart: ptr lxw_chart; line: ptr lxw_chart_line): void {.
    cdecl, importc: "chart_plotarea_set_line".}
proc chart_plotarea_set_fill*(chart: ptr lxw_chart; fill: ptr lxw_chart_fill): void {.
    cdecl, importc: "chart_plotarea_set_fill".}
proc chart_plotarea_set_pattern*(chart: ptr lxw_chart;
                                 pattern: ptr lxw_chart_pattern): void {.cdecl,
    importc: "chart_plotarea_set_pattern".}
proc chart_set_style*(chart: ptr lxw_chart; style_id: uint8): void {.cdecl,
    importc: "chart_set_style".}
proc chart_set_table*(chart: ptr lxw_chart): void {.cdecl,
    importc: "chart_set_table".}
proc chart_set_table_grid*(chart: ptr lxw_chart; horizontal: uint8;
                           vertical: uint8; outline: uint8; legend_keys: uint8): void {.
    cdecl, importc: "chart_set_table_grid".}
proc chart_set_table_font*(chart: ptr lxw_chart; font: ptr lxw_chart_font): void {.
    cdecl, importc: "chart_set_table_font".}
proc chart_set_up_down_bars*(chart: ptr lxw_chart): void {.cdecl,
    importc: "chart_set_up_down_bars".}
proc chart_set_up_down_bars_format*(chart: ptr lxw_chart;
                                    up_bar_line: ptr lxw_chart_line;
                                    up_bar_fill: ptr lxw_chart_fill;
                                    down_bar_line: ptr lxw_chart_line;
                                    down_bar_fill: ptr lxw_chart_fill): void {.
    cdecl, importc: "chart_set_up_down_bars_format".}
proc chart_set_drop_lines*(chart: ptr lxw_chart; line: ptr lxw_chart_line): void {.
    cdecl, importc: "chart_set_drop_lines".}
proc chart_set_high_low_lines*(chart: ptr lxw_chart; line: ptr lxw_chart_line): void {.
    cdecl, importc: "chart_set_high_low_lines".}
proc chart_set_series_overlap*(chart: ptr lxw_chart; overlap: int8): void {.
    cdecl, importc: "chart_set_series_overlap".}
proc chart_set_series_gap*(chart: ptr lxw_chart; gap: uint16): void {.cdecl,
    importc: "chart_set_series_gap".}
proc chart_show_blanks_as*(chart: ptr lxw_chart; option: uint8): void {.cdecl,
    importc: "chart_show_blanks_as".}
proc chart_show_hidden_data*(chart: ptr lxw_chart): void {.cdecl,
    importc: "chart_show_hidden_data".}
proc chart_set_rotation*(chart: ptr lxw_chart; rotation: uint16): void {.cdecl,
    importc: "chart_set_rotation".}
proc chart_set_hole_size*(chart: ptr lxw_chart; size: uint8): void {.cdecl,
    importc: "chart_set_hole_size".}
proc lxw_chart_add_data_cache*(range: ptr lxw_series_range; data: ptr uint8;
                               rows: uint16; cols: uint8; col: uint8): lxw_error {.
    cdecl, importc: "lxw_chart_add_data_cache".}
proc lxw_drawing_new*(): ptr lxw_drawing {.cdecl, importc: "lxw_drawing_new".}
proc lxw_drawing_free*(drawing: ptr lxw_drawing): void {.cdecl,
    importc: "lxw_drawing_free".}
proc lxw_drawing_assemble_xml_file*(self: ptr lxw_drawing): void {.cdecl,
    importc: "lxw_drawing_assemble_xml_file".}
proc lxw_free_drawing_object*(drawing_object: ptr struct_lxw_drawing_object): void {.
    cdecl, importc: "lxw_free_drawing_object".}
proc lxw_add_drawing_object*(drawing: ptr lxw_drawing;
                             drawing_object: ptr lxw_drawing_object): void {.
    cdecl, importc: "lxw_add_drawing_object".}
proc compiler_ctype_b_loc*(): ptr ptr cushort {.cdecl, importc: "__ctype_b_loc".}
proc compiler_ctype_tolower_loc*(): ptr ptr compiler_int32_t {.cdecl,
    importc: "__ctype_tolower_loc".}
proc compiler_ctype_toupper_loc*(): ptr ptr compiler_int32_t {.cdecl,
    importc: "__ctype_toupper_loc".}
proc isalnum*(a0: cint): cint {.cdecl, importc: "isalnum".}
proc isalpha*(a0: cint): cint {.cdecl, importc: "isalpha".}
proc iscntrl*(a0: cint): cint {.cdecl, importc: "iscntrl".}
proc isdigit*(a0: cint): cint {.cdecl, importc: "isdigit".}
proc islower*(a0: cint): cint {.cdecl, importc: "islower".}
proc isgraph*(a0: cint): cint {.cdecl, importc: "isgraph".}
proc isprint*(a0: cint): cint {.cdecl, importc: "isprint".}
proc ispunct*(a0: cint): cint {.cdecl, importc: "ispunct".}
proc isspace*(a0: cint): cint {.cdecl, importc: "isspace".}
proc isupper*(a0: cint): cint {.cdecl, importc: "isupper".}
proc isxdigit*(a0: cint): cint {.cdecl, importc: "isxdigit".}
proc tolower*(compiler_c: cint): cint {.cdecl, importc: "tolower".}
proc toupper*(compiler_c: cint): cint {.cdecl, importc: "toupper".}
proc isblank*(a0: cint): cint {.cdecl, importc: "isblank".}
proc isascii*(compiler_c: cint): cint {.cdecl, importc: "isascii".}
proc toascii*(compiler_c: cint): cint {.cdecl, importc: "toascii".}
proc internal_toupper*(a0: cint): cint {.cdecl, importc: "_toupper".}
proc internal_tolower*(a0: cint): cint {.cdecl, importc: "_tolower".}
proc isalnum_l*(a0: cint; a1: locale_t): cint {.cdecl, importc: "isalnum_l".}
proc isalpha_l*(a0: cint; a1: locale_t): cint {.cdecl, importc: "isalpha_l".}
proc iscntrl_l*(a0: cint; a1: locale_t): cint {.cdecl, importc: "iscntrl_l".}
proc isdigit_l*(a0: cint; a1: locale_t): cint {.cdecl, importc: "isdigit_l".}
proc islower_l*(a0: cint; a1: locale_t): cint {.cdecl, importc: "islower_l".}
proc isgraph_l*(a0: cint; a1: locale_t): cint {.cdecl, importc: "isgraph_l".}
proc isprint_l*(a0: cint; a1: locale_t): cint {.cdecl, importc: "isprint_l".}
proc ispunct_l*(a0: cint; a1: locale_t): cint {.cdecl, importc: "ispunct_l".}
proc isspace_l*(a0: cint; a1: locale_t): cint {.cdecl, importc: "isspace_l".}
proc isupper_l*(a0: cint; a1: locale_t): cint {.cdecl, importc: "isupper_l".}
proc isxdigit_l*(a0: cint; a1: locale_t): cint {.cdecl, importc: "isxdigit_l".}
proc isblank_l*(a0: cint; a1: locale_t): cint {.cdecl, importc: "isblank_l".}
proc compiler_tolower_l*(compiler_c: cint; compiler_l: locale_t): cint {.cdecl,
    importc: "__tolower_l".}
proc tolower_l*(compiler_c: cint; compiler_l: locale_t): cint {.cdecl,
    importc: "tolower_l".}
proc compiler_toupper_l*(compiler_c: cint; compiler_l: locale_t): cint {.cdecl,
    importc: "__toupper_l".}
proc toupper_l*(compiler_c: cint; compiler_l: locale_t): cint {.cdecl,
    importc: "toupper_l".}
proc lxw_styles_new*(): ptr lxw_styles {.cdecl, importc: "lxw_styles_new".}
proc lxw_styles_free*(styles: ptr lxw_styles): void {.cdecl,
    importc: "lxw_styles_free".}
proc lxw_styles_assemble_xml_file*(self: ptr lxw_styles): void {.cdecl,
    importc: "lxw_styles_assemble_xml_file".}
proc lxw_styles_write_string_fragment*(self: ptr lxw_styles; string: cstring): void {.
    cdecl, importc: "lxw_styles_write_string_fragment".}
proc lxw_styles_write_rich_font*(styles: ptr lxw_styles; format: ptr lxw_format): void {.
    cdecl, importc: "lxw_styles_write_rich_font".}
proc lxw_new_attribute_str*(key: cstring; value: cstring): ptr struct_xml_attribute {.
    cdecl, importc: "lxw_new_attribute_str".}
proc lxw_new_attribute_int*(key: cstring; value: int32): ptr struct_xml_attribute {.
    cdecl, importc: "lxw_new_attribute_int".}
proc lxw_new_attribute_dbl*(key: cstring; value: cdouble): ptr struct_xml_attribute {.
    cdecl, importc: "lxw_new_attribute_dbl".}
proc lxw_xml_declaration*(xmlfile: ptr FILE): void {.cdecl,
    importc: "lxw_xml_declaration".}
proc lxw_xml_start_tag*(xmlfile: ptr FILE; tag: cstring;
                        attributes: ptr struct_xml_attribute_list): void {.
    cdecl, importc: "lxw_xml_start_tag".}
proc lxw_xml_start_tag_unencoded*(xmlfile: ptr FILE; tag: cstring;
                                  attributes: ptr struct_xml_attribute_list): void {.
    cdecl, importc: "lxw_xml_start_tag_unencoded".}
proc lxw_xml_end_tag*(xmlfile: ptr FILE; tag: cstring): void {.cdecl,
    importc: "lxw_xml_end_tag".}
proc lxw_xml_empty_tag*(xmlfile: ptr FILE; tag: cstring;
                        attributes: ptr struct_xml_attribute_list): void {.
    cdecl, importc: "lxw_xml_empty_tag".}
proc lxw_xml_empty_tag_unencoded*(xmlfile: ptr FILE; tag: cstring;
                                  attributes: ptr struct_xml_attribute_list): void {.
    cdecl, importc: "lxw_xml_empty_tag_unencoded".}
proc lxw_xml_data_element*(xmlfile: ptr FILE; tag: cstring; data: cstring;
                           attributes: ptr struct_xml_attribute_list): void {.
    cdecl, importc: "lxw_xml_data_element".}
proc lxw_xml_rich_si_element*(xmlfile: ptr FILE; string: cstring): void {.cdecl,
    importc: "lxw_xml_rich_si_element".}
proc lxw_has_control_characters*(string: cstring): uint8 {.cdecl,
    importc: "lxw_has_control_characters".}
proc lxw_escape_control_characters*(string: cstring): cstring {.cdecl,
    importc: "lxw_escape_control_characters".}
proc lxw_escape_url_characters*(string: cstring; escape_hash: uint8): cstring {.
    cdecl, importc: "lxw_escape_url_characters".}
proc lxw_escape_data*(data: cstring): cstring {.cdecl,
    importc: "lxw_escape_data".}
proc lxw_version*(): cstring {.cdecl, importc: "lxw_version".}
proc lxw_version_id*(): uint16 {.cdecl, importc: "lxw_version_id".}
proc lxw_strerror*(error_num: lxw_error): cstring {.cdecl,
    importc: "lxw_strerror".}
proc lxw_quote_sheetname*(str: cstring): cstring {.cdecl,
    importc: "lxw_quote_sheetname".}
proc lxw_col_to_name*(col_name: cstring; col_num: lxw_col_t; absolute: uint8): void {.
    cdecl, importc: "lxw_col_to_name".}
proc lxw_rowcol_to_cell*(cell_name: cstring; row: lxw_row_t; col: lxw_col_t): void {.
    cdecl, importc: "lxw_rowcol_to_cell".}
proc lxw_rowcol_to_cell_abs*(cell_name: cstring; row: lxw_row_t; col: lxw_col_t;
                             abs_row: uint8; abs_col: uint8): void {.cdecl,
    importc: "lxw_rowcol_to_cell_abs".}
proc lxw_rowcol_to_range*(range: cstring; first_row: lxw_row_t;
                          first_col: lxw_col_t; last_row: lxw_row_t;
                          last_col: lxw_col_t): void {.cdecl,
    importc: "lxw_rowcol_to_range".}
proc lxw_rowcol_to_range_abs*(range: cstring; first_row: lxw_row_t;
                              first_col: lxw_col_t; last_row: lxw_row_t;
                              last_col: lxw_col_t): void {.cdecl,
    importc: "lxw_rowcol_to_range_abs".}
proc lxw_rowcol_to_formula_abs*(formula: cstring; sheetname: cstring;
                                first_row: lxw_row_t; first_col: lxw_col_t;
                                last_row: lxw_row_t; last_col: lxw_col_t): void {.
    cdecl, importc: "lxw_rowcol_to_formula_abs".}
proc lxw_name_to_row*(row_str: cstring): uint32 {.cdecl,
    importc: "lxw_name_to_row".}
proc lxw_name_to_col*(col_str: cstring): uint16 {.cdecl,
    importc: "lxw_name_to_col".}
proc lxw_name_to_row_2*(row_str: cstring): uint32 {.cdecl,
    importc: "lxw_name_to_row_2".}
proc lxw_name_to_col_2*(col_str: cstring): uint16 {.cdecl,
    importc: "lxw_name_to_col_2".}
proc lxw_datetime_to_excel_datetime*(datetime: ptr lxw_datetime): cdouble {.
    cdecl, importc: "lxw_datetime_to_excel_datetime".}
proc lxw_datetime_to_excel_date_epoch*(datetime: ptr lxw_datetime;
                                       date_1904: uint8): cdouble {.cdecl,
    importc: "lxw_datetime_to_excel_date_epoch".}
proc lxw_unixtime_to_excel_date*(unixtime: int64): cdouble {.cdecl,
    importc: "lxw_unixtime_to_excel_date".}
proc lxw_unixtime_to_excel_date_epoch*(unixtime: int64; date_1904: uint8): cdouble {.
    cdecl, importc: "lxw_unixtime_to_excel_date_epoch".}
proc lxw_strdup*(str: cstring): cstring {.cdecl, importc: "lxw_strdup".}
proc lxw_strdup_formula*(formula: cstring): cstring {.cdecl,
    importc: "lxw_strdup_formula".}
proc lxw_utf8_strlen*(str: cstring): csize_t {.cdecl, importc: "lxw_utf8_strlen".}
proc lxw_str_tolower*(str: cstring): void {.cdecl, importc: "lxw_str_tolower".}
proc lxw_str_is_empty*(str: cstring): uint8 {.cdecl, importc: "lxw_str_is_empty".}
proc lxw_tmpfile*(tmpdir: cstring): ptr FILE {.cdecl, importc: "lxw_tmpfile".}
proc lxw_get_filehandle*(buf: ptr cstring; size: ptr csize_t; tmpdir: cstring): ptr FILE {.
    cdecl, importc: "lxw_get_filehandle".}
proc lxw_fopen*(filename: cstring; mode: cstring): ptr FILE {.cdecl,
    importc: "lxw_fopen".}
proc lxw_hash_password*(password: cstring): uint16 {.cdecl,
    importc: "lxw_hash_password".}
proc lxw_relationships_new*(): ptr lxw_relationships {.cdecl,
    importc: "lxw_relationships_new".}
proc lxw_free_relationships*(relationships: ptr lxw_relationships): void {.
    cdecl, importc: "lxw_free_relationships".}
proc lxw_relationships_assemble_xml_file*(self: ptr lxw_relationships): void {.
    cdecl, importc: "lxw_relationships_assemble_xml_file".}
proc lxw_add_document_relationship*(self: ptr lxw_relationships;
                                    type_arg: cstring; target: cstring): void {.
    cdecl, importc: "lxw_add_document_relationship".}
proc lxw_add_package_relationship*(self: ptr lxw_relationships;
                                   type_arg: cstring; target: cstring): void {.
    cdecl, importc: "lxw_add_package_relationship".}
proc lxw_add_ms_package_relationship*(self: ptr lxw_relationships;
                                      type_arg: cstring; target: cstring): void {.
    cdecl, importc: "lxw_add_ms_package_relationship".}
proc lxw_add_worksheet_relationship*(self: ptr lxw_relationships;
                                     type_arg: cstring; target: cstring;
                                     target_mode: cstring): void {.cdecl,
    importc: "lxw_add_worksheet_relationship".}
proc lxw_add_rich_value_relationship*(self: ptr lxw_relationships): void {.
    cdecl, importc: "lxw_add_rich_value_relationship".}
proc worksheet_write_number*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                             col: lxw_col_t; number: cdouble;
                             format: ptr lxw_format): lxw_error {.cdecl,
    importc: "worksheet_write_number".}
proc worksheet_write_string*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                             col: lxw_col_t; string: cstring;
                             format: ptr lxw_format): lxw_error {.cdecl,
    importc: "worksheet_write_string".}
proc worksheet_write_formula*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                              col: lxw_col_t; formula: cstring;
                              format: ptr lxw_format): lxw_error {.cdecl,
    importc: "worksheet_write_formula".}
proc worksheet_write_array_formula*(worksheet: ptr lxw_worksheet;
                                    first_row: lxw_row_t; first_col: lxw_col_t;
                                    last_row: lxw_row_t; last_col: lxw_col_t;
                                    formula: cstring; format: ptr lxw_format): lxw_error {.
    cdecl, importc: "worksheet_write_array_formula".}
proc worksheet_write_dynamic_array_formula*(worksheet: ptr lxw_worksheet;
    first_row: lxw_row_t; first_col: lxw_col_t; last_row: lxw_row_t;
    last_col: lxw_col_t; formula: cstring; format: ptr lxw_format): lxw_error {.
    cdecl, importc: "worksheet_write_dynamic_array_formula".}
proc worksheet_write_dynamic_formula*(worksheet: ptr lxw_worksheet;
                                      row: lxw_row_t; col: lxw_col_t;
                                      formula: cstring; format: ptr lxw_format): lxw_error {.
    cdecl, importc: "worksheet_write_dynamic_formula".}
proc worksheet_write_array_formula_num*(worksheet: ptr lxw_worksheet;
                                        first_row: lxw_row_t;
                                        first_col: lxw_col_t;
                                        last_row: lxw_row_t;
                                        last_col: lxw_col_t; formula: cstring;
                                        format: ptr lxw_format; result: cdouble): lxw_error {.
    cdecl, importc: "worksheet_write_array_formula_num".}
proc worksheet_write_dynamic_array_formula_num*(worksheet: ptr lxw_worksheet;
    first_row: lxw_row_t; first_col: lxw_col_t; last_row: lxw_row_t;
    last_col: lxw_col_t; formula: cstring; format: ptr lxw_format;
    result: cdouble): lxw_error {.cdecl, importc: "worksheet_write_dynamic_array_formula_num".}
proc worksheet_write_dynamic_formula_num*(worksheet: ptr lxw_worksheet;
    row: lxw_row_t; col: lxw_col_t; formula: cstring; format: ptr lxw_format;
    result: cdouble): lxw_error {.cdecl, importc: "worksheet_write_dynamic_formula_num".}
proc worksheet_write_datetime*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                               col: lxw_col_t; datetime: ptr lxw_datetime;
                               format: ptr lxw_format): lxw_error {.cdecl,
    importc: "worksheet_write_datetime".}
proc worksheet_write_unixtime*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                               col: lxw_col_t; unixtime: int64;
                               format: ptr lxw_format): lxw_error {.cdecl,
    importc: "worksheet_write_unixtime".}
proc worksheet_write_url*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                          col: lxw_col_t; url: cstring; format: ptr lxw_format): lxw_error {.
    cdecl, importc: "worksheet_write_url".}
proc worksheet_write_url_opt*(worksheet: ptr lxw_worksheet; row_num: lxw_row_t;
                              col_num: lxw_col_t; url: cstring;
                              format: ptr lxw_format; string: cstring;
                              tooltip: cstring): lxw_error {.cdecl,
    importc: "worksheet_write_url_opt".}
proc worksheet_write_boolean*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                              col: lxw_col_t; value: cint;
                              format: ptr lxw_format): lxw_error {.cdecl,
    importc: "worksheet_write_boolean".}
proc worksheet_write_blank*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                            col: lxw_col_t; format: ptr lxw_format): lxw_error {.
    cdecl, importc: "worksheet_write_blank".}
proc worksheet_write_formula_num*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                  col: lxw_col_t; formula: cstring;
                                  format: ptr lxw_format; result: cdouble): lxw_error {.
    cdecl, importc: "worksheet_write_formula_num".}
proc worksheet_write_formula_str*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                  col: lxw_col_t; formula: cstring;
                                  format: ptr lxw_format; result: cstring): lxw_error {.
    cdecl, importc: "worksheet_write_formula_str".}
proc worksheet_write_rich_string*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                  col: lxw_col_t; rich_string: ptr UncheckedArray[
    ptr lxw_rich_string_tuple]; format: ptr lxw_format): lxw_error {.cdecl,
    importc: "worksheet_write_rich_string".}
proc worksheet_write_comment*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                              col: lxw_col_t; string: cstring): lxw_error {.
    cdecl, importc: "worksheet_write_comment".}
proc worksheet_write_comment_opt*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                  col: lxw_col_t; string: cstring;
                                  options: ptr lxw_comment_options): lxw_error {.
    cdecl, importc: "worksheet_write_comment_opt".}
proc worksheet_set_row*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                        height: cdouble; format: ptr lxw_format): lxw_error {.
    cdecl, importc: "worksheet_set_row".}
proc worksheet_set_row_opt*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                            height: cdouble; format: ptr lxw_format;
                            options: ptr lxw_row_col_options): lxw_error {.
    cdecl, importc: "worksheet_set_row_opt".}
proc worksheet_set_row_pixels*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                               pixels: uint32; format: ptr lxw_format): lxw_error {.
    cdecl, importc: "worksheet_set_row_pixels".}
proc worksheet_set_row_pixels_opt*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                   pixels: uint32; format: ptr lxw_format;
                                   options: ptr lxw_row_col_options): lxw_error {.
    cdecl, importc: "worksheet_set_row_pixels_opt".}
proc worksheet_set_column*(worksheet: ptr lxw_worksheet; first_col: lxw_col_t;
                           last_col: lxw_col_t; width: cdouble;
                           format: ptr lxw_format): lxw_error {.cdecl,
    importc: "worksheet_set_column".}
proc worksheet_set_column_opt*(worksheet: ptr lxw_worksheet;
                               first_col: lxw_col_t; last_col: lxw_col_t;
                               width: cdouble; format: ptr lxw_format;
                               options: ptr lxw_row_col_options): lxw_error {.
    cdecl, importc: "worksheet_set_column_opt".}
proc worksheet_set_column_pixels*(worksheet: ptr lxw_worksheet;
                                  first_col: lxw_col_t; last_col: lxw_col_t;
                                  pixels: uint32; format: ptr lxw_format): lxw_error {.
    cdecl, importc: "worksheet_set_column_pixels".}
proc worksheet_set_column_pixels_opt*(worksheet: ptr lxw_worksheet;
                                      first_col: lxw_col_t; last_col: lxw_col_t;
                                      pixels: uint32; format: ptr lxw_format;
                                      options: ptr lxw_row_col_options): lxw_error {.
    cdecl, importc: "worksheet_set_column_pixels_opt".}
proc worksheet_insert_image*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                             col: lxw_col_t; filename: cstring): lxw_error {.
    cdecl, importc: "worksheet_insert_image".}
proc worksheet_insert_image_opt*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                 col: lxw_col_t; filename: cstring;
                                 options: ptr lxw_image_options): lxw_error {.
    cdecl, importc: "worksheet_insert_image_opt".}
proc worksheet_insert_image_buffer*(worksheet: ptr lxw_worksheet;
                                    row: lxw_row_t; col: lxw_col_t;
                                    image_buffer: ptr uint8; image_size: csize_t): lxw_error {.
    cdecl, importc: "worksheet_insert_image_buffer".}
proc worksheet_insert_image_buffer_opt*(worksheet: ptr lxw_worksheet;
                                        row: lxw_row_t; col: lxw_col_t;
                                        image_buffer: ptr uint8;
                                        image_size: csize_t;
                                        options: ptr lxw_image_options): lxw_error {.
    cdecl, importc: "worksheet_insert_image_buffer_opt".}
proc worksheet_embed_image*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                            col: lxw_col_t; filename: cstring): lxw_error {.
    cdecl, importc: "worksheet_embed_image".}
proc worksheet_embed_image_opt*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                col: lxw_col_t; filename: cstring;
                                options: ptr lxw_image_options): lxw_error {.
    cdecl, importc: "worksheet_embed_image_opt".}
proc worksheet_embed_image_buffer*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                   col: lxw_col_t; image_buffer: ptr uint8;
                                   image_size: csize_t): lxw_error {.cdecl,
    importc: "worksheet_embed_image_buffer".}
proc worksheet_embed_image_buffer_opt*(worksheet: ptr lxw_worksheet;
                                       row: lxw_row_t; col: lxw_col_t;
                                       image_buffer: ptr uint8;
                                       image_size: csize_t;
                                       options: ptr lxw_image_options): lxw_error {.
    cdecl, importc: "worksheet_embed_image_buffer_opt".}
proc worksheet_set_background*(worksheet: ptr lxw_worksheet; filename: cstring): lxw_error {.
    cdecl, importc: "worksheet_set_background".}
proc worksheet_set_background_buffer*(worksheet: ptr lxw_worksheet;
                                      image_buffer: ptr uint8;
                                      image_size: csize_t): lxw_error {.cdecl,
    importc: "worksheet_set_background_buffer".}
proc worksheet_insert_chart*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                             col: lxw_col_t; chart: ptr lxw_chart): lxw_error {.
    cdecl, importc: "worksheet_insert_chart".}
proc worksheet_insert_chart_opt*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                 col: lxw_col_t; chart: ptr lxw_chart;
                                 user_options: ptr lxw_chart_options): lxw_error {.
    cdecl, importc: "worksheet_insert_chart_opt".}
proc worksheet_merge_range*(worksheet: ptr lxw_worksheet; first_row: lxw_row_t;
                            first_col: lxw_col_t; last_row: lxw_row_t;
                            last_col: lxw_col_t; string: cstring;
                            format: ptr lxw_format): lxw_error {.cdecl,
    importc: "worksheet_merge_range".}
proc worksheet_autofilter*(worksheet: ptr lxw_worksheet; first_row: lxw_row_t;
                           first_col: lxw_col_t; last_row: lxw_row_t;
                           last_col: lxw_col_t): lxw_error {.cdecl,
    importc: "worksheet_autofilter".}
proc worksheet_filter_column*(worksheet: ptr lxw_worksheet; col: lxw_col_t;
                              rule: ptr lxw_filter_rule): lxw_error {.cdecl,
    importc: "worksheet_filter_column".}
proc worksheet_filter_column2*(worksheet: ptr lxw_worksheet; col: lxw_col_t;
                               rule1: ptr lxw_filter_rule;
                               rule2: ptr lxw_filter_rule; and_or: uint8): lxw_error {.
    cdecl, importc: "worksheet_filter_column2".}
proc worksheet_filter_list*(worksheet: ptr lxw_worksheet; col: lxw_col_t;
                            list: ptr cstring): lxw_error {.cdecl,
    importc: "worksheet_filter_list".}
proc worksheet_data_validation_cell*(worksheet: ptr lxw_worksheet;
                                     row: lxw_row_t; col: lxw_col_t;
                                     validation: ptr lxw_data_validation): lxw_error {.
    cdecl, importc: "worksheet_data_validation_cell".}
proc worksheet_data_validation_range*(worksheet: ptr lxw_worksheet;
                                      first_row: lxw_row_t;
                                      first_col: lxw_col_t; last_row: lxw_row_t;
                                      last_col: lxw_col_t;
                                      validation: ptr lxw_data_validation): lxw_error {.
    cdecl, importc: "worksheet_data_validation_range".}
proc worksheet_conditional_format_cell*(worksheet: ptr lxw_worksheet;
                                        row: lxw_row_t; col: lxw_col_t;
    conditional_format: ptr lxw_conditional_format): lxw_error {.cdecl,
    importc: "worksheet_conditional_format_cell".}
proc worksheet_conditional_format_range*(worksheet: ptr lxw_worksheet;
    first_row: lxw_row_t; first_col: lxw_col_t; last_row: lxw_row_t;
    last_col: lxw_col_t; conditional_format: ptr lxw_conditional_format): lxw_error {.
    cdecl, importc: "worksheet_conditional_format_range".}
proc worksheet_insert_button*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                              col: lxw_col_t; options: ptr lxw_button_options): lxw_error {.
    cdecl, importc: "worksheet_insert_button".}
proc worksheet_add_table*(worksheet: ptr lxw_worksheet; first_row: lxw_row_t;
                          first_col: lxw_col_t; last_row: lxw_row_t;
                          last_col: lxw_col_t; options: ptr lxw_table_options): lxw_error {.
    cdecl, importc: "worksheet_add_table".}
proc worksheet_activate*(worksheet: ptr lxw_worksheet): void {.cdecl,
    importc: "worksheet_activate".}
proc worksheet_select*(worksheet: ptr lxw_worksheet): void {.cdecl,
    importc: "worksheet_select".}
proc worksheet_hide*(worksheet: ptr lxw_worksheet): void {.cdecl,
    importc: "worksheet_hide".}
proc worksheet_set_first_sheet*(worksheet: ptr lxw_worksheet): void {.cdecl,
    importc: "worksheet_set_first_sheet".}
proc worksheet_freeze_panes*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                             col: lxw_col_t): void {.cdecl,
    importc: "worksheet_freeze_panes".}
proc worksheet_split_panes*(worksheet: ptr lxw_worksheet; vertical: cdouble;
                            horizontal: cdouble): void {.cdecl,
    importc: "worksheet_split_panes".}
proc worksheet_freeze_panes_opt*(worksheet: ptr lxw_worksheet;
                                 first_row: lxw_row_t; first_col: lxw_col_t;
                                 top_row: lxw_row_t; left_col: lxw_col_t;
                                 type_arg: uint8): void {.cdecl,
    importc: "worksheet_freeze_panes_opt".}
proc worksheet_split_panes_opt*(worksheet: ptr lxw_worksheet; vertical: cdouble;
                                horizontal: cdouble; top_row: lxw_row_t;
                                left_col: lxw_col_t): void {.cdecl,
    importc: "worksheet_split_panes_opt".}
proc worksheet_set_selection*(worksheet: ptr lxw_worksheet;
                              first_row: lxw_row_t; first_col: lxw_col_t;
                              last_row: lxw_row_t; last_col: lxw_col_t): lxw_error {.
    cdecl, importc: "worksheet_set_selection".}
proc worksheet_set_top_left_cell*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                  col: lxw_col_t): void {.cdecl,
    importc: "worksheet_set_top_left_cell".}
proc worksheet_set_landscape*(worksheet: ptr lxw_worksheet): void {.cdecl,
    importc: "worksheet_set_landscape".}
proc worksheet_set_portrait*(worksheet: ptr lxw_worksheet): void {.cdecl,
    importc: "worksheet_set_portrait".}
proc worksheet_set_page_view*(worksheet: ptr lxw_worksheet): void {.cdecl,
    importc: "worksheet_set_page_view".}
proc worksheet_set_paper*(worksheet: ptr lxw_worksheet; paper_type: uint8): void {.
    cdecl, importc: "worksheet_set_paper".}
proc worksheet_set_margins*(worksheet: ptr lxw_worksheet; left: cdouble;
                            right: cdouble; top: cdouble; bottom: cdouble): void {.
    cdecl, importc: "worksheet_set_margins".}
proc worksheet_set_header*(worksheet: ptr lxw_worksheet; string: cstring): lxw_error {.
    cdecl, importc: "worksheet_set_header".}
proc worksheet_set_footer*(worksheet: ptr lxw_worksheet; string: cstring): lxw_error {.
    cdecl, importc: "worksheet_set_footer".}
proc worksheet_set_header_opt*(worksheet: ptr lxw_worksheet; string: cstring;
                               options: ptr lxw_header_footer_options): lxw_error {.
    cdecl, importc: "worksheet_set_header_opt".}
proc worksheet_set_footer_opt*(worksheet: ptr lxw_worksheet; string: cstring;
                               options: ptr lxw_header_footer_options): lxw_error {.
    cdecl, importc: "worksheet_set_footer_opt".}
proc worksheet_set_h_pagebreaks*(worksheet: ptr lxw_worksheet;
                                 breaks: ptr UncheckedArray[lxw_row_t]): lxw_error {.
    cdecl, importc: "worksheet_set_h_pagebreaks".}
proc worksheet_set_v_pagebreaks*(worksheet: ptr lxw_worksheet;
                                 breaks: ptr UncheckedArray[lxw_col_t]): lxw_error {.
    cdecl, importc: "worksheet_set_v_pagebreaks".}
proc worksheet_print_across*(worksheet: ptr lxw_worksheet): void {.cdecl,
    importc: "worksheet_print_across".}
proc worksheet_set_zoom*(worksheet: ptr lxw_worksheet; scale: uint16): void {.
    cdecl, importc: "worksheet_set_zoom".}
proc worksheet_gridlines*(worksheet: ptr lxw_worksheet; option: uint8): void {.
    cdecl, importc: "worksheet_gridlines".}
proc worksheet_center_horizontally*(worksheet: ptr lxw_worksheet): void {.cdecl,
    importc: "worksheet_center_horizontally".}
proc worksheet_center_vertically*(worksheet: ptr lxw_worksheet): void {.cdecl,
    importc: "worksheet_center_vertically".}
proc worksheet_print_row_col_headers*(worksheet: ptr lxw_worksheet): void {.
    cdecl, importc: "worksheet_print_row_col_headers".}
proc worksheet_repeat_rows*(worksheet: ptr lxw_worksheet; first_row: lxw_row_t;
                            last_row: lxw_row_t): lxw_error {.cdecl,
    importc: "worksheet_repeat_rows".}
proc worksheet_repeat_columns*(worksheet: ptr lxw_worksheet;
                               first_col: lxw_col_t; last_col: lxw_col_t): lxw_error {.
    cdecl, importc: "worksheet_repeat_columns".}
proc worksheet_print_area*(worksheet: ptr lxw_worksheet; first_row: lxw_row_t;
                           first_col: lxw_col_t; last_row: lxw_row_t;
                           last_col: lxw_col_t): lxw_error {.cdecl,
    importc: "worksheet_print_area".}
proc worksheet_fit_to_pages*(worksheet: ptr lxw_worksheet; width: uint16;
                             height: uint16): void {.cdecl,
    importc: "worksheet_fit_to_pages".}
proc worksheet_set_start_page*(worksheet: ptr lxw_worksheet; start_page: uint16): void {.
    cdecl, importc: "worksheet_set_start_page".}
proc worksheet_set_print_scale*(worksheet: ptr lxw_worksheet; scale: uint16): void {.
    cdecl, importc: "worksheet_set_print_scale".}
proc worksheet_print_black_and_white*(worksheet: ptr lxw_worksheet): void {.
    cdecl, importc: "worksheet_print_black_and_white".}
proc worksheet_right_to_left*(worksheet: ptr lxw_worksheet): void {.cdecl,
    importc: "worksheet_right_to_left".}
proc worksheet_hide_zero*(worksheet: ptr lxw_worksheet): void {.cdecl,
    importc: "worksheet_hide_zero".}
proc worksheet_set_tab_color*(worksheet: ptr lxw_worksheet; color: lxw_color_t): void {.
    cdecl, importc: "worksheet_set_tab_color".}
proc worksheet_protect*(worksheet: ptr lxw_worksheet; password: cstring;
                        options: ptr lxw_protection): void {.cdecl,
    importc: "worksheet_protect".}
proc worksheet_outline_settings*(worksheet: ptr lxw_worksheet; visible: uint8;
                                 symbols_below: uint8; symbols_right: uint8;
                                 auto_style: uint8): void {.cdecl,
    importc: "worksheet_outline_settings".}
proc worksheet_set_default_row*(worksheet: ptr lxw_worksheet; height: cdouble;
                                hide_unused_rows: uint8): void {.cdecl,
    importc: "worksheet_set_default_row".}
proc worksheet_set_vba_name*(worksheet: ptr lxw_worksheet; name: cstring): lxw_error {.
    cdecl, importc: "worksheet_set_vba_name".}
proc worksheet_show_comments*(worksheet: ptr lxw_worksheet): void {.cdecl,
    importc: "worksheet_show_comments".}
proc worksheet_set_comments_author*(worksheet: ptr lxw_worksheet;
                                    author: cstring): void {.cdecl,
    importc: "worksheet_set_comments_author".}
proc worksheet_ignore_errors*(worksheet: ptr lxw_worksheet; type_arg: uint8;
                              range: cstring): lxw_error {.cdecl,
    importc: "worksheet_ignore_errors".}
proc lxw_worksheet_new*(init_data: ptr lxw_worksheet_init_data): ptr lxw_worksheet {.
    cdecl, importc: "lxw_worksheet_new".}
proc lxw_worksheet_free*(worksheet: ptr lxw_worksheet): void {.cdecl,
    importc: "lxw_worksheet_free".}
proc lxw_worksheet_assemble_xml_file*(worksheet: ptr lxw_worksheet): void {.
    cdecl, importc: "lxw_worksheet_assemble_xml_file".}
proc lxw_worksheet_write_single_row*(worksheet: ptr lxw_worksheet): void {.
    cdecl, importc: "lxw_worksheet_write_single_row".}
proc lxw_worksheet_prepare_image*(worksheet: ptr lxw_worksheet;
                                  image_ref_id: uint32; drawing_id: uint32;
                                  object_props: ptr lxw_object_properties): void {.
    cdecl, importc: "lxw_worksheet_prepare_image".}
proc lxw_worksheet_prepare_header_image*(worksheet: ptr lxw_worksheet;
    image_ref_id: uint32; object_props: ptr lxw_object_properties): void {.
    cdecl, importc: "lxw_worksheet_prepare_header_image".}
proc lxw_worksheet_prepare_background*(worksheet: ptr lxw_worksheet;
                                       image_ref_id: uint32;
                                       object_props: ptr lxw_object_properties): void {.
    cdecl, importc: "lxw_worksheet_prepare_background".}
proc lxw_worksheet_prepare_chart*(worksheet: ptr lxw_worksheet;
                                  chart_ref_id: uint32; drawing_id: uint32;
                                  object_props: ptr lxw_object_properties;
                                  is_chartsheet: uint8): void {.cdecl,
    importc: "lxw_worksheet_prepare_chart".}
proc lxw_worksheet_prepare_vml_objects*(worksheet: ptr lxw_worksheet;
                                        vml_data_id: uint32;
                                        vml_shape_id: uint32;
                                        vml_drawing_id: uint32;
                                        comment_id: uint32): uint32 {.cdecl,
    importc: "lxw_worksheet_prepare_vml_objects".}
proc lxw_worksheet_prepare_header_vml_objects*(worksheet: ptr lxw_worksheet;
    vml_header_id: uint32; vml_drawing_id: uint32): void {.cdecl,
    importc: "lxw_worksheet_prepare_header_vml_objects".}
proc lxw_worksheet_prepare_tables*(worksheet: ptr lxw_worksheet;
                                   table_id: uint32): void {.cdecl,
    importc: "lxw_worksheet_prepare_tables".}
proc lxw_worksheet_find_row*(worksheet: ptr lxw_worksheet; row_num: lxw_row_t): ptr lxw_row {.
    cdecl, importc: "lxw_worksheet_find_row".}
proc lxw_worksheet_find_cell_in_row*(row: ptr lxw_row; col_num: lxw_col_t): ptr lxw_cell {.
    cdecl, importc: "lxw_worksheet_find_cell_in_row".}
proc lxw_worksheet_write_sheet_views*(worksheet: ptr lxw_worksheet): void {.
    cdecl, importc: "lxw_worksheet_write_sheet_views".}
proc lxw_worksheet_write_page_margins*(worksheet: ptr lxw_worksheet): void {.
    cdecl, importc: "lxw_worksheet_write_page_margins".}
proc lxw_worksheet_write_drawings*(worksheet: ptr lxw_worksheet): void {.cdecl,
    importc: "lxw_worksheet_write_drawings".}
proc lxw_worksheet_write_sheet_protection*(worksheet: ptr lxw_worksheet;
    protect: ptr lxw_protection_obj): void {.cdecl,
    importc: "lxw_worksheet_write_sheet_protection".}
proc lxw_worksheet_write_sheet_pr*(worksheet: ptr lxw_worksheet): void {.cdecl,
    importc: "lxw_worksheet_write_sheet_pr".}
proc lxw_worksheet_write_page_setup*(worksheet: ptr lxw_worksheet): void {.
    cdecl, importc: "lxw_worksheet_write_page_setup".}
proc lxw_worksheet_write_header_footer*(worksheet: ptr lxw_worksheet): void {.
    cdecl, importc: "lxw_worksheet_write_header_footer".}
proc worksheet_set_error_cell*(worksheet: ptr lxw_worksheet;
                               object_props: ptr lxw_object_properties;
                               ref_id: uint32): void {.cdecl,
    importc: "worksheet_set_error_cell".}
proc chartsheet_set_chart*(chartsheet: ptr lxw_chartsheet; chart: ptr lxw_chart): lxw_error {.
    cdecl, importc: "chartsheet_set_chart".}
proc chartsheet_set_chart_opt*(chartsheet: ptr lxw_chartsheet;
                               chart: ptr lxw_chart;
                               user_options: ptr lxw_chart_options): lxw_error {.
    cdecl, importc: "chartsheet_set_chart_opt".}
proc chartsheet_activate*(chartsheet: ptr lxw_chartsheet): void {.cdecl,
    importc: "chartsheet_activate".}
proc chartsheet_select*(chartsheet: ptr lxw_chartsheet): void {.cdecl,
    importc: "chartsheet_select".}
proc chartsheet_hide*(chartsheet: ptr lxw_chartsheet): void {.cdecl,
    importc: "chartsheet_hide".}
proc chartsheet_set_first_sheet*(chartsheet: ptr lxw_chartsheet): void {.cdecl,
    importc: "chartsheet_set_first_sheet".}
proc chartsheet_set_tab_color*(chartsheet: ptr lxw_chartsheet;
                               color: lxw_color_t): void {.cdecl,
    importc: "chartsheet_set_tab_color".}
proc chartsheet_protect*(chartsheet: ptr lxw_chartsheet; password: cstring;
                         options: ptr lxw_protection): void {.cdecl,
    importc: "chartsheet_protect".}
proc chartsheet_set_zoom*(chartsheet: ptr lxw_chartsheet; scale: uint16): void {.
    cdecl, importc: "chartsheet_set_zoom".}
proc chartsheet_set_landscape*(chartsheet: ptr lxw_chartsheet): void {.cdecl,
    importc: "chartsheet_set_landscape".}
proc chartsheet_set_portrait*(chartsheet: ptr lxw_chartsheet): void {.cdecl,
    importc: "chartsheet_set_portrait".}
proc chartsheet_set_paper*(chartsheet: ptr lxw_chartsheet; paper_type: uint8): void {.
    cdecl, importc: "chartsheet_set_paper".}
proc chartsheet_set_margins*(chartsheet: ptr lxw_chartsheet; left: cdouble;
                             right: cdouble; top: cdouble; bottom: cdouble): void {.
    cdecl, importc: "chartsheet_set_margins".}
proc chartsheet_set_header*(chartsheet: ptr lxw_chartsheet; string: cstring): lxw_error {.
    cdecl, importc: "chartsheet_set_header".}
proc chartsheet_set_footer*(chartsheet: ptr lxw_chartsheet; string: cstring): lxw_error {.
    cdecl, importc: "chartsheet_set_footer".}
proc chartsheet_set_header_opt*(chartsheet: ptr lxw_chartsheet; string: cstring;
                                options: ptr lxw_header_footer_options): lxw_error {.
    cdecl, importc: "chartsheet_set_header_opt".}
proc chartsheet_set_footer_opt*(chartsheet: ptr lxw_chartsheet; string: cstring;
                                options: ptr lxw_header_footer_options): lxw_error {.
    cdecl, importc: "chartsheet_set_footer_opt".}
proc lxw_chartsheet_new*(init_data: ptr lxw_worksheet_init_data): ptr lxw_chartsheet {.
    cdecl, importc: "lxw_chartsheet_new".}
proc lxw_chartsheet_free*(chartsheet: ptr lxw_chartsheet): void {.cdecl,
    importc: "lxw_chartsheet_free".}
proc lxw_chartsheet_assemble_xml_file*(chartsheet: ptr lxw_chartsheet): void {.
    cdecl, importc: "lxw_chartsheet_assemble_xml_file".}
proc workbook_new*(filename: cstring): ptr lxw_workbook {.cdecl,
    importc: "workbook_new".}
proc workbook_new_opt*(filename: cstring; options: ptr lxw_workbook_options): ptr lxw_workbook {.
    cdecl, importc: "workbook_new_opt".}
proc workbook_add_worksheet*(workbook: ptr lxw_workbook; sheetname: cstring): ptr lxw_worksheet {.
    cdecl, importc: "workbook_add_worksheet".}
proc workbook_add_chartsheet*(workbook: ptr lxw_workbook; sheetname: cstring): ptr lxw_chartsheet {.
    cdecl, importc: "workbook_add_chartsheet".}
proc workbook_add_format*(workbook: ptr lxw_workbook): ptr lxw_format {.cdecl,
    importc: "workbook_add_format".}
proc workbook_add_chart*(workbook: ptr lxw_workbook; chart_type: uint8): ptr lxw_chart {.
    cdecl, importc: "workbook_add_chart".}
proc workbook_close*(workbook: ptr lxw_workbook): lxw_error {.cdecl,
    importc: "workbook_close".}
proc workbook_set_properties*(workbook: ptr lxw_workbook;
                              properties: ptr lxw_doc_properties): lxw_error {.
    cdecl, importc: "workbook_set_properties".}
proc workbook_set_custom_property_string*(workbook: ptr lxw_workbook;
    name: cstring; value: cstring): lxw_error {.cdecl,
    importc: "workbook_set_custom_property_string".}
proc workbook_set_custom_property_number*(workbook: ptr lxw_workbook;
    name: cstring; value: cdouble): lxw_error {.cdecl,
    importc: "workbook_set_custom_property_number".}
proc workbook_set_custom_property_integer*(workbook: ptr lxw_workbook;
    name: cstring; value: int32): lxw_error {.cdecl,
    importc: "workbook_set_custom_property_integer".}
proc workbook_set_custom_property_boolean*(workbook: ptr lxw_workbook;
    name: cstring; value: uint8): lxw_error {.cdecl,
    importc: "workbook_set_custom_property_boolean".}
proc workbook_set_custom_property_datetime*(workbook: ptr lxw_workbook;
    name: cstring; datetime: ptr lxw_datetime): lxw_error {.cdecl,
    importc: "workbook_set_custom_property_datetime".}
proc workbook_define_name*(workbook: ptr lxw_workbook; name: cstring;
                           formula: cstring): lxw_error {.cdecl,
    importc: "workbook_define_name".}
proc workbook_get_default_url_format*(workbook: ptr lxw_workbook): ptr lxw_format {.
    cdecl, importc: "workbook_get_default_url_format".}
proc workbook_get_worksheet_by_name*(workbook: ptr lxw_workbook; name: cstring): ptr lxw_worksheet {.
    cdecl, importc: "workbook_get_worksheet_by_name".}
proc workbook_get_chartsheet_by_name*(workbook: ptr lxw_workbook; name: cstring): ptr lxw_chartsheet {.
    cdecl, importc: "workbook_get_chartsheet_by_name".}
proc workbook_validate_sheet_name*(workbook: ptr lxw_workbook;
                                   sheetname: cstring): lxw_error {.cdecl,
    importc: "workbook_validate_sheet_name".}
proc workbook_add_vba_project*(workbook: ptr lxw_workbook; filename: cstring): lxw_error {.
    cdecl, importc: "workbook_add_vba_project".}
proc workbook_add_signed_vba_project*(workbook: ptr lxw_workbook;
                                      vba_project: cstring; signature: cstring): lxw_error {.
    cdecl, importc: "workbook_add_signed_vba_project".}
proc workbook_set_vba_name*(workbook: ptr lxw_workbook; name: cstring): lxw_error {.
    cdecl, importc: "workbook_set_vba_name".}
proc workbook_read_only_recommended*(workbook: ptr lxw_workbook): void {.cdecl,
    importc: "workbook_read_only_recommended".}
proc lxw_workbook_free*(workbook: ptr lxw_workbook): void {.cdecl,
    importc: "lxw_workbook_free".}
proc lxw_workbook_assemble_xml_file*(workbook: ptr lxw_workbook): void {.cdecl,
    importc: "lxw_workbook_assemble_xml_file".}
proc lxw_workbook_set_default_xf_indices*(workbook: ptr lxw_workbook): void {.
    cdecl, importc: "lxw_workbook_set_default_xf_indices".}
proc workbook_unset_default_url_format*(workbook: ptr lxw_workbook): void {.
    cdecl, importc: "workbook_unset_default_url_format".}