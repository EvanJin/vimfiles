
set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "twilight2"

let s:grey_blue = '#8a9597'
let s:light_grey_blue = '#a0a8b0'
let s:dark_grey_blue = '#1b1b1b'
let s:mid_grey_blue = '#64686c'
let s:beige = '#ceb67f'
let s:light_orange = '#ebc471'
let s:yellow = '#e3d796'
let s:violet = '#9B7040'
let s:green = '#a2a96f'
let s:lightgreen = '#c2c98f'
let s:red = '#d08356'
let s:cyan = '#74dad9'
let s:darkgrey = '#141414'
let s:grey = '#303030'
let s:lightgrey = '#605958'
let s:white = '#fffedc'

if version >= 700
  hi Cursor          guifg=#F8FFF9   guibg=#1B1D1E   gui=none            ctermfg=15      ctermbg=234
  hi CursorIM        guifg=#F8FFF9   guibg=#AEEE00   gui=none            ctermfg=15      ctermbg=234
  hi CursorColumn    guifg=#F8FFF9   guibg=#1B1D1E   gui=none            ctermfg=15      ctermbg=234
  hi CursorLine                      guibg=#1B1D1E   gui=none                            ctermbg=234 

  "Tabpages
  hi TabLine guifg=#a09998 guibg=#202020 
  hi TabLineFill guifg=#a09998 guibg=#202020 
  hi TabLineSel guifg=#a09998 guibg=#404850 

  "P-Menu (auto-completion)
  hi Pmenu guifg=#605958 guibg=#303030 
  hi PmenuSel guifg=#a09998 guibg=#404040 
  "PmenuSbar
  "PmenuThumb
endif

hi Visual guibg=#404040

" hi Cursor guibg=#b0d0f0
hi Cursor          guifg=#F8FFF9   guibg=#1B1D1E   gui=none            ctermfg=15      ctermbg=234
hi CursorIM        guifg=#F8FFF9   guibg=#AEEE00   gui=none            ctermfg=15      ctermbg=234
hi CursorColumn    guifg=#F8FFF9   guibg=#1B1D1E   gui=none            ctermfg=15      ctermbg=234
hi CursorLine                      guibg=#1B1D1E   gui=none                            ctermbg=234


exe 'hi Normal         guifg='.s:white             .' guibg='.s:darkgrey
exe 'hi Underlined     guifg='.s:white             .' guibg='.s:darkgrey        
exe 'hi NonText        guifg='.s:lightgrey         .' guibg='.s:darkgrey
exe 'hi SpecialKey     guifg='.s:grey              .' guibg='.s:darkgrey

exe 'hi LineNr         guifg='.s:mid_grey_blue     .' guibg='.s:dark_grey_blue  
exe 'hi StatusLine     guifg='.s:white             .' guibg='.s:grey            
exe 'hi StatusLineNC   guifg='.s:lightgrey         .' guibg='.s:grey            
exe 'hi VertSplit      guifg='.s:grey              .' guibg='.s:grey            

exe 'hi Folded         guifg='.s:grey_blue         .' guibg='.s:dark_grey_blue  
exe 'hi FoldColumn     guifg='.s:grey_blue         .' guibg='.s:dark_grey_blue  
exe 'hi SignColumn     guifg='.s:grey_blue         .' guibg='.s:dark_grey_blue  

exe 'hi Comment        guifg='.s:mid_grey_blue     .' guibg='.s:darkgrey        
exe 'hi TODO           guifg='.s:grey_blue         .' guibg='.s:darkgrey        

exe 'hi Title          guifg='.s:red               .' guibg='.s:darkgrey        

exe 'hi Constant       guifg='.s:red               .' guibg='.s:darkgrey        
exe 'hi String         guifg='.s:green             .' guibg='.s:darkgrey        
exe 'hi Special        guifg='.s:lightgreen        .' guibg='.s:darkgrey        

exe 'hi Identifier     guifg='.s:grey_blue         .' guibg='.s:darkgrey        
exe 'hi Statement      guifg='.s:beige             .' guibg='.s:darkgrey        
exe 'hi Conditional    guifg='.s:beige             .' guibg='.s:darkgrey        
exe 'hi Repeat         guifg='.s:beige             .' guibg='.s:darkgrey        
exe 'hi Structure      guifg='.s:beige             .' guibg='.s:darkgrey        
exe 'hi Function       guifg='.s:violet            .' guibg='.s:darkgrey        

exe 'hi PreProc        guifg='.s:grey_blue         .' guibg='.s:darkgrey        
exe 'hi Operator       guifg='.s:light_orange      .' guibg='.s:darkgrey        
exe 'hi Type           guifg='.s:yellow            .' guibg='.s:darkgrey        

hi Search guifg=#606000 guibg=#c0c000
hi Directory guifg=#dad085
hi Error guibg=#602020
