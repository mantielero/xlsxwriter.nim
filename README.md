# XLSXwriter
Bindings based on Futhark for Nim programming language.

## Install xlsxwriter
As usual with Nim:
```
nimble install https://github.com/mantielero/xlsxwriter.nim
```

## Example
See the following example:
```nim
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
```
produces:
![](https://i.imgur.com/OcHGzvV.png)

# Nim's XLSX support
## Pure Nim

- [xl](https://github.com/khchen/xl): 55stars, 1y (last commit) https://github.com/khchen/xl/issues/8 
- https://github.com/ringabout/xlsx: 62 stars, 4m (last commit)
- https://github.com/mashingan/excelin: 50 stars, 2y (last commit)

## Bindings to libxlsxwriter
Right now there are a number of libraries:
- [nimxlsxwriter](https://github.com/KeepCoolWithCoolidge/nimlibxlsxwriter): 26stars, 7y (last commit). Using C bindings.
  - [nimxlsxwriter fork](https://github.com/ThomasTJdev/nimlibxlsxwriter): 5 stars, 2y (last commit)

This library was just some sugar over `nimxlsxwriter`. But now it uses its own bindings based on Futhark.