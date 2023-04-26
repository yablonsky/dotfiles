syntax on
set encoding=utf-8
"set cursorline
set splitbelow
set splitright
set termguicolors
set background=dark
set updatetime=250
" Give more space for displaying messages.
" set cmdheight=2
set signcolumn=number
let g:onedarkhc_terminal_italics = 1
colorscheme onedarkhc

" netrw
" let g:netrw_banner = 0
" " let g:netrw_preview = 1
" let g:netrw_liststyle = 3
" let g:netrw_winsize = 25
" let g:netrw_browse_split = 4

" vim-airline
"let g:airline_theme='wal'
" let g:airline#extensions#ale#enabled = 1
" let g:airline#extensions#branch#enabled = 1
"let g:airline#extensions#fugitiveline#enabled = 1
" let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#current_first = 1
"let g:airline#extensions#tabline#buffer_min_count = 2
" let g:airline#extensions#virtualenv#enabled = 1

" fzf
" let g:fzf_history_dir = '~/.local/share/fzf-history'
" don't change status when opening fzf
" autocmd! FileType fzf
" autocmd  FileType fzf set laststatus=0 noshowmode noruler
"   \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

set laststatus=3
" TODO: move to a separate file
lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'onedark',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {
      {'filename', path = 1},
    },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'diagnostics'},
    lualine_z = {'location', 'progress'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      {'filename', path = 1},
    },
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
      lualine_a = {'buffers'},
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {'tabs'}
  },
  extensions = {
    'fzf',
    'fugitive'
  }
}

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
END
