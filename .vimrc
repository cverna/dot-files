".vimrc Clement Verna
"
execute pathogen#infect()

"Syntastic Plugin settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_python_checkers = ['flake8']
"
"let g:syntastic_always_populate_loc_list = 1
""let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"Solarized theme
syntax enable
let g:molokai_original = 1
set background=dark
"colorscheme solarized

" Allow backspace to delete over autoindent, end of line, and the
" " start of the current insertion
set backspace=indent,eol,start
" " Set indentation to 4 spaces
set shiftwidth=4
" " Tab key goes in 4 spaces (but existing tabs are displayed 8 wide)
set softtabstop=4
" " Set how many spaces a tab is displayed as
set tabstop=4
" " Expand tabs into spaces
set expandtab

"" key mapping
:nmap <Leader>s :w<CR>
:imap <Leader>s <ESC>:w<CR>
"" display line number
"":set nu

""python powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2
set t_Co=256
