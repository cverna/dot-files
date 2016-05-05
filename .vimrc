""""""""""""""""""""""""""""""""
"""" Genral Settings """""""""""
set encoding=utf-8
autocmd! bufwritepost .vimrc source %
call pathogen#infect()
syntax on
let python_highlight_all=1

set number
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
set noeb vb t_vb=
set laststatus=2

set hidden

:filetype on

:filetype indent on

set textwidth=79
set background=dark
let g:solarized_termcolors=16
colorscheme solarized

highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py match BadWhitespace /*\t\*/
au BufRead,BufNewFile *.py match BadWhitespace /\s\+$/

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/


" Better copy and paste
set pastetoggle=<F2>
set clipboard=unnamed

" Better command line editing
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" Mouse and backspace
set mouse=a 
set bs=2

" Rebind <Leader> Key 
let mapleader = ","

" Create new tab
imap ,t <ESC>:tabnew<CR>

"NERDTree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


"Code folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Pep8 settings
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

autocmd FileType python map <buffer> <F3> :call Flake8()<CR>

"Ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
