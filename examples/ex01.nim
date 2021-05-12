import xlsxwriter, times

proc main() =
  let wb = newWorkbook("prueba.xlsx")
  defer: wb.close()

  wb.addWorksheet("hola")
  let ws = wb.addWorksheet("adiós")

  let format = wb.addFormat
  format.setBold

  ws.setColumn( 0, 0, 20 )

  ws.write(0, 0, "Hello")  
  ws.write(1, 0, "Adiós", format)   
  ws.write(2, 0, 123)
  ws.write(3, 0, 123.456)  

  let dt = initDateTime(30, mMar, 2017, 8, 53, 27, utc())
  let fmtDate = wb.addFormat
  fmtDate.setNumFormat("mmm d yyyy hh:mm AM/PM")
  ws.write( 4, 0, dt, fmtDate )
  
  ws.insertImage(1, 2, "logo.png")
  
main()