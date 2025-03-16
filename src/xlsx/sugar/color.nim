import ../wrapper/xlsxwriter

type
  ColorObj* = lxw_color_t # uint32
  #Color* = ref Color
  
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
  colorPink*    = colorMagenta


# converter toColor*(c:Colors): ColorObj = 
#   c.uint32