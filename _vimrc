set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
    let opt = '-a --binary '
    if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
    if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
    let arg1 = v:fname_in
    if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
    let arg2 = v:fname_new
    if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
    let arg3 = v:fname_out
    if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
    let eq = ''
    if $VIMRUNTIME =~ ' '
        if &sh =~ '\<cmd'
            let cmd = '""' . $VIMRUNTIME . '\diff"'
            let eq = '"'
        else
            let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
        endif
    else
        let cmd = $VIMRUNTIME . '\diff'
    endif
    silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

" call pathogen  
" filetype off  
call pathogen#infect()
call pathogen#runtime_append_all_bundles()  
filetype plugin indent on

"=====================================================================================



"=============================基本设定================================================
"帮助文档默认中文 
set helplang=cn 

"设定映射标
let mapleader   = ","
let g:mapleader = ","

"设定cursor
" set guicursor=n-v-c-i:block-Cursor

"_vimrc
map <leader>s :source $vim/_vimrc<cr>

"快速打开_vimrc(.vimrc)进行编辑，键盘操作
map <leader>e :e! $vim/_vimrc<cr>

"保存和搜索
nmap <leader>w :w!<cr>


"快速切换窗口 只要用ctrl键+j[k,h,l],就可以，不用原来的ctrl+w j[k,h,l]的方式
map <C-j> <C-W>j 
map <C-k> <C-W>k 
map <C-h> <C-W>h 
map <C-l> <C-W>l

" map j to gj and k to gk, so line navigation ignores line wrap
nmap j gj
nmap k gk

"自动清除行尾空格
map <F5> :%s/\s*$//g<cr>:noh<cr>''

"设定文字以及colorscheme
set guifont=Menlo:h14:i:cANSI

" set guifontwide=新宋体:h10
set lines=40
set t_Co=256
set background=dark

colorscheme ir_dark
let g:solarized_italic=0

" lucius
"solarized " jellybeans Molokai cobalt ir_dark


"设置开启语法高亮
syntax on

" 设置语法高亮度
set syn=cpp

"显示行号
set nu!

" 查找结果高亮度显示, 搜索不区分大小写
set ignorecase
set hlsearch

"启动时不显示捐赠提示
set shortmess=atI

"关闭错误提示
set notagbsearch

" tab宽度
set tabstop=4
" set cindent 
set shiftwidth=4
set expandtab "使用空格代替tab键  

" set smarttab
set softtabstop=4

map <F7> :%retab! <cr>

"智能缩进
set autoindent 
set smartindent 

"关闭遇到错误时的声音提示
autocmd VimEnter * set vb t_vb=

"设置不自动备份
set nobackup

" 自动重新读入
set autoread
set tags=tags;

" 自动改变当前目录
" if has('netbeans_intg')
"     set autochdir
" endif

" 高亮光标行 
set cursorline

syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全

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
    source $VIMRUNTIME/mswin.vim

    " f11 最大化
    nmap <f11> :call libcallnr('fullscreen.dll', 'ToggleFullScreen', 0)<cr>
    nmap <Leader>ff :call libcallnr('fullscreen.dll', 'ToggleFullScreen', 0)<cr>

    " 自动最大化窗口
    au GUIEnter * simalt ~x

    " 给 Win32 下的 gVim 窗口设置透明度
    " au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 247)

    " 字体配置
    " exec 'set guifont='.iconv('Monaco', &enc, 'utf-8').':h12'
    " exec 'set guifontwide='.iconv('Microsoft\ YaHei', &enc, 'gbk').':h10'
endif
"=====================================================================================



"===================================在windows下的编码设置=============================
set encoding=utf-8  
set fileencodings=utf-8,chinese,latin-1  
if has("win32")  
    set fileencoding=utf-8
else    
    set fileencoding=utf-8  
endif  

"解决菜单乱码  
source $VIMRUNTIME/delmenu.vim  
source $VIMRUNTIME/menu.vim  

"解决consle输出乱码  
language messages zh_CN.utf-8  
"=====================================================================================


" ======================================新建标签页快捷键==============================
nmap <A-w>   :tabnew<cr>
nmap <C-m>   :tabprevious<cr>
nmap <C-n>   :tabnext<cr>
nmap <C-k>   :tabclose<cr>
nmap <C-Tab> :tabnext<cr>
"=====================================================================================



"=============================括号、引号、中括号等自动匹配============================
inoremap ( () <Left><ESC>  
inoremap { {} <Left><ESC>
inoremap [ [] <Left><ESC>
inoremap < <> <Left><ESC>
inoremap " "" <Left><ESC>
inoremap ' '' <Left><ESC>
"=====================================================================================


"===================================插入模式方向键==================================
inoremap <A-j> <Left>
inoremap <A-k> <Down>
inoremap <A-i> <Up>
inoremap <A-l> <Right>
"=====================================================================================



"===================================窗口启动设定======================================
if has("gui_running")
    au GUIEnter * simalt ~x  " 窗口启动时自动最大化
    "set guioptions-=m       " 隐藏菜单栏
    set guioptions-=T        " 隐藏工具栏
    set guioptions-=L       " 隐藏左侧滚动条
    " set guioptions-=r       " 隐藏右侧滚动条
    "set guioptions-=b       " 隐藏底部滚动条
    "set showtabline=0       " 隐藏Tab栏
endif

set laststatus=2                         
set cmdheight=2      
"=====================================================================================



"==================================命令行于状态行======================================
set ch=1
set stl=\ [File]\ %F%m%r%h%y[%{&fileformat},%{&fileencoding}]\ %w\ \ [PWD]\ %r%{GetPWD()}%h\ %=\ [Line]%l/%L\ %=\[%P]
set ls=2 " 始终显示状态行
set wildmenu "命令行补全以增强模式运行
"======================================================================================


"===================================获取当前目录=======================================
func! GetPWD()
    return substitute(getcwd(), "", "", "g")
endfunction
" map <F5> :execute "cd" expand("%:h")<CR>
" set autochdir       "自动切换工作目录，以当前打开的文件所在目录为准
"定义工作目录
let g:Source="D:/workspace/"
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
nmap <silent> <leader>nt :NERDTree<cr>
let NERDTreeShowBookmarks=1
let NERDTreeWinSize=20
"======================================================================================


"=====================================设置FuzzyFinder==================================
map <leader>F :FufFile<CR>
map <leader>f :FufTaggedFile<CR>
map <leader>g :FufTag<CR>
map <leader>b :FufBuffer<CR>
"======================================================================================


"======================================Command-T=======================================
nmap <silent><leader>t :CommandT<cr>
let g:CommandTMaxFiles=40000
set wildignore=*.pdf,*.o  " ignore certain file names
set wildignore+=*.o,*.obj,*.git,*.png,*.jpg,*.java,*.dll,*.gif
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
let Tlist_Ctags_Cmd = 'E:\ChrisLattner\ctags58\ctags58'
"=====================================Tlist提示==========================================



"=====================================TagBar提示==========================================
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin='ctags'
let g:tagbar_width=30
"========================================================================================


"====================================neocomplcache设置===================================
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1

" disalbe to auto complete
let g:neocomplcache_disable_auto_complete = 1
let g:neocomplcache_disable_select_mode_mappings = 1

" Use smartcase.
let g:neocomplcache_enable_smart_case = 1

" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1

" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1

" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions',
    \ 'python' : $Vim.'/vimfiles/dict/complete-dict'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
" imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
"========================================================================================

"====================================Surper Tab==========================================
let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
"========================================================================================


"====================================omni completion=====================================
set ofu=syntaxcomplete#Complete
"========================================================================================

"====================================ConqueTerm Powershell.exe ==========================
nmap <A-t> :ConqueTermVSplit Powershell.exe<cr>   
"========================================================================================

"===============================js设置===================================================
au FileType html,python,ruby,vim,css,javascript setl shiftwidth=4
au FileType html,python,ruby,vim,css,javascript setl tabstop=4
au FileType java,php,ruby setl shiftwidth=4
au FileType java,php,ruby setl tabstop=4
set smarttab

"jquery语法高亮
au BufRead,BufNewFile *.js set syntax=jquery

"设置JS字典  
autocmd FileType javascript set dictionary=$vim/vimfiles/dict/javascript.dict  

" 打开javascript对dom、html和css的支持 
let javascript_enable_domhtmlcss=1   
"======================================================================================


"===============================设置python语法高亮=====================================
au BufNewFile,BufRead *.py,*.pyw set syntax=python
let g:pydiction_location = $Vim.'/vimfiles/dict/complete-dict'
au FileType python set ft=python.django 
" au FileType html set ft=htmldjango.html
