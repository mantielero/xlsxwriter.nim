import ../wrapper/xlsxwriter
import workbook
#import std/strformat
import color, underline

type
  FormatObj* = object
    handle*: ptr lxw_format = nil  
  Format* = ref FormatObj


proc addFormat*(wb:Workbook):Format =
  result = new Format
  result.handle = workbook_add_format(wb.handle)


{.push discardable.}

proc setBold*(format:Format):Format =
  format_set_bold(format.handle)
  return format

proc setItalic*(format:Format):Format =
  format_set_italic(format.handle) 
  return format

proc setNumFormat*(format:Format, numFormat:string):Format =
  format_set_num_format(format.handle, num_format.cstring) 
  return format

proc setUnlocked*(format:Format):Format =
  format_set_unlocked(format.handle) 
  return format

proc setHidden*(format:Format):Format =
  format_set_hidden(format.handle) 
  return format

proc setFontName*(format:Format, fontName:string):Format =
  format_set_font_name(format.handle,  fontName ) 
  return format

proc setFontSize*(format:Format, size:float):Format =
  format_set_font_size(format.handle,  size )
  return format

proc setFontColor*[C:ColorObj|Colors](format:Format, color:C):Format =
  format_set_font_color(format.handle, color.uint32) 
  return format

proc setUnderline*(format:Format, style:Underlines):Format =
  format_set_underline(format.handle, style.uint8) 
  return format

proc setFontStrikeout*(format:Format):Format =
  format_set_font_strikeout(format.handle)
  return format 

# font script
proc setFontScript*(format:Format, style:enum_lxw_format_scripts):Format =
  format_set_font_script(format.handle, style.uint8) 
  return format

proc setSuperScript*(format:Format): Format =
  format.setFontScript(LXW_FONT_SUPERSCRIPT)
  return format

proc setSubScript*(format:Format): Format =
  format.setFontScript(LXW_FONT_SUBSCRIPT)
  return format

# align
proc setAlign*(format:Format; alignment:enum_lxw_format_alignments):Format  =
  format_set_align(format.handle, alignment.uint8) 
  return format

proc setAlignNone*(format:Format):Format =
  format_set_align(format.handle, LXW_ALIGN_NONE.uint8) 
  return format

proc setAlignLeft*(format:Format):Format =
  format_set_align(format.handle, LXW_ALIGN_LEFT.uint8) 
  return format

proc setAlignCenter*(format:Format):Format =
  format_set_align(format.handle, LXW_ALIGN_CENTER.uint8) 
  return format

proc setAlignRight*(format:Format):Format =
  format_set_align(format.handle, LXW_ALIGN_RIGHT.uint8) 
  return format

proc setAlignFill*(format:Format):Format =
  format_set_align(format.handle, LXW_ALIGN_FILL.uint8) 
  return format

proc setAlignJustify*(format:Format):Format =
  format_set_align(format.handle, LXW_ALIGN_JUSTIFY.uint8) 
  return format


#[
    LXW_ALIGN_CENTER_ACROSS = 6, LXW_ALIGN_DISTRIBUTED = 7,
    LXW_ALIGN_VERTICAL_TOP = 8, LXW_ALIGN_VERTICAL_BOTTOM = 9,
    LXW_ALIGN_VERTICAL_CENTER = 10, LXW_ALIGN_VERTICAL_JUSTIFY = 11,
    LXW_ALIGN_VERTICAL_DISTRIBUTED = 12

]#

# textwrap
proc setTextWrap*(format:Format):Format =
  format_set_text_wrap(format.handle)
  return format 


proc setRotation*(format:Format; angle:int):Format  = 
  format_set_rotation(format.handle, angle.int16) 
  return format 

proc setIndent*(format:Format; level:int):Format  =
  format_set_indent(format.handle, level.uint8) 
  return format 

proc setShrink*(format:Format):Format = 
  format_set_shrink(format.handle)
  return format 
    
proc setPattern*(format:Format; index:enum_lxw_chart_pattern_type):Format =
  format_set_pattern(format.handle, index.uint8) 
  return format 

# FG / BG
proc setBgColor*[C:ColorObj|Colors](format:Format, color:C):Format =
  format_set_bg_color(format.handle, color.uint32) 
  return format

proc setFgColor*[C:ColorObj|Colors](format:Format, color:C):Format =
  format_set_fg_color(format.handle, color.uint32) 
  return format

# Set borders
proc setBorder*(format:Format, style:enum_lxw_format_borders):Format =
  format_set_border(format.handle, style.uint8) 
  return format
    
proc setBottom*(format:Format, style:enum_lxw_format_borders):Format =
  format_set_bottom(format.handle, style.uint8) 
  return format  
    
proc setTop*(format:Format, style:enum_lxw_format_borders):Format =
  format_set_top(format.handle, style.uint8) 
  return format  
    
proc setLeft*(format:Format, style:enum_lxw_format_borders):Format =
  format_set_left(format.handle, style.uint8) 
  return format  
    
proc setRight*(format:Format, style:enum_lxw_format_borders):Format =
  format_set_right(format.handle, style.uint8) 
  return format  


# Set border's colors
proc setBorderColor*[C:ColorObj|Colors](format:Format, color:C):Format =
  format_set_border_color(format.handle, color.uint32) 
  return format

proc setBottomColor*[C:ColorObj|Colors](format:Format, color:C):Format =   
  format_set_bottom_color(format.handle, color.uint32) 
  return format

proc setTopColor*[C:ColorObj|Colors](format:Format, color:C):Format =    
  format_set_top_color(format.handle, color.uint32)  
  return format

proc setLeftColor*[C:ColorObj|Colors](format:Format, color:C):Format =    
  format_set_left_color(format.handle, color.uint32)  
  return format

proc setRightColor*[C:ColorObj|Colors](format:Format, color:C):Format =    
  format_set_right_color(format.handle, color.uint32) 
  return format

# diag
proc setDiagType*(format:Format, typ:enum_lxw_format_diagonal_types):Format =
  format_set_diag_type(format.handle, typ.uint8) 
  return format

proc setDiagBorder*(format:Format, style:enum_lxw_format_borders):Format =  
  format_set_diag_border(format.handle, style.uint8) 
  return format

proc setDiagColor*(format:Format, color:Colors):Format =
  format_set_diag_color(format.handle, color.uint32) 
  return format

# font
proc setFontOutline*(format:Format):Format =
  format_set_font_outline(format.handle) 
  return format
    
proc setFontShadow*(format:Format):Format =
  format_set_font_shadow(format.handle) 
  return format


{.pop.}




