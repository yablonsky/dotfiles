"General
"nnoremap q <C-W><C-Q>
nnoremap q <Esc>:qa<CR>
nnoremap s <Esc>:w<CR>
nnoremap x <Esc>:x<CR>
nnoremap <C-X> <Esc>:bd<CR>

"Navigation
nnoremap j <C-W><C-J>
nnoremap k <C-W><C-K>
nnoremap l <C-W><C-L>
nnoremap h <C-W><C-H>

"BufMRU
imap n <Esc>:BufMRUPrev<CR>
imap p <Esc>:BufMRUNext<CR>
map n :BufMRUPrev<CR>
map p :BufMRUNext<CR>

"YouCompleteMe
nnoremap d :YcmCompleter GoTo<CR>
nnoremap g :YcmCompleter GoToDeclaration<CR>
nnoremap v :YcmCompleter GoToReferences<CR>
