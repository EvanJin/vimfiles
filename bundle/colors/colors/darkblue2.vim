" Vim color file
" Maintainer: Datila Carvalho <datila@hotmail.com>
" Last Change: May, 19, 2005
" Version: 0.2

" This is a VIM's version of the emacs color theme
" _Dark Blue2_ created by Chris McMahan.

""" Init stuff

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "darkblue2"


""" Colors

" GUI colors
hi Cursor               guifg=#233b5a guibg=Yellow
hi CursorIM             guifg=NONE guibg=Yellow
hi Directory            gui=none guifg=cyan
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
hi DiffText             guibg=grey50
hi ErrorMsg             gui=none guifg=White guibg=gray85
hi VertSplit            gui=none guifg=NONE guibg=gray80
"hi Folded
"hi FoldColumn
"hi IncSearch
hi LineNr				gui=none guifg=lightsteelblue guibg=#132b4a
hi ModeMsg              gui=none
"hi MoreMsg
"hi NonText
hi Normal               guibg=#233b5a guifg=#fff8dc
"hi Question
hi Search               gui=none guifg=#233b5a guibg=lightgoldenrod
"hi SpecialKey
hi StatusLine           guifg=steelblue4 guibg=lightgray 
hi StatusLineNC         guifg=royalblue4 guibg=lightsteelblue
"hi Title
hi Visual               guifg=steelblue guibg=fg
hi VisualNOS            gui=none guifg=steelblue guibg=fg
hi WarningMsg           guifg=White guibg=Tomato
"hi WildMenu

hi User2				guifg=lightskyblue guibg=#021a39 gui=none

" If using Motif/Athena
hi Menu                 guibg=#233b5a guifg=#fff8dc
hi Scrollbar            guibg=bg

" Colors for syntax highlighting
hi Comment              gui=italic guifg=mediumaquamarine

hi Constant             gui=none guifg=lightgoldenrod1
    hi String           guifg=aquamarine
    hi Character        guifg=aquamarine
    hi Number           gui=none guifg=lightgoldenrod1
    hi Boolean          gui=none guifg=lightgoldenrod1
    hi Float            gui=none guifg=lightgoldenrod1

hi Identifier           gui=none guifg=palegreen
    hi Function         guifg=lightskyblue

hi Statement            gui=none guifg=cyan
    hi Conditional      gui=none guifg=cyan
    hi Repeat           gui=none guifg=cyan
    hi Label            guifg=cyan
    hi Operator         guifg=cyan
    "hi Keyword
    "hi Exception

hi PreProc              guifg=lightsteelblue
    hi Include          gui=none guifg=lightsteelblue
    hi Define           guifg=lightsteelblue
    hi Macro            guifg=lightsteelblue
    hi PreCondit        guifg=lightsteelblue

hi Type                 gui=none guifg=palegreen
    hi StorageClass     gui=none guifg=lightgoldenrod1
    hi Structure        gui=none guifg=lightgoldenrod1
    hi Typedef          gui=none guifg=lightgoldenrod1

"hi Special
    ""Underline Character
    "hi SpecialChar
    "hi Tag
    ""Statement
    "hi Delimiter
    ""none comment (in Java at least)
    "hi SpecialComment
    "hi Debug

hi Underlined           gui=underline

hi Ignore               guifg=bg

hi Error                gui=none guifg=White guibg=Red

"hi Todo
