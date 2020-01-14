syntax on
set encoding=utf-8
"set cursorline
set splitbelow
set splitright
set termguicolors
colorscheme minimalist
set background=dark
set updatetime=250


" netrw
let g:netrw_preview = 1
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
let g:netrw_browse_split = 4

" vim-airline
"let g:airline_theme='wal'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
"let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#current_first = 1
"let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#virtualenv#enabled = 1

" fzf
" let g:fzf_history_dir = '~/.local/share/fzf-history'
" don't change status when opening fzf
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
