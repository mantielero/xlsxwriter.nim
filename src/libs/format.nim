import nimlibxlsxwriter/xlsxwriter
import common


proc setBold*(format:Format) =
  format_set_bold(format)


proc setItalic*(format:Format) =
  format_set_italic(format) 


proc setUnlocked*(format:Format) =
  format_set_unlocked(format) 

proc setHidden*(format:Format) =
  format_set_hidden(format) 

proc setFontName*(format:Format, fontName:string) =
  format_set_font_name(format,  fontName ) 

proc setFontSize*(format:Format, size:float) =
  format_set_font_size(format,  size ) 

type
  Color* = lxw_color_t
  
  Colors* = enum
    colorNavy    = LXW_COLOR_NAVY,   
    colorBlue    = LXW_COLOR_BLUE,
    colorGreen   = LXW_COLOR_GREEN,     
    colorLime    = LXW_COLOR_LIME,        
    colorCyan    = LXW_COLOR_CYAN,
    colorBrown   = LXW_COLOR_BROWN,  
    colorPurple  = LXW_COLOR_PURPLE,      
    colorGray    = LXW_COLOR_GRAY,    
    colorSilver  = LXW_COLOR_SILVER,
    colorRed     = LXW_COLOR_RED,    
    colorMagenta = LXW_COLOR_MAGENTA,
    colorOrange  = LXW_COLOR_ORANGE,
    colorYellow  = LXW_COLOR_YELLOW,    
    colorWhite   = LXW_COLOR_WHITE,
    colorBlack   = LXW_COLOR_BLACK
const
  colorPink    = colorMagenta

proc setFontColor*(format:Format, color:Color) =
  format_set_font_color(format, color) 


proc setUnderline*(format:Format, style:uint8) =
  format_set_underline(format, style) 


proc setFontStrikeout*(format:Format) =
  format_set_font_strikeout(format) 


proc setFontScript*(format:Format, style:uint8) =
  format_set_font_script(format, style) 


proc setAlign*(format:Format, alignment:uint8) =
  format_set_align(format, alignment) 

proc setTextWrap*(format:Format) =
  format_set_text_wrap(format) 

proc setRotation*(format:Format,angle:int16) = 
  format_set_rotation(format, angle) 


proc setIndent*(format:Format, level:uint8) =
  format_set_indent(format, level) 

proc setShrink*(format:Format) = 
  format_set_shrink(format) 
    
proc setPattern*(format:Format, index:uint8) =
  format_set_pattern(format, index) 


proc setBgColor*(format:Format, color:Color) =
  format_set_bg_color(format, color) 

proc setFgColor*(format:Format, color:Color) =
  format_set_fg_color(format, color) 


# Set borders
proc setBorder*(format:Format, style:uint8) =
  format_set_border(format, style) 
    
proc setBottom*(format:Format, style:uint8) =
  format_set_bottom(format, style) 
    
proc setTop*(format:Format, style:uint8) =
  format_set_top(format, style) 
    
proc setLeft*(format:Format, style:uint8) =
  format_set_left(format, style ) 
    
proc setRight*(format:Format, style:uint8) =
  format_set_right(format, style) 


# Set border's colors
proc setBorderColor*(format:Format, color:Color) =
  format_set_border_color(format, color) 

proc setBottomColor*(format:Format, color:Color) =   
  format_set_bottom_color(format, color) 
    
proc setTopColor*(format:Format, color:Color) =    
  format_set_top_color(format, color)  
    
proc setLeftColor*(format:Format, color:Color) =    
  format_set_left_color(format, color)  

proc setRightColor*(format:Format, color:Color) =    
  format_set_right_color(format, color) 



proc setDiagType*(format:Format, typ:uint8) =
  format_set_diag_type(format, typ) 

proc setDiagBorder*(format:Format, style:uint8) =  
  format_set_diag_border(format, style) 
    
proc setDiagColor*(format:Format, color:Color) =
  format_set_diag_color(format, color) 


proc setFontOutline*(format:Format) =
  format_set_font_outline(format) 
    
proc setFontShadow*(format:Format) =
  format_set_font_shadow(format) 

#[

proc lxw_format_new*(): ptr lxw_format  
                                     
proc lxw_format_free*(format: ptr lxw_format)  
    
proc lxw_format_get_xf_index*(format: ptr lxw_format): int32 
    
proc lxw_format_get_dxf_index*(format: ptr lxw_format): int32 
    
proc lxw_format_get_font_key*(format: ptr lxw_format): ptr lxw_font 
    
proc lxw_format_get_border_key*(format: ptr lxw_format): ptr lxw_border 
    
proc lxw_format_get_fill_key*(format: ptr lxw_format): ptr lxw_fill 



proc format_set_num_format*(format: ptr lxw_format; num_format: cstring) 
    
proc format_set_num_format_index*(format: ptr lxw_format; index: uint8) 




    
proc format_set_font_family*(format: ptr lxw_format; value: uint8) 
    
proc format_set_font_charset*(format: ptr lxw_format; value: uint8) 
    
proc format_set_font_scheme*(format: ptr lxw_format; font_scheme: cstring) 
    
proc format_set_font_condense*(format: ptr lxw_format) 
    
proc format_set_font_extend*(format: ptr lxw_format) 
    
proc format_set_reading_order*(format: ptr lxw_format; value: uint8) 
    
proc format_set_theme*(format: ptr lxw_format; value: uint8) 
    
proc format_set_hyperlink*(format: ptr lxw_format) 
    
proc format_set_color_indexed*(format: ptr lxw_format; value: uint8) 
    
proc format_set_font_only*(format: ptr lxw_format) 
    
]#


