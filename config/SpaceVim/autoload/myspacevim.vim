function! myspacevim#after() abort
  call deoplete#custom#option('ignore_sources', {'_': ['look']})
endfunction
