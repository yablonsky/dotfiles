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
"override unimpaired keybindings
autocmd VimEnter * nnoremap [b :BufMRUNext<CR>
autocmd VimEnter * nnoremap ]b :BufMRUPrev<CR>
nnoremap <leader>b :BufMRUCommit<CR>

nnoremap <leader>G :Gstatus<CR>

"YouCompleteMe
"nnoremap d :YcmCompleter GoTo<CR>
"nnoremap <C-b> :YcmCompleter GoToDeclaration<CR>
"nnoremap <C-h> :YcmCompleter GoToReferences<CR>

"vim-test
nmap <silent> t<C-n> :TestNearest<CR> " t Ctrl+n
nmap <silent> t<C-f> :TestFile<CR>    " t Ctrl+f
nmap <silent> t<C-s> :TestSuite<CR>   " t Ctrl+s
nmap <silent> t<C-l> :TestLast<CR>    " t Ctrl+l
nmap <silent> t<C-g> :TestVisit<CR>   " t Ctrl+g
