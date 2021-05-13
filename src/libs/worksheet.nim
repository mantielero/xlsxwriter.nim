import nimlibxlsxwriter/[xlsxwriter], strformat, times
import common

proc setColumn*(ws:Worksheet, firstCol, lastCol:int, width:float, format:Format = nil) =
  let err = worksheet_set_column( ws, firstCol.lxw_col_t, lastCol.lxw_col_t,
                                  width, format)
  if err != LXW_NO_ERROR:
    raise newException(ValueError, &"Something went wrong in setColumn: {err.int}")


proc write*(ws:Worksheet, row,col: int, text:string, format:Format = nil) =
  let err = worksheet_write_string( ws, row.lxw_row_t, col.lxw_col_t,
                                    text, format)
  if err != LXW_NO_ERROR:
    raise newException(ValueError, &"Something went wrong in write: {err.int}")


proc write*[N:SomeNumber](ws:Worksheet, row,col: int, number:N, format:Format = nil) =
  let err = worksheet_write_number( ws, row.lxw_row_t, col.lxw_col_t,
                                    number.cdouble, format)
  if err != LXW_NO_ERROR:
    raise newException(ValueError, &"Something went wrong in write: {err.int}")


proc insertImage*(ws:Worksheet, row,col:int, filename:string) = 
  let err = worksheet_insert_image(ws, row.lxw_row_t, col.lxw_col_t, filename)

  if err != LXW_NO_ERROR:
    raise newException(ValueError, &"Something went wrong in insertImage: {err.int}")  


proc write*(ws:Worksheet, row, col:int,  dt:DateTime, format:Format = nil) =
  let datetime = lxw_datetime( 
    year: dt.year.cint,
    month:dt.month.cint,
    day: dt.monthday.cint,
    hour: dt.hour.cint,
    min: dt.minute.cint,
    sec: (dt.second.cdouble + dt.nanosecond.cdouble / 1000000000.0 ).cdouble
  )
  let err:lxw_error = worksheet_write_datetime( ws, row.lxw_row_t, col.lxw_col_t,
                            unsafeAddr datetime, format )
#[

proc worksheet_write_formula*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                             col: lxw_col_t; formula: cstring;
                             format: ptr lxw_format): lxw_error 
    
proc worksheet_write_array_formula*(worksheet: ptr lxw_worksheet;
                                   first_row: lxw_row_t; first_col: lxw_col_t;
                                   last_row: lxw_row_t; last_col: lxw_col_t;
                                   formula: cstring; format: ptr lxw_format): lxw_error 
    
proc worksheet_write_array_formula_num*(worksheet: ptr lxw_worksheet;
                                       first_row: lxw_row_t; first_col: lxw_col_t;
                                       last_row: lxw_row_t; last_col: lxw_col_t;
                                       formula: cstring; format: ptr lxw_format;
                                       result: cdouble): lxw_error 
    
proc worksheet_write_dynamic_array_formula*(worksheet: ptr lxw_worksheet;
    first_row: lxw_row_t; first_col: lxw_col_t; last_row: lxw_row_t;
    last_col: lxw_col_t; formula: cstring; format: ptr lxw_format): lxw_error 
    
proc worksheet_write_dynamic_array_formula_num*(worksheet: ptr lxw_worksheet;
    first_row: lxw_row_t; first_col: lxw_col_t; last_row: lxw_row_t;
    last_col: lxw_col_t; formula: cstring; format: ptr lxw_format; result: cdouble): lxw_error 
    
    dynlib: dynlibWorksheet.}

    
proc worksheet_write_url*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                         col: lxw_col_t; url: cstring; format: ptr lxw_format): lxw_error 
    
proc worksheet_write_url_opt*(worksheet: ptr lxw_worksheet; row_num: lxw_row_t;
                             col_num: lxw_col_t; url: cstring;
                             format: ptr lxw_format; string: cstring;
                             tooltip: cstring): lxw_error 
    
proc worksheet_write_boolean*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                             col: lxw_col_t; value: cint; format: ptr lxw_format): lxw_error 
    
proc worksheet_write_blank*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                           col: lxw_col_t; format: ptr lxw_format): lxw_error 
    
proc worksheet_write_formula_num*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                 col: lxw_col_t; formula: cstring;
                                 format: ptr lxw_format; result: cdouble): lxw_error 
    
proc worksheet_write_formula_str*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                 col: lxw_col_t; formula: cstring;
                                 format: ptr lxw_format; result: cstring): lxw_error 
    
proc worksheet_write_rich_string*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                 col: lxw_col_t;
                                 rich_string: ptr ptr lxw_rich_string_tuple;
                                 format: ptr lxw_format): lxw_error 
    
proc worksheet_write_comment*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                             col: lxw_col_t; string: cstring): lxw_error 
    
proc worksheet_write_comment_opt*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                 col: lxw_col_t; string: cstring;
                                 options: ptr lxw_comment_options): lxw_error 
    
proc worksheet_set_row*(worksheet: ptr lxw_worksheet; row: lxw_row_t; height: cdouble;
                       format: ptr lxw_format): lxw_error 
    
proc worksheet_set_row_opt*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                           height: cdouble; format: ptr lxw_format;
                           options: ptr lxw_row_col_options): lxw_error 
    
proc worksheet_set_row_pixels*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                              pixels: uint32; format: ptr lxw_format): lxw_error 
    
proc worksheet_set_row_pixels_opt*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                  pixels: uint32; format: ptr lxw_format;
                                  options: ptr lxw_row_col_options): lxw_error 
    
proc worksheet_set_column*(worksheet: ptr lxw_worksheet; first_col: lxw_col_t;
                          last_col: lxw_col_t; width: cdouble;
                          format: ptr lxw_format): lxw_error 
    
proc worksheet_set_column_opt*(worksheet: ptr lxw_worksheet; first_col: lxw_col_t;
                              last_col: lxw_col_t; width: cdouble;
                              format: ptr lxw_format;
                              options: ptr lxw_row_col_options): lxw_error 
    
proc worksheet_set_column_pixels*(worksheet: ptr lxw_worksheet;
                                 first_col: lxw_col_t; last_col: lxw_col_t;
                                 pixels: uint32; format: ptr lxw_format): lxw_error 
    
proc worksheet_set_column_pixels_opt*(worksheet: ptr lxw_worksheet;
                                     first_col: lxw_col_t; last_col: lxw_col_t;
                                     pixels: uint32; format: ptr lxw_format;
                                     options: ptr lxw_row_col_options): lxw_error 
    
proc worksheet_insert_image*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                            col: lxw_col_t; filename: cstring): lxw_error 
    
proc worksheet_insert_image_opt*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                col: lxw_col_t; filename: cstring;
                                options: ptr lxw_image_options): lxw_error 
    
proc worksheet_insert_image_buffer*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                   col: lxw_col_t; image_buffer: ptr cuchar;
                                   image_size: csize_t): lxw_error 
    
proc worksheet_insert_image_buffer_opt*(worksheet: ptr lxw_worksheet;
                                       row: lxw_row_t; col: lxw_col_t;
                                       image_buffer: ptr cuchar;
                                       image_size: csize_t;
                                       options: ptr lxw_image_options): lxw_error 
    
proc worksheet_insert_chart*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                            col: lxw_col_t; chart: ptr lxw_chart): lxw_error 
    
proc worksheet_insert_chart_opt*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                col: lxw_col_t; chart: ptr lxw_chart;
                                user_options: ptr lxw_chart_options): lxw_error 
    
proc worksheet_merge_range*(worksheet: ptr lxw_worksheet; first_row: lxw_row_t;
                           first_col: lxw_col_t; last_row: lxw_row_t;
                           last_col: lxw_col_t; string: cstring;
                           format: ptr lxw_format): lxw_error 
    
proc worksheet_autofilter*(worksheet: ptr lxw_worksheet; first_row: lxw_row_t;
                          first_col: lxw_col_t; last_row: lxw_row_t;
                          last_col: lxw_col_t): lxw_error 
    
proc worksheet_data_validation_cell*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                                    col: lxw_col_t;
                                    validation: ptr lxw_data_validation): lxw_error 
    
proc worksheet_data_validation_range*(worksheet: ptr lxw_worksheet;
                                     first_row: lxw_row_t; first_col: lxw_col_t;
                                     last_row: lxw_row_t; last_col: lxw_col_t;
                                     validation: ptr lxw_data_validation): lxw_error 
    
proc worksheet_conditional_format_cell*(worksheet: ptr lxw_worksheet;
                                       row: lxw_row_t; col: lxw_col_t;
    conditional_format: ptr lxw_conditional_format): lxw_error 
    
proc worksheet_conditional_format_range*(worksheet: ptr lxw_worksheet;
                                        first_row: lxw_row_t;
                                        first_col: lxw_col_t; last_row: lxw_row_t;
                                        last_col: lxw_col_t; conditional_format: ptr lxw_conditional_format): lxw_error 
    
proc worksheet_activate*(worksheet: ptr lxw_worksheet) 
    
proc worksheet_select*(worksheet: ptr lxw_worksheet) 
    
proc worksheet_hide*(worksheet: ptr lxw_worksheet) 
    
proc worksheet_set_first_sheet*(worksheet: ptr lxw_worksheet) 
    
proc worksheet_freeze_panes*(worksheet: ptr lxw_worksheet; row: lxw_row_t;
                            col: lxw_col_t) 
    
proc worksheet_split_panes*(worksheet: ptr lxw_worksheet; vertical: cdouble;
                           horizontal: cdouble) 
    
proc worksheet_freeze_panes_opt*(worksheet: ptr lxw_worksheet; first_row: lxw_row_t;
                                first_col: lxw_col_t; top_row: lxw_row_t;
                                left_col: lxw_col_t; `type`: uint8) 
    
proc worksheet_split_panes_opt*(worksheet: ptr lxw_worksheet; vertical: cdouble;
                               horizontal: cdouble; top_row: lxw_row_t;
                               left_col: lxw_col_t) 
    
proc worksheet_set_selection*(worksheet: ptr lxw_worksheet; first_row: lxw_row_t;
                             first_col: lxw_col_t; last_row: lxw_row_t;
                             last_col: lxw_col_t) 
    
proc worksheet_set_landscape*(worksheet: ptr lxw_worksheet) 
    
proc worksheet_set_portrait*(worksheet: ptr lxw_worksheet) 
    
proc worksheet_set_page_view*(worksheet: ptr lxw_worksheet) 
    
proc worksheet_set_paper*(worksheet: ptr lxw_worksheet; paper_type: uint8) 
    
proc worksheet_set_margins*(worksheet: ptr lxw_worksheet; left: cdouble;
                           right: cdouble; top: cdouble; bottom: cdouble) 
    
proc worksheet_set_header*(worksheet: ptr lxw_worksheet; string: cstring): lxw_error 
    
proc worksheet_set_footer*(worksheet: ptr lxw_worksheet; string: cstring): lxw_error 
    
proc worksheet_set_header_opt*(worksheet: ptr lxw_worksheet; string: cstring;
                              options: ptr lxw_header_footer_options): lxw_error 
    
proc worksheet_set_footer_opt*(worksheet: ptr lxw_worksheet; string: cstring;
                              options: ptr lxw_header_footer_options): lxw_error 
    
proc worksheet_set_h_pagebreaks*(worksheet: ptr lxw_worksheet; breaks: ptr lxw_row_t): lxw_error 
    
proc worksheet_set_v_pagebreaks*(worksheet: ptr lxw_worksheet; breaks: ptr lxw_col_t): lxw_error 
    
proc worksheet_print_across*(worksheet: ptr lxw_worksheet) 
    
proc worksheet_set_zoom*(worksheet: ptr lxw_worksheet; scale: uint16) 
    
proc worksheet_gridlines*(worksheet: ptr lxw_worksheet; option: uint8) 
    
proc worksheet_center_horizontally*(worksheet: ptr lxw_worksheet) 
    
proc worksheet_center_vertically*(worksheet: ptr lxw_worksheet) 
    
proc worksheet_print_row_col_headers*(worksheet: ptr lxw_worksheet) 
    
proc worksheet_repeat_rows*(worksheet: ptr lxw_worksheet; first_row: lxw_row_t;
                           last_row: lxw_row_t): lxw_error 
    
proc worksheet_repeat_columns*(worksheet: ptr lxw_worksheet; first_col: lxw_col_t;
                              last_col: lxw_col_t): lxw_error 
    
proc worksheet_print_area*(worksheet: ptr lxw_worksheet; first_row: lxw_row_t;
                          first_col: lxw_col_t; last_row: lxw_row_t;
                          last_col: lxw_col_t): lxw_error 
    
proc worksheet_fit_to_pages*(worksheet: ptr lxw_worksheet; width: uint16;
                            height: uint16) 
    
proc worksheet_set_start_page*(worksheet: ptr lxw_worksheet; start_page: uint16) 
    
proc worksheet_set_print_scale*(worksheet: ptr lxw_worksheet; scale: uint16) 
    
proc worksheet_right_to_left*(worksheet: ptr lxw_worksheet) 
    
proc worksheet_hide_zero*(worksheet: ptr lxw_worksheet) 
    
proc worksheet_set_tab_color*(worksheet: ptr lxw_worksheet; color: lxw_color_t) 
    
proc worksheet_protect*(worksheet: ptr lxw_worksheet; password: cstring;
                       options: ptr lxw_protection) 
    
proc worksheet_outline_settings*(worksheet: ptr lxw_worksheet; visible: uint8;
                                symbols_below: uint8; symbols_right: uint8;
                                auto_style: uint8) 
    
proc worksheet_set_default_row*(worksheet: ptr lxw_worksheet; height: cdouble;
                               hide_unused_rows: uint8) 
    
proc worksheet_set_vba_name*(worksheet: ptr lxw_worksheet; name: cstring): lxw_error 
    
proc worksheet_show_comments*(worksheet: ptr lxw_worksheet) 
    
proc worksheet_set_comments_author*(worksheet: ptr lxw_worksheet; author: cstring) 
    
proc worksheet_ignore_errors*(worksheet: ptr lxw_worksheet; `type`: uint8;
                             range: cstring): lxw_error 
    
proc lxw_worksheet_new*(init_data: ptr lxw_worksheet_init_data): ptr lxw_worksheet 
    
proc lxw_worksheet_free*(worksheet: ptr lxw_worksheet) 
    
proc lxw_worksheet_assemble_xml_file*(worksheet: ptr lxw_worksheet) 
    
proc lxw_worksheet_write_single_row*(worksheet: ptr lxw_worksheet) 
    
proc lxw_worksheet_prepare_image*(worksheet: ptr lxw_worksheet;
                                 image_ref_id: uint32; drawing_id: uint32;
                                 object_props: ptr lxw_object_properties) 
    
proc lxw_worksheet_prepare_header_image*(worksheet: ptr lxw_worksheet;
                                        image_ref_id: uint32;
                                        object_props: ptr lxw_object_properties) 
    
proc lxw_worksheet_prepare_chart*(worksheet: ptr lxw_worksheet;
                                 chart_ref_id: uint32; drawing_id: uint32;
                                 object_props: ptr lxw_object_properties;
                                 is_chartsheet: uint8) 
    
proc lxw_worksheet_prepare_vml_objects*(worksheet: ptr lxw_worksheet;
                                       vml_data_id: uint32;
                                       vml_shape_id: uint32;
                                       vml_drawing_id: uint32;
                                       comment_id: uint32): uint32 
    
proc lxw_worksheet_prepare_header_vml_objects*(self: ptr lxw_worksheet;
    vml_header_id: uint32; vml_drawing_id: uint32) 
    
proc lxw_worksheet_find_row*(worksheet: ptr lxw_worksheet; row_num: lxw_row_t): ptr lxw_row 
    
proc lxw_worksheet_find_cell_in_row*(row: ptr lxw_row; col_num: lxw_col_t): ptr lxw_cell 
    
proc lxw_worksheet_write_sheet_views*(worksheet: ptr lxw_worksheet) 
    
proc lxw_worksheet_write_page_margins*(worksheet: ptr lxw_worksheet) 
    
proc lxw_worksheet_write_drawings*(worksheet: ptr lxw_worksheet) 
    
proc lxw_worksheet_write_sheet_protection*(worksheet: ptr lxw_worksheet;
    protect: ptr lxw_protection_obj)  
                                    dynlib: dynlibWorksheet.}
proc lxw_worksheet_write_sheet_pr*(worksheet: ptr lxw_worksheet) 
    
proc lxw_worksheet_write_page_setup*(worksheet: ptr lxw_worksheet) 
    
proc lxw_worksheet_write_header_footer*(worksheet: ptr lxw_worksheet) 
    
]#
