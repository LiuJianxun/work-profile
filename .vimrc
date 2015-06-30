syntax on

" 解决 vim 无法使用退格键删除
set nocompatible
set backspace=indent,eol,start

set number
set autoindent
"set smartindent
set expandtab
set ts=4
set shiftwidth=4
" 高亮当前行
set cursorline
"hi cursorline   cterm=NONE ctermbg=lightgray ctermfg=NONE
hi cursorline   cterm=NONE ctermbg=234 ctermfg=NONE
" 保存文件时不要生成备份文件
set nobackup
" just for encode
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix
set encoding=utf-8
" 高亮搜索词
set hlsearch
set incsearch
" set foldmethod
set fdm=indent
"set completeopt=longest

" 设置粘贴模式
"set paste

" map tags list
map <F3> :TlistToggle<CR>

"hi CursorLine  cterm=NONE   ctermbg=gray ctermfg=NONE
"hi CursorColumn cterm=NONE ctermbg=NONE ctermfg=NONE

" 自动补全菜单控制
set completeopt=longest,menu

" 打开文件时检测文件类型,自动匹配
filetype on
filetype plugin on
filetype indent on

" 记住上次编辑的位置
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif

" 高亮自定义
hi Comment ctermfg=blue

" 设置自动补全弹出层背景色为粉红
highlight Pmenu ctermbg=magenta

"自定义快捷键
vmap <C-S-P>    dO#endif<Esc>PO#if 0<Esc>
" 函数注释
map <F4> <Esc>:Dox<cr>
" 文件版权声明
map <F5> <Esc>:DoxAuthor<cr>
" Copyright
map <F6> <Esc>:DoxLic<cr>

" vim tabs conf
map <F7> :tabp <CR>
map <F8> :tabn <CR>
" 改变浏览的启动目录
set browsedir=current

" 分割窗口时保持相等的宽/高
set equalalways

