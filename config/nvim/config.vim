set number
set history=10000
set showcmd
set showmode
set gcr=a:blinkon0
set visualbell
set autoread
set clipboard=
set backspace=indent,eol,start
set title
set lazyredraw
set hidden
set exrc
set secure

" Turn Off Swap Files
set noswapfile
set nobackup
set nowb

" Indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap
set linebreak

" Folds
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" Completion
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.pyc

" Scrolling
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Python
"let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog  = '/usr/bin/python3'

" Term
au TermOpen * setlocal nonumber norelativenumber
