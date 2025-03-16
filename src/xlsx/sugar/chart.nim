import ../wrapper/xlsxwriter
import workbook#, format
#import std/[strformat, times]

type
  ChartObj* = object
    handle*: ptr lxw_chart 
  Chart* = ref ChartObj

proc addChart*(wb:Workbook; chartType:uint):Chart =
  result = new Chart
  result.handle = workbook_add_chart(wb.handle, chart_type.uint8)