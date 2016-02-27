execute pathogen#infect()
syntax on
filetype plugin indent on

let g:rustfmt_autosave = 1

"use vim settings, rather than vi
set nocompatible
"allow backspacing over everything in insert mode
set backspace=indent,eol,start
"4 spaces for indenting
set shiftwidth=2
"4 stops
set tabstop=2
" space instead of tabs
set expandtab
"autoindenting
set autoindent
"no backup file
set nobackup
set nowritebackup

set showcmd
set list
set listchars=tab:>.
set ignorecase
set scs
set showmatch


let c_comment_strings=1

let g:explvertical=1
let g:explSplitRight=1
let g:explStartRight=0

map <Leader>e :Explore<cr>
map <Leader>s :Sexplore<cr>

vnoremap < <gv
vnoremap > >gv
