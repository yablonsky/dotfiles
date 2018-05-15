filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'

Plugin 'mildred/vim-bufmru'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-commentary'
Plugin 'svermeulen/vim-easyclip'

"Plugin 'vim-syntastic/syntastic'
"Plugin 'jmcantrell/vim-virtualenv'
Plugin 'w0rp/ale'
Plugin 'davidhalter/jedi-vim'
Plugin 'janko-m/vim-test'
"Plugin 'zchee/deoplete-jedi'
"Plugin 'ervandew/supertab'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'luochen1990/rainbow'

call vundle#end()
filetype plugin indent on
