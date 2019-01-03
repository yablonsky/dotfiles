call plug#begin('~/.local/share/nvim/plugged')

Plug 'mildred/vim-bufmru'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'svermeulen/vim-easyclip'

Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neoinclude.vim'
Plug 'w0rp/ale'
Plug 'janko-m/vim-test'

Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'zchee/deoplete-jedi', { 'for': 'python' }

Plug 'Shougo/deoplete-clangx', { 'for': 'c' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'

Plug 'dylanaraps/wal.vim'

call plug#end()
