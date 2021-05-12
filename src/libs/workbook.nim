import nimlibxlsxwriter/xlsxwriter, strformat
import common

proc newWorkbook*(name:string):Workbook =
  workbook_new(name)

proc close*(wb:Workbook) =
  let err:lxw_error = wb.workbook_close()
  if err != LXW_NO_ERROR:
    raise newException(ValueError, &"Something went wrong: {err.int}")
  # TODO: error handling

proc addWorksheet*(wb:Workbook; wsName:string = ""):Worksheet {.discardable.} =
  ##[adds a new worksheet
  ]##
  if wsName == "":
    return workbook_add_worksheet(wb, nil)
  else:
    return workbook_add_worksheet(wb, wsName)

proc addChartsheet*(wb:Workbook; wsName:string = ""):Chartsheet {.discardable.} =
  ##[adds a new chartsheet
  ]##
  if wsName == "":
    return workbook_add_chartsheet(wb, nil)
  else:
    return workbook_add_chartsheet(wb, wsName)

proc addFormat*(wb:Workbook):Format = 
  workbook_add_format(wb)


proc addChart*(wb:Workbook,chartType:uint):Chart =
  workbook_add_chart(wb, chart_type.uint8)

proc `[]`*(wb:Workbook, name:string):Worksheet =
  workbook_get_worksheet_by_name(wb, name)
    

#[
proc workbook_new_opt*(filename: cstring; options: ptr lxw_workbook_options): ptr lxw_workbook    
    
proc workbook_set_properties*(workbook: ptr lxw_workbook;
                             properties: ptr lxw_doc_properties): lxw_error 
    
proc workbook_set_custom_property_string*(workbook: ptr lxw_workbook; name: cstring;
    value: cstring): lxw_error 
                              
                              
proc workbook_set_custom_property_number*(workbook: ptr lxw_workbook; name: cstring;
    value: cdouble): lxw_error 
                              
                              
proc workbook_set_custom_property_integer*(workbook: ptr lxw_workbook;
    name: cstring; value: int32): lxw_error 
    
proc workbook_set_custom_property_boolean*(workbook: ptr lxw_workbook;
    name: cstring; value: uint8): lxw_error 
    
proc workbook_set_custom_property_datetime*(workbook: ptr lxw_workbook;
    name: cstring; datetime: ptr lxw_datetime): lxw_error 
    
proc workbook_define_name*(workbook: ptr lxw_workbook; name: cstring; formula: cstring): lxw_error 
    
proc workbook_get_default_url_format*(workbook: ptr lxw_workbook): ptr lxw_format 
    
proc workbook_get_chartsheet_by_name*(workbook: ptr lxw_workbook; name: cstring): ptr lxw_chartsheet 
    
proc workbook_validate_sheet_name*(workbook: ptr lxw_workbook; sheetname: cstring): lxw_error 
    
proc workbook_add_vba_project*(workbook: ptr lxw_workbook; filename: cstring): lxw_error 
    
proc workbook_set_vba_name*(workbook: ptr lxw_workbook; name: cstring): lxw_error 
    
proc workbook_read_only_recommended*(workbook: ptr lxw_workbook) 
    
proc lxw_workbook_free*(workbook: ptr lxw_workbook) 
    
proc lxw_workbook_assemble_xml_file*(workbook: ptr lxw_workbook) 
    
proc lxw_workbook_set_default_xf_indices*(workbook: ptr lxw_workbook) 
    
proc workbook_unset_default_url_format*(workbook: ptr lxw_workbook) 
    
]#