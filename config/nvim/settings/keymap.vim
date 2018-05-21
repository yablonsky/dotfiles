"General
"nnoremap q <C-W><C-Q>
"nnoremap Q <Esc>:qa<CR>
"nnoremap s <Esc>:w<CR>
"nnoremap x <Esc>:x<CR>
"nnoremap <C-X> <Esc>:bd<CR>

"Navigation
nnoremap <A-j> <c-w>j
nnoremap <A-k> <c-w>k
nnoremap <A-l> <c-w>l
nnoremap <A-h> <c-w>h
tnoremap <A-[> <C-\><C-n>
tnoremap <A-j> <c-\><c-n><c-w>j
tnoremap <A-k> <c-\><c-n><c-w>k
tnoremap <A-l> <c-\><c-n><c-w>l
tnoremap <A-h> <c-\><c-n><c-w>h

"BufMRU
"override unimpaired keybindings
autocmd VimEnter * nnoremap [b :BufMRUNext<CR>
autocmd VimEnter * nnoremap ]b :BufMRUPrev<CR>
nnoremap <leader>b :BufMRUCommit<CR>

"YouCompleteMe
"nnoremap d :YcmCompleter GoTo<CR>
"nnoremap <C-b> :YcmCompleter GoToDeclaration<CR>
"nnoremap <C-h> :YcmCompleter GoToReferences<CR>

"vim-test
nmap <leader>t? :map <leader>t<CR>
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tg :TestVisit<CR>

" Fugitive mapping
nmap <leader>g? :map <leader>g<CR>
nmap <leader>gb :Gblame<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gg :Ggrep
nmap <leader>gl :Glog<cr>
nmap <leader>gf :Gfetch<cr>
nmap <leader>gp :Gpull<cr>
nmap <leader>gu :Gpush<cr>
nmap <leader>gU :Gpushu<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gw :Gbrowse<cr>
