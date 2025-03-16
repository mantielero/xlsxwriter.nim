import ../wrapper/xlsxwriter
import std/strformat

type
  WorkbookObj* = object
    handle*: ptr lxw_workbook = nil
  Workbook* = ref WorkbookObj

# close is the function cleaning all the resources
# proc `=destroy`*(self:WorkbookObj) =
#  if self.handle != nil:
#     #lxw_workbook_free(self.handle)   # performed by close
#     let err:lxw_error = workbook_close(self.handle)
#     if err != LXW_NO_ERROR:
#      raise newException(ValueError, &"Something went wrong: {err.int}")
#   #TODO: error handling


proc newWorkbook*(name:string): Workbook =
  result = new Workbook
  result.handle = workbook_new(name.cstring)


proc close*(self:Workbook) =
  let err:lxw_error = workbook_close(self.handle)
  if err != LXW_NO_ERROR:
    raise newException(ValueError, &"Something went wrong: {err.int}")


#[

proc workbook_new_opt*(filename: cstring; options: ptr lxw_workbook_options): ptr lxw_workbook {.
    cdecl, importc: "workbook_new_opt".}

proc workbook_add_worksheet*(workbook: ptr lxw_workbook; sheetname: cstring): ptr lxw_worksheet {.
    cdecl, importc: "workbook_add_worksheet".}
proc workbook_add_chartsheet*(workbook: ptr lxw_workbook; sheetname: cstring): ptr lxw_chartsheet {.
    cdecl, importc: "workbook_add_chartsheet".}


proc workbook_add_chart*(workbook: ptr lxw_workbook; chart_type: uint8): ptr lxw_chart {.
    cdecl, importc: "workbook_add_chart".}

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
]#