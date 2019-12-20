"General
"nnoremap q <C-W><C-Q>
"nnoremap Q <Esc>:qa<CR>
"nnoremap s <Esc>:w<CR>
"nnoremap x <Esc>:x<CR>
"nnoremap <C-X> <Esc>:bd<CR>

"Leader
let mapleader = "\<Space>"

nnoremap <leader>q :q<CR>
nnoremap <leader>Q :qa<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>W :w !sudo tee %<CR>
nnoremap <leader>x :x<CR>

nnoremap n nzz
nnoremap N Nzz

"Navigation
nnoremap <A-j> <c-w>j
nnoremap <A-k> <c-w>k
nnoremap <A-l> <c-w>l
nnoremap <A-h> <c-w>h
nnoremap <A-y> "+yy
nnoremap <A-m> "+mm
nnoremap <A-p> "+p
nnoremap <A-S-p> "+P
tnoremap <A-[> <C-\><C-n>
tnoremap <A-j> <c-\><c-n><c-w>j
tnoremap <A-k> <c-\><c-n><c-w>k
tnoremap <A-l> <c-\><c-n><c-w>l
tnoremap <A-h> <c-\><c-n><c-w>h
tnoremap <A-p> <c-\><c-n>pa

"BufMRU
nnoremap <Tab> :BufMRUNext<CR>
nnoremap <S-Tab> :BufMRUPrev<CR>

"vim-test
nnoremap <silent> <leader>sn :TestNearest<CR>
nnoremap <silent> <leader>sf :TestFile<CR>
nnoremap <leader>s? :map <leader>s<CR>

"neoterm
nnoremap <leader>tt :Tnew<CR>
nnoremap <leader>tv :vertical Tnew<CR>
nnoremap <leader>th :horizontal Tnew<CR>
nnoremap <leader>t? :map <leader>t<CR>

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
