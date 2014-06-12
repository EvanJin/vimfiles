" Vim color file
" Maintainer:	Kristian Rasmussen kr@iamkristian.com
" Last Change:	2012 Jun 4th

" Based on darkblue
" vimmynights
" Makes the menu bold on vsplits

runtime colors/ir_black.vim
set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight column 80, so you can easily cut off long lines
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cc=80
let colors_name = "vimmynights"

hi Normal		        guifg=#c0c0c0	  guibg=#000000						      ctermfg=gray		  ctermbg=black
hi ErrorMsg	        guifg=#ffffff	  guibg=#287eff						      ctermfg=white		  ctermbg=lightblue
hi Visual           guifg=#1c1c1c   guibg=grey                    ctermfg=234       ctermbg=grey
hi VisualNOS        guifg=darkgray	guibg=white gui=reverse,underline	ctermfg=darkgray ctermbg=white cterm=reverse,underline
hi Todo			        guifg=#444444   guibg=#1248d1						      ctermfg=darkgray  ctermbg=238
hi Search		        guifg=#90fff0 	guibg=#2050d0						      ctermfg=white 		ctermbg=darkblue  cterm=underline term=underline
hi IncSearch	      guifg=#b0ffff 	guibg=#2050d0					   	    ctermfg=darkblue 	ctermbg=gray
                                                                                   " TODO This is a todo
hi SpecialKey	      guifg=cyan					                          ctermfg=darkcyan
hi Directory	      guifg=cyan					                          ctermfg=cyan
hi Title           	guifg=magenta   gui=none 	                    ctermfg=magenta   cterm=bold
hi WarningMsg     	guifg=red					                            ctermfg=red
hi WildMenu		      guifg=yellow    guibg=black 	                ctermfg=yellow    ctermbg=black     cterm=none term=none
hi ModeMsg		      guifg=#22cce2				                          ctermfg=lightblue
hi MoreMsg		      ctermfg=darkgreen 			                      ctermfg=darkgreen
hi Question		      guifg=green     gui=none 		                  ctermfg=green     cterm=none
hi NonText		      guifg=#0030ff				                          ctermfg=darkblue

hi StatusLine	      guifg=blue 	    guibg=lightgray gui=bold 	    ctermfg=blue 	    ctermbg=lightgray cterm=bold term=none
hi StatusLineNC	    guifg=black     guibg=darkgray gui=none		    ctermfg=black 	  ctermbg=gray      cterm=bold term=none
hi VertSplit	      guifg=black     guibg=darkgray gui=none		    ctermfg=black 	  ctermbg=gray      cterm=bold term=none

hi Folded		        guifg=#808080   guibg=#000040				          ctermfg=darkgrey  ctermbg=black     cterm=bold term=bold
hi FoldColumn	      guifg=#808080   guibg=#000040				          ctermfg=darkgrey  ctermbg=black     cterm=bold term=bold
hi LineNr		        guifg=darkgrey 							                  ctermfg=darkgrey  cterm=none

hi DiffAdd		      guibg=darkblue	                              ctermbg=darkblue  cterm=none        term=none
hi DiffChange	      guibg=darkmagenta                             ctermbg=magenta   cterm=none
hi DiffDelete	      guifg=Blue      guibg=DarkCyan gui=bold       ctermfg=blue      ctermbg=cyan
hi DiffText		      guibg=Red       gui=bold                      ctermbg=red       cterm=bold

hi Cursor 		      guifg=white     guibg=blue                    ctermfg=white     ctermbg=blue
hi iCursor 		      guifg=white     guibg=red                     ctermfg=white     ctermbg=red

hi Comment		      guifg=#80a0ff                                 ctermfg=lightblue
hi Constant		      guifg=#ffa0a0                                 ctermfg=magenta   cterm=none
hi Special		      guifg=Orange    gui=none                      ctermfg=brown     cterm=none
hi Identifier	      guifg=#40ffff                                 ctermfg=cyan      cterm=none
hi ExtraWhitespace  guibg=#004f00                                 ctermfg=none      ctermbg=22        cterm=none
hi ColorColumn      guibg=#1c1c1c                                 ctermbg=233       cterm=none
hi CursorLine       guibg=#121212                                 ctermfg=none      ctermbg=233       cterm=NONE
