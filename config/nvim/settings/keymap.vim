"General
"nnoremap q <C-W><C-Q>
"nnoremap Q <Esc>:qa<CR>
"nnoremap s <Esc>:w<CR>
"nnoremap x <Esc>:x<CR>
"nnoremap <C-X> <Esc>:bd<CR>

"Navigation
nnoremap <A-j> <C-W><C-J>
nnoremap <A-k> <C-W><C-K>
nnoremap <A-l> <C-W><C-L>
nnoremap <A-h> <C-W><C-H>

"BufMRU
nnoremap [b :BufMRUPrev<CR>
nnoremap ]b :BufMRUNext<CR>
nnoremap <A-b> :BufMRUCommit<CR>

"YouCompleteMe
"nnoremap d :YcmCompleter GoTo<CR>
"nnoremap <C-b> :YcmCompleter GoToDeclaration<CR>
"nnoremap <C-h> :YcmCompleter GoToReferences<CR>

set ttimeout ttimeoutlen=50

"map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
