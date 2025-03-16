import ../wrapper/xlsxwriter
import workbook#, format
#import std/[strformat, times]

type
  ChartsheetObj* = object
    handle*: ptr lxw_chartsheet 
  Chartsheet* = ref ChartsheetObj

proc addChartsheet*(wb:Workbook; sheetname:string):Chartsheet =
  result = new Chartsheet
  result.handle = workbook_add_chartsheet(wb.handle, sheetname.cstring)