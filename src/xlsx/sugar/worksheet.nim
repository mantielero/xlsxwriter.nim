import ../wrapper/xlsxwriter
import workbook, format
import std/[strformat, times]

type
  WorksheetObj* = object
    handle*: ptr lxw_worksheet
  Worksheet* = ref WorksheetObj

#proc `=destroy`*(self:WorksheetObj) =
#  if self.handle.addr != nil:
#    lxw_worksheet_free(self.handle)



proc addWorksheet*(wb:Workbook; name:string): Worksheet {.discardable.} =
  result = new Worksheet
  result.handle = workbook_add_worksheet(wb.handle, name.cstring)

proc getWorksheet*(wb:Workbook, name:string):Worksheet =
  result = new Worksheet
  result.handle = workbook_get_worksheet_by_name(wb.handle, name.cstring)

proc `[]`*(wb:Workbook, name:string):Worksheet =
  wb.getWorksheet(name)

proc setColumn*( ws:Worksheet; 
                 firstCol, lastCol:int; 
                 width:float; 
                 format:Format = new Format) =
  let err = worksheet_set_column( ws.handle, firstCol.lxw_col_t, lastCol.lxw_col_t,
                                width, format.handle)
  if err != LXW_NO_ERROR:
    raise newException(ValueError, &"Something went wrong in setColumn: {err.int}")


# writeNumber
proc write*[N:SomeNumber](ws:Worksheet, row,col: int, number:N, format:Format = new Format) =
  let err = worksheet_write_number( ws.handle, row.lxw_row_t, col.lxw_col_t,
                                    number.cdouble, format.handle)
  if err != LXW_NO_ERROR:
    raise newException(ValueError, &"Something went wrong in write: {err.int}")

# writeString
proc write*(ws:Worksheet; row,col: int; text:string; format:Format = new Format) =
  let err = worksheet_write_string( ws.handle, row.lxw_row_t, col.lxw_col_t,
                                    text.cstring, format.handle)
  if err != LXW_NO_ERROR:
    raise newException(ValueError, &"Something went wrong in write: {err.int}")



proc insertImage*(ws:Worksheet; row,col:int; filename:string) = 
  let err = worksheet_insert_image(ws.handle, row.lxw_row_t, col.lxw_col_t, filename.cstring)

  if err != LXW_NO_ERROR:
    raise newException(ValueError, &"Something went wrong in insertImage: {err.int}")  

proc write*(ws:Worksheet; row, col:int;  dt:DateTime; format:Format = new Format) =
  let datetime = lxw_datetime( 
    year: dt.year.cint,
    month:dt.month.cint,
    day: dt.monthday.cint,
    hour: dt.hour.cint,
    min: dt.minute.cint,
    sec: (dt.second.cdouble + dt.nanosecond.cdouble / 1000000000.0 ).cdouble
  )
  let err:lxw_error = worksheet_write_datetime( ws.handle, row.lxw_row_t, col.lxw_col_t,
                            unsafeAddr datetime, format.handle )
  if err != LXW_NO_ERROR:
    raise newException(ValueError, &"Something went wrong while writing a date: {err.int}")  

#[
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
]#