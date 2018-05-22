"autocmd BufEnter,WinEnter term://* startinsert
"autocmd BufLeave term://* stopinsert
"au BufEnter * if &buftype == 'terminal' | :startinsert | endif
