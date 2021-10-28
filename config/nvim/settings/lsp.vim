let g:LanguageClient_serverCommands = {
    \ 'kotlin': ["kotlin-language-server"],
    \ 'javascript': ["javascript-typescript-stdio"],
    \ 'typescript': ["javascript-typescript-stdio"],
    \ }

function LC_maps()
  if has_key(g:LanguageClient_serverCommands, &filetype)
    nmap <buffer> <silent> K <Plug>(lcn-hover)
    nmap <buffer> <silent> gd <Plug>(lcn-definition)
  endif
endfunction

autocmd FileType * call LC_maps()
