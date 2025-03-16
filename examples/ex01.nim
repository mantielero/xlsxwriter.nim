import xlsxwriter
import times

proc main() =
  let wb = newWorkbook("prueba.xlsx")
  wb.addWorksheet("sheet1")
  let ws = wb.addWorksheet("sheet2")

  let format = wb.addFormat()
  format.setBold.setItalic.setFontColor(colorRed).setUnderline(underlineDouble).setFontStrikeout().setSuperScript()
        .setAlignRight.setTextWrap
        #.setFontOutline.setFontShadow
        .setDiagType(LXW_DIAGONAL_BORDER_UP)
        .setDiagBorder(LXW_BORDER_DOUBLE)

        .setBorder(LXW_BORDER_MEDIUM)
        .setBorderColor(colorBlue)

        #.setBgColor(colorPink)
        #.setFgColor(colorSilver)
        #.setIndent(1)
        .setTextWrap
        .setShrink()
        .setPattern(LXW_CHART_PATTERN_PERCENT_25)
        .setRotation(45)

  ws.setColumn( 0, 0, 30 )

  ws.write(0, 0, "Hello")  
  ws.write(1, 0, "Adiós", format)   
  ws.write(2, 0, 123)
  ws.write(3, 0, 123.456)  

  let dt = initDateTime(30, mMar, 2017, 8, 53, 27, utc())
  let fmtDate = wb.addFormat
  fmtDate.setNumFormat("mmm d yyyy hh:mm AM/PM")
  ws.write( 4, 0, dt, fmtDate )
  
  ws.insertImage(1, 2, "logo.png")
  
  let ws2 = wb["sheet1"]

  wb.close()

main()