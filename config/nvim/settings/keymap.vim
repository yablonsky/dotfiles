let mapleader = "\<Space>"

nmap <leader>q :q<CR>
nmap <leader>Q :qa<CR>
nmap <leader>w :w<CR>
nmap <leader>x :x<CR>

nnoremap n nzz
nnoremap N Nzz

"Navigation
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l
nnoremap <leader>h <c-w>h
nnoremap <leader>J <c-w>J
nnoremap <leader>K <c-w>K
nnoremap <leader>L <c-w>L
nnoremap <leader>H <c-w>H
tnoremap <A-[> <C-\><C-n>
tnoremap <A-j> <c-\><c-n><c-w>j
tnoremap <A-k> <c-\><c-n><c-w>k
tnoremap <A-l> <c-\><c-n><c-w>l
tnoremap <A-h> <c-\><c-n><c-w>h
tnoremap <A-p> <c-\><c-n>pa

"BufMRU
map <Tab> :BufMRUNext<CR>
map <S-Tab> :BufMRUPrev<CR>

"vim-test
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tg :TestVisit<CR>

nmap <leader>t? :map <leader>t<CR>


" Fugitive mapping
nmap <leader>ge :Gedit<cr>
nmap <leader>gr :Gread<cr>
nmap <leader>gR :Gremove<cr>
nmap <leader>gw :Gwrite<cr>
nmap <leader>gb :Gblame<cr>
nmap <leader>gB :Git co -b 
nmap <leader>gc :Gcommit<cr>
nmap <leader>gC :Git co 
nmap <leader>gd :Gdiff<cr>
nmap <leader>gg :Ggrep 
nmap <leader>gG :Ggrep "\W<cword>\W"<cr>
nmap <leader>gl :Glog<cr>
nmap <leader>gf :Gfetch<cr>
nmap <leader>gp :Gpull<cr>
nmap <leader>gm :Git master<cr>
nmap <leader>gM :Gpull origin master<cr>
nmap <leader>gu :Gpush<cr>
nmap <leader>gU :Gpushu<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gW :Gbrowse<cr>

nmap <leader>g? :map <leader>g<CR>


"fzf
nmap <leader>e :FZF<CR>
nmap <leader>r :History<CR>
nmap <leader>a :FZFBr<CR>
nmap <leader>A :FZFBrRemote<CR>
nmap <leader>s :History:<CR>
nmap <leader>f :FZFCdRelative<CR>
nmap <leader>F :FZFCd<CR>

"ripgrep
nmap <leader>v :Rg <C-R><C-W><CR>
nmap <leader>c :Rg \W<C-R><C-W>\W<CR>
