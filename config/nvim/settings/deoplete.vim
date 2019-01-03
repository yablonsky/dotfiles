let g:deoplete#enable_at_startup = 1

call deoplete#custom#option({
\  'sources': {
\    '_': ['file'],
\    'python': ['file', 'jedi'],
\    'c': ['file', 'file/include', 'clangx'],
\  }
\})

