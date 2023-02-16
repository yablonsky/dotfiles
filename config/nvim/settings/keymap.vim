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
nnoremap <A-J> <c-w>J
nnoremap <A-K> <c-w>K
nnoremap <A-L> <c-w>L
nnoremap <A-H> <c-w>H
nnoremap <A-y> "+yy
vnoremap <A-y> "+y
nnoremap <A-p> "+p
vnoremap <A-p> "+p
nnoremap <A-S-p> "+P
tnoremap <A-[> <C-\><C-n>
tnoremap <A-j> <c-\><c-n><c-w>j
tnoremap <A-k> <c-\><c-n><c-w>k
tnoremap <A-l> <c-\><c-n><c-w>l
tnoremap <A-h> <c-\><c-n><c-w>h
tnoremap <A-J> <c-\><c-n><c-w>J
tnoremap <A-K> <c-\><c-n><c-w>K
tnoremap <A-L> <c-\><c-n><c-w>L
tnoremap <A-H> <c-\><c-n><c-w>H
tnoremap <A-p> <c-\><c-n>pa

"vim-test
" nnoremap <silent> <leader>sn :TestNearest<CR>
" nnoremap <silent> <leader>sf :TestFile<CR>
" nnoremap <leader>s? :map <leader>s<CR>

"neoterm
nnoremap <leader>tt :Tnew<CR>
nnoremap <leader>to :Topen<CR>
nnoremap <leader>tc :Tclose<CR>
nnoremap <leader>tsf :TREPLSendFile<CR>
nnoremap <leader>tsl :TREPLSendLine<CR>
vnoremap <leader>tss :TREPLSendSelection<CR>
nnoremap <leader>tv :vertical Tnew<CR>
nnoremap <leader>t? :map <leader>t<CR>

" Fugitive + GitGutter mapping
nmap <leader>ge :Gedit<cr>
nmap <leader>gr :Gread<cr>
nmap <leader>gR :GRemove<cr>
nmap <leader>gw :Gwrite<cr>
nmap <leader>gb :Git_blame<cr>
nmap <leader>gB :Git co -b
nmap <leader>gc :Git commit<cr>
nmap <leader>gC :Git co
" nmap <leader>gd :Gdiffsplit<cr>
nmap <leader>gg :Ggrep
nmap <leader>gG :Ggrep "\W<cword>\W"<cr>
nmap <leader>gl :Gclog<cr>
nmap <leader>gd :Git fetch<cr>
nmap <leader>gp :Git pull<cr>
nmap <leader>gm :Git master<cr>
nmap <leader>gM :Git pull origin master<cr>
nmap <leader>gu :Git push<cr>
nmap <leader>gU :Gpushu<cr>
nmap <leader>gs :Git<cr>
nmap <leader>gW :GBrowse<cr>
nnoremap <leader>gn :GitGutterQuickFix<CR> :cw<CR>
nmap <leader>g? :map <leader>g<CR>


"fzf
nmap <leader>E :Files<CR>
nmap <leader>e :GFiles<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>a :FZFBr<CR>
nmap <leader>A :FZFBrRemote<CR>
nmap <leader>r :History<CR>
nmap <leader>R :History:<CR>
nmap <leader>f :NvimTreeFindFile<CR>
nmap <leader>F :NvimTreeFindFileToggle<CR>

"ripgrep
nmap <leader>v :Rg <C-R><C-W><CR>
nmap <leader>c :Rg \W<C-R><C-W>\W<CR>

"Auto-pair
"let g:AutoPairsShortcutToggle = '<leader>pp'

" Apply AutoFix to problem on the current line.
nmap <leader>gf <Plug>(coc-fix-current)
