" Vim color scheme
<<<<<<< HEAD
" Name:         yytextmate.vim
" Maintainer:  	Dexter.Yy <dexter.yy@gmail.com> 
" Link:         http://www.limboy.com
" (originally looked at Ralph Amissah <ralph@amissah.com>)

:set background=dark
:highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
if has("gui_running")
	:hi Normal guifg=#f9f9f9 guibg=#070914
	:hi Cursor guibg=Yellow
	:hi Visual guibg=#2D498B gui=none
	:hi Pmenu guifg=#333333 guibg=#E3E3E3
	:hi PmenuSel guifg=#ffffff guibg=#0264A2
	
	":hi LineNr guifg=grey20
	:hi LineNr guifg=#666666 guibg=#E6E6E6
	:hi VertSplit guibg=#c2bfa5 guifg=grey40 gui=none
	:hi Folded guifg=grey40 guibg=black
	:hi FoldColumn guifg=grey20 guibg=black
	:hi IncSearch guibg=black guifg=yellow 
	:hi ModeMsg guifg=goldenrod
	:hi MoreMsg guifg=SeaGreen
	:hi NonText guifg=RoyalBlue guibg=#151825
	:hi Question guifg=springgreen
	:hi Search guibg=#0099ff guifg=White
	:hi SpecialKey guifg=#D3FE36
	:hi Title guifg=#ff9900 gui=NONE
	:hi Statement guifg=#FFE619
	:hi htmlStatement guifg=#99B5D9
	:hi String guifg=#61ce38
	:hi Comment guifg=grey35 gui=italic
	:hi CommentDoc guifg=grey20 guibg=black gui=italic
	:hi CommentDocTags guifg=grey35 guibg=black
	:hi Conditional guifg=#FFE619
	:hi Repeat guifg=#FFE619
	:hi Constant guifg=#D4FF36
	:hi Boolean guifg=#D4FF36
	:hi Number guifg=#D4FF36
	:hi Special guifg=#99B5D9
	:hi Identifier guifg=#ff9900 gui=NONE
	:hi Include guifg=red
	:hi PreProc guifg=grey
	:hi Operator gui=NONE guifg=#FFE619
	:hi Define guifg=#FFE619 gui=NONE
	:hi Type guifg=#99B5D9
	:hi Function guifg=#FF6900 gui=NONE
	:hi Structure guifg=#FF6900 gui=NONE
	:hi Label guifg=#FF6900
	:hi Exception guifg=#FF6900
	:hi Builtin guifg=#99B5D9

	:hi Ignore guifg=grey40
	:hi StatusLineNC guibg=#c2bfa5 guifg=grey40 gui=none
	:hi StatusLine guibg=#c2bfa5 guifg=black gui=none 
	:hi Todo guifg=orangered guibg=yellow2
	:hi WarningMsg guifg=#CC1D20
	:hi Debug guifg=#CC1D20
	:hi ErrorMsg guifg=#F9F9F9 guibg=#BF0013
	:hi Error guifg=#F9F9F9 guibg=#BF0013 
	:hi SpellErrors guifg=#F9F9F9 guibg=#BF0013
=======
"
" Name:         blackboard.vim
" Maintainer:   Ben Wyrosdick <ben.wyrosdick@gmail.com> 
" Last Change:  20 August 2009
" License:      public domain
" Version:      1.4

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let g:colors_name = "blackboard"

if has("gui_running")
  "GUI Colors
  highlight Normal guifg=White   guibg=#0B1022
  highlight Cursor guifg=Black   guibg=Yellow
  highlight CursorLine guibg=#191E2F
  highlight LineNr guibg=#323232 guifg=#888888
  highlight Folded guifg=#f1f3e8 guibg=#444444
  highlight Pmenu guibg=#84A7C1

  "General Colors
  highlight Comment guifg=#AEAEAE
  highlight Constant guifg=#CAFE1E
  highlight Keyword guifg=#FFDE00
  highlight String guifg=#00D42D
  highlight Type guifg=#84A7C1
  highlight Identifier guifg=#00D42D gui=NONE
  highlight Function guifg=#FF5600 gui=NONE
  highlight clear Search
  highlight Search guibg=#1C3B79
  highlight PreProc guifg=#FF5600

  "HTML Colors
  highlight link htmlTag Type
  highlight link htmlEndTag htmlTag
  highlight link htmlTagName htmlTag

  "Ruby Colors
  highlight link rubyClass Keyword
  highlight link rubyDefine Keyword
  highlight link rubyConstant Type
  highlight link rubySymbol Constant
  highlight link rubyStringDelimiter rubyString
  highlight link rubyInclude Keyword
  highlight link rubyAttribute Keyword
  highlight link rubyInstanceVariable Normal

  "Rails Colors
  highlight link railsMethod Type
>>>>>>> 72cb497973dafa495c7d4170e80e5916b8a3c002
end
