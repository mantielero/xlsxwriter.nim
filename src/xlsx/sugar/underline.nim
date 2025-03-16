import ../wrapper/xlsxwriter

type
  Underlines* = enum
    underlineNone   = LXW_UNDERLINE_NONE, 
    underlineSingle = LXW_UNDERLINE_SINGLE, 
    underlineDouble = LXW_UNDERLINE_DOUBLE,
    underlineSingleAccounting = LXW_UNDERLINE_SINGLE_ACCOUNTING, 
    underlineDoubleAccounting = LXW_UNDERLINE_DOUBLE_ACCOUNTING