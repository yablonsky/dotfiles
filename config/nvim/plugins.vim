call plug#begin('~/.local/share/nvim/plugged')

" Plug 'neovim/nvim-lspconfig'
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'
Plug 'svermeulen/vim-easyclip'
Plug 'kassio/neoterm'
Plug 'airblade/vim-gitgutter'
"Plug 'jiangmiao/auto-pairs'
Plug 'Raimondi/delimitMate'
Plug 'wellle/targets.vim'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'deoplete-plugins/deoplete-jedi'
"Plug 'davidhalter/jedi-vim'
"Plug 'Shougo/deoplete-clangx', { 'for': 'c' }
"Plug 'dense-analysis/ale'
Plug 'vim-test/vim-test'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Plug 'udalov/kotlin-vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'jparise/vim-graphql'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'vim-python/python-syntax'

Plug 'rafi/awesome-vim-colorschemes'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()
