"General
"nnoremap q <C-W><C-Q>
nnoremap Q <Esc>:qa<CR>
nnoremap s <Esc>:w<CR>
nnoremap x <Esc>:x<CR>
nnoremap <C-X> <Esc>:bd<CR>

"Navigation
nnoremap j <C-W><C-J>
nnoremap k <C-W><C-K>
nnoremap l <C-W><C-L>
nnoremap h <C-W><C-H>

"BufMRU
imap <F1> <Esc>:BufMRUPrev<CR>
imap <F2> <Esc>:BufMRUNext<CR>
nnoremap <F1> :BufMRUPrev<CR>
nnoremap <F2> :BufMRUNext<CR>

"YouCompleteMe
"nnoremap d :YcmCompleter GoTo<CR>
nnoremap <C-b> :YcmCompleter GoToDeclaration<CR>
nnoremap <C-h> :YcmCompleter GoToReferences<CR>

set ttimeout ttimeoutlen=50

"map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
