# XLSXwriter
This library provides some sugar over [nimlibxlsxwriter](https://github.com/KeepCoolWithCoolidge/nimlibxlsxwriter) which provides bindings to [libxlsxwriter](https://github.com/jmcnamara/libxlsxwriter).

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

# Installation
## Nimgen
You need this particular version: https://github.com/ThomasTJdev/nimgen/tree/supportBranches

## Nimlibxlsxwriter
You can download the repository from: https://github.com/ThomasTJdev/nimlibxlsxwriter

Later you need to modify `nimlibxlsxwriter.cfg`:
1. Add the `gitbranch` line:

```ini
[n.prepare]
gitbranch = "main"
gitremote = "https://github.com/jmcnamara/libxlsxwriter"
gitsparse = """
include/*
include/xlsxwriter/*
"""
```
2. Add the last two lines from the following:
```ini
[common.nim]
search.tr = "import nimlibxlsxwriter/tree"
append.tr = """

import hash_table
export hash_table.lxw_hash_table
from format import lxw_format
"""

search.v = "LXW_PRINTF* = f"
comment.v = 1
```

## Install xlsxwriter
Download and then as usual:
```
nimble install
```
