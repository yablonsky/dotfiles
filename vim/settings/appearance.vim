set encoding=utf-8
set cursorline
colorscheme onedark
let g:airline_theme='onedark'
set background=dark
"set t_ut=
"set t_Co=16
"let g:onedark_termcolors=16

if has('termguicolors')
    set t_8f=[38;2;%lu;%lu;%lum
    set t_8b=[48;2;%lu;%lu;%lum
    set termguicolors
endif
