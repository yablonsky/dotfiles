set encoding=utf-8
set cursorline
set splitbelow
set splitright
colorscheme onedark
set background=dark
"set t_ut=
"set t_Co=16
"let g:onedark_termcolors=16

if has('termguicolors')
    set t_8f=[38;2;%lu;%lu;%lum
    set t_8b=[48;2;%lu;%lu;%lum
    set termguicolors
endif

"airline
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
