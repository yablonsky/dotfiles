syntax on
set encoding=utf-8
"set cursorline
set splitbelow
set splitright
"set termguicolors
colorscheme wal
"set background=dark


" netrw
let g:netrw_preview = 1
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
let g:netrw_browse_split = 4

" Rainbow parenthesis
let g:rainbow_active = 1
let g:rainbow_conf = {
    \   'guifgs': ['royalblue1', 'darkorange1', 'green1', 'firebrick'],
    \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'python': {
    \           'operators': '_,\|=\|:_',
    \       },
    \       'lisp': {
    \           'guifgs': ['royalblue1', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \   }
    \}

" vim-airline
let g:airline_theme='wal'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#current_first = 1
let g:airline#extensions#tabline#buffer_min_count = 2

" fzf
let g:fzf_history_dir = '~/.local/share/fzf-history'
" don't change status when opening fzf
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
