"autocmd BufEnter,WinEnter term://* startinsert
"autocmd BufLeave term://* stopinsert
"au BufEnter * if &buftype == 'terminal' | :startinsert | endif

"NeoTerm
let g:neoterm_shell='bash'
let g:neoterm_autoinsert=1
