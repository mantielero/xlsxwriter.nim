# XLSXwriter
This library provides some sugar over [nimlibxlsxwriter](https://github.com/KeepCoolWithCoolidge/nimlibxlsxwriter) which provides bindings to [libxlsxwriter](https://github.com/jmcnamara/libxlsxwriter).

## Example
See the following example:
```nim
import xlsxwriter

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
  ws.insertImage(1, 2, "logo.png")
  
main()
```