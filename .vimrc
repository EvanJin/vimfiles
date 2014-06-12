" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" behave mswin

" call pathogen
" filetype off
call pathogen#infect()
call pathogen#runtime_append_all_bundles()

set nocompatible
set regexpengine=1
syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全

set encoding=utf-8
"=====================================================================================



"=============================基本设定================================================
"帮助文档默认中文
" set helplang=cn

"设定映射标
let mapleader   = ","
let g:mapleader = ","

"set crontab editor success at the right path
autocmd FileType crontab setlocal nowritebackup

highlight NonText guifg=#E6E1DC guibg=#111111

" 鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key
"设定cursor
" set guicursor=n-v-c-i:block-Cursor

"_vimrc
map <leader>s :source $HOME/.vimrc<cr>

"快速打开_vimrc(.vimrc)进行编辑，键盘操作
map <leader>e :e! $HOME/.vimrc<cr>

"保存和搜索
nmap <leader>w :w!<cr>
nmap <leader>q :wq<cr>
nmap qq :q!<cr>

" 切割窗口
nmap <leader>sp :split<cr>
nmap <leader>vsp :vsplit<cr>


"快速切换窗口 只要用ctrl键+j[k,h,l],就可以，不用原来的ctrl+w j[k,h,l]的方式
map <C-j> <C-W>j
map <S-k> <C-W>k
map <S-h> <C-W>h
map <S-l> <C-W>l

" map j to gj and k to gk, so line navigation ignores line wrap
nmap j gj
nmap k gk

"设定文字以及colorscheme
" set guifont=DejaVu_Sans_Mono_for_Powerline:h13
" set guifont=Menlo:h13
" set guifont=Menlo_for_Powerline:h12.5
" set guifont=Osaka-Mono:h15
" set guifont=Monaco_for_Powerline:h13
set guifont=Anonymice_Powerline_Bold:h15
" set guifont=Anonymice_Powerline:h15
" set guifont=Inconsolata_for_Powerline:h14.5
" set guifont=Monaco_for_Powerline:h13
" set guifont=Source_Code_Pro_Medium:h12.5
" set guifont=Source_Code_Pro_for_Powerline:h13
" set guifont=Meslo_LG_M_Regular_for_Powerline:h13
" set guifont=PowerlineSymbols:h13.5
" set guifont=Ubuntu_Mono_derivative_Powerline:h14

" let g:solarized_termtrans=1
set t_Co=256
set background=dark
colorscheme base16-twilight
 " nice curls on misspelled words (borrowed from solarized)

"设置开启语法高亮
syntax on

" 设置语法高亮度
set syn=cpp

"显示行号
set nu!
" set numberwidth=2

" 查找结果高亮度显示, 搜索不区分大小写
set ignorecase smartcase hlsearch

"启动时不显示捐赠提示
set shortmess=atI

"关闭错误提示
set notagbsearch

" tab宽度
set tabstop=2
set shiftwidth=2
set expandtab "使用空格代替tab键
set softtabstop=2
set list listchars=tab:\ \ ,trail:·

map <F7> :%retab<cr>

"智能缩进
set autoindent
" set smartindent
" set cindent

"文本折行
" set textwidth=120

"关闭遇到错误时的声音提示
autocmd VimEnter * set vb t_vb=

"设置不自动备份
set nobackup
set noswapfile

" 自动重新读入
set autoread
" set tags=tags;

" 自动改变当前目录
" if has('netbeans_intg')
"     set autochdir
" endif

" 高亮光标行
" set cursorline
" set nocursorline
" set colorcolumn=120
" set cursorcolumn

" 整词换行
set linebreak

" 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set showmatch


"Toggle Menu and Toolbar F2操作工具栏
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
            \set guioptions-=T <Bar>
            \set guioptions-=m <bar>
            \else <Bar>
            \set guioptions+=T <Bar>
            \set guioptions+=m <Bar>
            \endif<CR>

"F3取消高亮搜索
nmap <F3> :nohlsearch<CR>
" =========
" GUI
" =========
if has("win32")
    " set guioptions=cr

    " Windows 兼容配置
    " source $VIMRUNTIME/mswin.vim

    " f11 最大化
    " nmap <f11> :call libcallnr('fullscreen.dll', 'ToggleFullScreen', 0)<cr>
    " nmap <Leader>ff :call libcallnr('fullscreen.dll', 'ToggleFullScreen', 0)<cr>

    " 自动最大化窗口
    " au GUIEnter * simalt ~x

    " 给 Win32 下的 gVim 窗口设置透明度
    " au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 243)

    " 字体配置
    " exec 'set guifont='.iconv('Monaco', &enc, 'utf-8').':h12'
    " exec 'set guifontwide='.iconv('Microsoft\ YaHei', &enc, 'gbk').':h10'
endif
"=====================================================================================



"===================================在windows下的编码设置=============================
scriptencoding utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936

"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"解决consle输出乱码
language messages zh_CN.utf-8
set langmenu=zh_CN.utf-8
"=====================================================================================


" ======================================新建标签页快捷键==============================
nmap <C-e>   :tabnew<cr>
nmap <C-m>   :tabprevious<cr>
nmap <C-n>   :tabnext<cr>
nmap <C-k>   :tabclose<cr>
nmap <C-Tab> :tabnext<cr>
nmap <C-s> :w<cr>
"=====================================================================================



"=============================括号、引号、中括号等自动匹配============================
" inoremap ( () <Left><ESC>
" inoremap { {} <Left><ESC>
" inoremap [ [] <Left><ESC>
" inoremap < <> <Left><ESC>
" inoremap " "" <Left><ESC>
" inoremap ' '' <Left><ESC>
"=====================================================================================


"===================================插入模式方向键==================================
inoremap <A-j> <Left>
inoremap <A-k> <Down>
inoremap <A-i> <Up>
inoremap <A-l> <Right>
"=====================================================================================



"===================================窗口启动设定======================================
if has("gui_running")
    " au GUIEnter * simalt ~x  " 窗口启动时自动最大化
    set guioptions-=m       " 隐藏菜单栏
    set guioptions-=T        " 隐藏工具栏
    set guioptions-=L       " 隐藏左侧滚动条
    set guioptions-=r       " 隐藏右侧滚动条
    set guioptions-=b       " 隐藏底部滚动条
    "set showtabline=0       " 隐藏Tab栏
    set go=aAce              " 去掉难看的工具栏和滑动条
    set transparency=5      " 透明背景
    set showtabline=2        " 开启自带的tab栏
    " set columns=120          " 设置宽
    " set lines=93             " 设置长
endif
"=====================================================================================



"==================================命令行于状态行======================================
" set ch=1
" set laststatus=2
set wildmenu "命令行补全以增强模式运行
if has("statusline") && !&cp
  set laststatus=2  " always show the status bar

  " Start the status line
  set stl=\ [File]\ %F%m%r%h%y[%{&fileformat},%{&fileencoding}]\ %w\ \ [PWD]\ %r%{GetPWD()}%h\ %=\ [Line]%l/%L\ %=\[%P] \%{fugitive#statusline()}
endif
"======================================================================================


"===================================获取当前目录=======================================
func! GetPWD()
    return substitute(getcwd(), "", "", "g")
endfunction

" map <F5> :execute "cd" expand("%:h")<CR>
" set autochdir       "自动切换工作目录，以当前打开的文件所在目录为准
"
"定义工作目录
let g:Source="~/workspace/"

function Cw(dir)
    execute ":cd " . a:dir
endfunction
call Cw(g:Source)
com -nargs=1 Chw  call Cw()
"======================================================================================


"=====================================折叠设置=========================================
" set foldenable
" 设置语法折叠
" manual  手工定义折叠
" indent  更多的缩进表示更高级别的折叠
" expr    用表达式来定义折叠
" syntax  用语法高亮来定义折叠
" diff    对没有更改的文本进行折叠
" marker  对文中的标志折叠
set foldmethod=indent

"折叠相关的快捷键
"zR 打开所有的折叠
"za Open/Close (toggle) a folded group of lines.
"zA Open a Closed fold or close and open fold recursively.
"zi 全部 展开/关闭 折叠
"zo 打开 (open) 在光标下的折叠
"zc 关闭 (close) 在光标下的折叠
"zC 循环关闭 (Close) 在光标下的所有折叠
"zM 关闭所有可折叠区域
"设置折叠区域的宽度
"set foldcolumn=0
"设置折叠层数为
"setlocal foldlevel=1
"新建的文件，刚打开的文件不折叠
autocmd! BufNewFile,BufRead * setlocal nofoldenable
"======================================================================================


"=====================================NERDTree插件的快捷键=============================
nmap <silent> <F6> :NERDTreeToggle<cr> :NERDTreeMirror<cr>
let NERDTreeShowBookmarks=1
let NERDTreeWinSize=30
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen=0
let NERDTreeWinPos='left'
"======================================================================================


"=====================================设置FuzzyFinder==================================
" map <leader>F :FufFile<CR>
" map <leader>f :FufTaggedFile<CR>
" map <leader>g :FufTag<CR>
" map <leader>b :FufBuffer<CR>
" map <leader>fc :FufCoverageFile!<CR>
"======================================================================================


"======================================Command-T=======================================
nmap <silent><leader>t :CommandT<cr>
let g:CommandTMaxFiles=40000
set wildignore=*.pdf,*.o  " ignore certain file names
set wildignore+=*.o,*.obj,*.git,*.png,*.jpg,*.java,*.dll,*.gif,*.zip,*.log,*.sh
set wildignore+=*.sw? " Vim swap files
"======================================================================================



"=====================================MRU插件的快捷键==================================
nmap <silent> <leader>mr :MRU<cr>
"======================================================================================


"=====================================Tlist提示==========================================
map <leader>ti :TlistToggle<CR>
let Tlist_Show_One_File    = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow  = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
if has('eval')
    let Tlist_Inc_Winwidth=0
endif
let Tlist_JS_Settings = 'javascript;s:string;a:array;o:object;f:function'
let g:tlist_javascript_settings = 'javascript;r:var;s:string;a:array;o:object;u:function'
" let Tlist_Ctags_Cmd = 'E:\ChrisLattner\ctags58\ctags58'
"=====================================Tlist提示==========================================



"=====================================TagBar提示==========================================
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin='~/workspace/ctags-5.8/ctags'
let g:tagbar_width=30
let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'JavaScript',
    \ 'kinds'     : [
        \ 'o:objects',
        \ 'f:functions',
        \ 'a:arrays',
        \ 's:strings'
    \ ]
\ }
"========================================================================================


" "====================================neocomplcache设置===================================
" Disable AutoComplPop.
" let g:acp_enableAtStartup = 0

" Use neocomplcache.
" let g:neocomplcache_enable_at_startup = 1
" 
" " disalbe to auto complete
" let g:neocomplcache_disable_auto_complete = 1
" let g:neocomplcache_disable_select_mode_mappings = 1
" 
" " Use smartcase.
" let g:neocomplcache_enable_smart_case = 1
" 
" " Use camel case completion.
" let g:neocomplcache_enable_camel_case_completion = 1
" 
" " Use underbar completion.
" let g:neocomplcache_enable_underbar_completion = 1
" 
" " Set minimum syntax keyword length.
" let g:neocomplcache_min_syntax_length = 3
" let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" 
" " Define dictionary.
" let g:neocomplcache_dictionary_filetype_lists = {
"     \ 'default' : '',
"     \ 'vimshell' : $HOME.'/.vimshell_hist',
"     \ 'scheme' : $HOME.'/.gosh_completions',
"     \ 'python' : $HOME.'/vimfiles/dict/complete-dict'
"     \ }
" 
" " Define keyword.
" if !exists('g:neocomplcache_keyword_patterns')
"   let g:neocomplcache_keyword_patterns = {}
" endif
" let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
" 
" " Plugin key-mappings.
" imap <C-k>     <Plug>(neocomplcache_snippets_expand)
" smap <C-k>     <Plug>(neocomplcache_snippets_expand)
" inoremap <expr><C-g>     neocomplcache#undo_completion()
" inoremap <expr><C-l>     neocomplcache#complete_common_string()
" 
" " SuperTab like snippets behavior.
" imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
" 
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplcache#close_popup()
" inoremap <expr><C-e>  neocomplcache#cancel_popup()
" 
" " AutoComplPop like behavior.
" let g:neocomplcache_enable_auto_select = 1
" 
" " Shell like behavior(not recommended).
" set completeopt+=longest
" let g:neocomplcache_enable_auto_select = 1
" let g:neocomplcache_disable_auto_complete = 1
" inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
" inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" 
" " Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript,coffee setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" 
" " " Enable heavy omni completion.
" if !exists('g:neocomplcache_omni_patterns')
"   let g:neocomplcache_omni_patterns = {}
" endif
" let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
" autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
" let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
" let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
" "========================================================================================
" 
" "====================================Surper Tab==========================================
" let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
" "========================================================================================
" 
" 
" "====================================omni completion=====================================
" set ofu=syntaxcomplete#Complete
" "========================================================================================

"====================================ConqueTerm Powershell.exe ==========================
" nmap <leader>ct:ConqueTermVSplit bash<cr>
"========================================================================================

"====================================      Ctrl-P               =========================
let g:ctrlp_max_files=10000
let g:ctrlp_max_depth = 100
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'find %s -type f'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.gif,*.png,*.jpg,*.markdown
"========================================================================================


"====================================Syntastic plugin ===================================
" let g:syntastic_check_on_open=1
"========================================================================================


"===============================js设置===================================================
au FileType ruby setl shiftwidth=2
au FileType ruby setl softtabstop=2

au FileType html,vim,css,javascript,coffee setl shiftwidth=2
au FileType html,vim,css,javascript,coffee setl softtabstop=2
au FileType html,vim,css,javascript,coffee setl expandtab
au FileType html,vim,css,javascript.coffee setl tabstop=2

"javascript语法高亮
au BufRead,BufNewFile *.js set ft=javascript
" autocmd BufNewFile,BufReadPost *.coffee
" autocmd BufWritePost *.coffee silent CoffeeMake! | cwindow
" nmap <C-b> :CoffeeMake!<cr>
" au BufRead,BufNewFile *.coffee set syntax=javascript
let g:used_javascript_libs = 'underscore,backbone,requirejs,sugar,prelude,jquery'
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
autocmd BufReadPre *.js let b:javascript_lib_use_requirejs = 1

"设置JS字典
autocmd FileType javascript,coffee set dictionary=$HOME/.vim/dict/javascript.dict
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent

" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1
let g:javascript_conceal=1
"======================================================================================


"===============================设置python语法高亮=====================================
au BufNewFile,BufRead *.py,*.pyw set syntax=python
let g:pydiction_location = $HOME.'/.vim/dict/complete-dict'
au FileType python set ft=python.django
" au FileType html set ft=htmldjango.html

"===============================Json Syntax============================================
au! BufRead,BufNewFile *.json set filetype=json
"======================================================================================

"===============================jelleybeans config=====================================
let g:jellybeans_overrides = {
\    'Todo': { 'guifg': '303030', 'guibg': '464343',
\              'ctermfg': 'Black', 'ctermbg': 'Yellow',
\              'attr': 'bold' },
\}
"===============================jelleybeans config=====================================

"===============================powerline config=======================================
let g:airline_powerline_fonts = 1
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.whitespace = 'Ξ'
" let g:airline#extensions#tabline#enabled = 0
let g:airline_theme='zenburn'
" let g:airline_left_sep = ''
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_sep = ''
" let g:airline_symbols = {}
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'
" let g:airline_symbols.branch = '⭠'
" let g:airline_symbols.readonly = '⭤'
" let g:airline_symbols.linenr = '⭡'
"===============================powerline config=======================================



"===============================jsbeautify config=======================================
map <leader>fs :call JsBeautify()<cr>
" or
autocmd FileType javascript map <leader>fs :call JsBeautify()<cr>
" for html
autocmd FileType html map <leader>fs :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css map <leader>fs  :call CSSBeautify()<cr>
"===============================jsbeautify config=======================================



"===============================ultisnips start==========================================
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"===============================ultisnips end============================================


"===============================Youcomplete start========================================
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'gitcommit' : 1,
      \}
let g:ycm_semantic_triggers =  {
      \ 'coffee': ['.'],
      \}
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript,coffee setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"===============================Youcomplete start=======================================

"===============================JsDoc config============================================
let g:jsdoc_allow_input_prompt = 1
"===============================JsDoc config============================================


"===============================less config=============================================
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>
"===============================less config=============================================
