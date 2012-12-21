" Vim color file
" Converted from Textmate theme Shipwreck using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "shipwreck"

hi Cursor ctermfg=234 ctermbg=231 cterm=NONE guifg=#1e1e1a guibg=#f8f8f0 gui=NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#49483e gui=NONE
hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#353531 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#353531 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#353531 gui=NONE
hi LineNr ctermfg=245 ctermbg=236 cterm=NONE guifg=#8f8f8d guibg=#353531 gui=NONE
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#5f5f5c guibg=#5f5f5c gui=NONE
hi MatchParen ctermfg=75 ctermbg=NONE cterm=underline guifg=#5caaf6 guibg=NONE gui=underline
hi StatusLine ctermfg=15 ctermbg=59 cterm=bold guifg=#ffffff guibg=#5f5f5c gui=bold
hi StatusLineNC ctermfg=15 ctermbg=59 cterm=NONE guifg=#ffffff guibg=#5f5f5c gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#49483e gui=NONE
hi IncSearch ctermfg=234 ctermbg=186 cterm=NONE guifg=#1e1e1a guibg=#e6db74 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=155 ctermbg=22 cterm=NONE guifg=#b4f83a guibg=#2c321c gui=NONE
hi Folded ctermfg=95 ctermbg=234 cterm=NONE guifg=#75715e guibg=#1e1e1a gui=NONE

hi Normal ctermfg=15 ctermbg=234 cterm=NONE guifg=#ffffff guibg=#1e1e1a gui=NONE
hi Boolean ctermfg=148 ctermbg=22 cterm=NONE guifg=#a6e22e guibg=#2c321c gui=NONE
hi Character ctermfg=155 ctermbg=22 cterm=NONE guifg=#b4f83a guibg=#2c321c gui=NONE
hi Comment ctermfg=95 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=NONE
hi Conditional ctermfg=75 ctermbg=NONE cterm=NONE guifg=#5caaf6 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=75 ctermbg=NONE cterm=NONE guifg=#5caaf6 guibg=NONE gui=NONE
hi DiffAdd ctermfg=15 ctermbg=64 cterm=bold guifg=#ffffff guibg=#44810a gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#890605 guibg=NONE gui=NONE
hi DiffChange ctermfg=15 ctermbg=23 cterm=NONE guifg=#ffffff guibg=#1f3451 gui=NONE
hi DiffText ctermfg=15 ctermbg=24 cterm=bold guifg=#ffffff guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=198 cterm=NONE guifg=#f8f8f0 guibg=#ff0080 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=198 cterm=NONE guifg=#f8f8f0 guibg=#ff0080 gui=NONE
hi Float ctermfg=198 ctermbg=NONE cterm=NONE guifg=#ff0080 guibg=NONE gui=NONE
hi Function ctermfg=48 ctermbg=NONE cterm=NONE guifg=#00ff80 guibg=NONE gui=NONE
hi Identifier ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi Keyword ctermfg=75 ctermbg=NONE cterm=NONE guifg=#5caaf6 guibg=NONE gui=NONE
hi Label ctermfg=186 ctermbg=58 cterm=NONE guifg=#e6db74 guibg=#323123 gui=NONE
hi NonText ctermfg=59 ctermbg=235 cterm=NONE guifg=#3e3e36 guibg=#292925 gui=NONE
hi Number ctermfg=198 ctermbg=NONE cterm=NONE guifg=#ff0080 guibg=NONE gui=NONE
hi Operator ctermfg=75 ctermbg=NONE cterm=NONE guifg=#5caaf6 guibg=NONE gui=NONE
hi PreProc ctermfg=75 ctermbg=NONE cterm=NONE guifg=#5caaf6 guibg=NONE gui=NONE
hi Special ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi SpecialKey ctermfg=59 ctermbg=236 cterm=NONE guifg=#3e3e36 guibg=#353531 gui=NONE
hi Statement ctermfg=75 ctermbg=NONE cterm=NONE guifg=#5caaf6 guibg=NONE gui=NONE
hi StorageClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi String ctermfg=186 ctermbg=58 cterm=NONE guifg=#e6db74 guibg=#323123 gui=NONE
hi Tag ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66ccff guibg=NONE gui=NONE
hi Title ctermfg=15 ctermbg=NONE cterm=bold guifg=#ffffff guibg=NONE gui=bold
hi Todo ctermfg=95 ctermbg=NONE cterm=inverse,bold guifg=#75715e guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=75 ctermbg=NONE cterm=NONE guifg=#5caaf6 guibg=NONE gui=NONE
hi rubyFunction ctermfg=48 ctermbg=NONE cterm=NONE guifg=#00ff80 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=155 ctermbg=22 cterm=NONE guifg=#b4f83a guibg=#2c321c gui=NONE
hi rubyConstant ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=186 ctermbg=58 cterm=NONE guifg=#e6db74 guibg=#323123 gui=NONE
hi rubyBlockParameter ctermfg=221 ctermbg=NONE cterm=NONE guifg=#fadc3f guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=75 ctermbg=NONE cterm=NONE guifg=#5caaf6 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=249 ctermbg=NONE cterm=NONE guifg=#b3b3b3 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ff8000 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ff8000 guibg=NONE gui=NONE
hi rubyEscape ctermfg=155 ctermbg=22 cterm=NONE guifg=#b4f83a guibg=#2c321c gui=NONE
hi rubyControl ctermfg=75 ctermbg=NONE cterm=NONE guifg=#5caaf6 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=75 ctermbg=NONE cterm=NONE guifg=#5caaf6 guibg=NONE gui=NONE
hi rubyException ctermfg=75 ctermbg=NONE cterm=NONE guifg=#5caaf6 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=95 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=155 ctermbg=22 cterm=NONE guifg=#b4f83a guibg=#2c321c gui=NONE
hi javaScriptFunction ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66ccff guibg=NONE gui=NONE
hi yamlAnchor ctermfg=249 ctermbg=NONE cterm=NONE guifg=#b3b3b3 guibg=NONE gui=NONE
hi yamlAlias ctermfg=249 ctermbg=NONE cterm=NONE guifg=#b3b3b3 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=186 ctermbg=58 cterm=NONE guifg=#e6db74 guibg=#323123 gui=NONE
hi cssURL ctermfg=221 ctermbg=NONE cterm=NONE guifg=#fadc3f guibg=NONE gui=NONE
hi cssFunctionName ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi cssColor ctermfg=155 ctermbg=22 cterm=NONE guifg=#b4f83a guibg=#2c321c gui=NONE
hi cssPseudoClassId ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi cssClassName ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi cssValueLength ctermfg=198 ctermbg=NONE cterm=NONE guifg=#ff0080 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
