command! FZFBr call fzf#run({'source': 'git branch | sed -e "s/^\W*//" | grep -v HEAD', 'sink': '23sp | te git checkout', 'down': '25%'})
command! FZFBrRemote call fzf#run({'source': 'git branch --all | sed -e "s/^\W*//" | grep -v HEAD', 'sink': '23sp | te git checkout', 'down': '25%'})

command! FZFMru call fzf#run({
\ 'source':  reverse(s:all_files()),
\ 'sink':    'edit',
\ 'options': '-m -x +s',
\ 'down':    '40%' })

function! s:all_files()
  return extend(
  \ filter(copy(v:oldfiles),
  \        "v:val !~ 'fugitive:\\|NERD_tree\\|^/tmp/\\|.git/'"),
  \ map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), 'bufname(v:val)'))
endfunction
