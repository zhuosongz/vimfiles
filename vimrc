" System vimrc file for MacVim
"
" Maintainer:	Bjorn Winckler <bjorn.winckler@gmail.com>
" Last Change:	Sat Aug 29 2009
if has("user_commands")
    command! -bang -nargs=? -complete=file E e<bang> <args>
    command! -bang -nargs=? -complete=file W w<bang> <args>
    command! -bang -nargs=? -complete=file Wq wq<bang> <args>
    command! -bang -nargs=? -complete=file WQ wq<bang> <args>
    command! -bang Wa wa<bang>
    command! -bang WA wa<bang>
    command! -bang Q q<bang>
    command! -bang QA qa<bang>
    command! -bang Qa qa<bang>
endif

" set nocompatible

filetype plugin indent on
syntax on

" 设置中文环境
if has("gui_running")
    set encoding=utf-8
    set fileencodings=ucs-bom,utf-8,chinese,prc,taiwan,latin-1

    if has("win32")
        set fileencoding=chinese
    else
        set fileencoding=utf-8
    endif

    let &termencoding=&encoding

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8
endif


" 设置备份文件存储位置
set backupdir=.backup/,~/backup/,/tmp//
set directory=.swp/,~/swp/,/tmp//
set undodir=.undo/,~/undo/,/tmp//
set nobackup! "不生成备份文件（~文件）。

" ===============================================================
" plug setting 
if  has("win32")
	call plug#begin('~/vimfiles/bundle')
else 
	call plug#begin('~/Dropbox/config/vim/.vim/bundle')
endif
"
"
" Plugins 
" 定义textobj 模块
Plug 'kana/vim-textobj-user'
Plug 'rbonvall/vim-textobj-latex'
Plug 'pocke/vim-textobj-markdown'
Plug 'tpope/vim-surround'


Plug 'altercation/vim-colors-solarized'


" Unisnips
" 
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<F2>"
let g:UltiSnipsJumpForwardTrigger="<F3>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

Plug 'sillybun/zyt-snippet'


" easy align 
"
Plug 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
vmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" 用句点重高级插件
Plug 'tpope/vim-repeat'
" 添加注释的插件 用 gc 切换
Plug 'tpope/vim-commentary'

" 自动补全的插件
Plug 'shougo/neocomplete.vim'
" ==================================================
"   Settings for neocomplete
" ==================================================
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w-'
let g:neocomplete#keyword_patterns._ = '\h[\w\-]*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" ==================================================
"   End of setting of neocomplete
" ==================================================

" latex 配置
Plug 'lervag/vimtex'
" Plug 'gerw/vim-latex-suite'
let g:vimtex_syntax_enable=0
autocmd! BufNewFile,BufRead *.tex set filetype=tex

"filetype plugin indent on
call plug#end()            " required



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu                    " 显示行号
set rnu                   " 显示相对行号
set shiftwidth=4
set autoindent            " 自动对齐
set nohls!                " 全局性地关闭令人讨厌的模式高亮（特别是换行符）：
match DiffAdd '\%>310v.*' " 文档的一行不超过310个字符
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set so=1
set cursorline            " 突出显示当前行
set sidescroll=1
set makeprg=make
set tabstop=4
set softtabstop=4
set shiftwidth=4
set fdc=2 
set showcmd               " 显示未完成的命令
set noerrorbells          " 关闭警告提示音
set vb t_vb=
set ruler                 " 右下角显示位置

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set bg=dark
" set sidescrolloff=1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
set formatoptions+=m      " 允许对中文换行。
set nohlsearch
set tw=110
set lines=30
set columns=110

if  has("win32")
	set guioptions-=T              " 去除工具栏
	set guioptions-=l              " 去除左边的滚动条
	set guioptions-=L              " 去除左边的滚动条
	set guifont=Consolas:h14       " 设置字体
    set backspace=indent,eol,start " better backspace
endif
" set guioptions-=m              " 去除顶部的菜单栏
" set guioptions-=r              " 去除右边的滚动条
" set guioptions-=R              " 去除右边的滚动条
