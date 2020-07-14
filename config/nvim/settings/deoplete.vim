let g:deoplete#enable_at_startup = 1

call deoplete#custom#option({
\  'sources': {
\    '_': ['member', 'file'],
\    'python': ['jedi', 'member', 'file'],
\    'c': ['file', 'file/include', 'clangx'],
\  }
\})

"g:deoplete#sources#jedi#show_docstring = 0
