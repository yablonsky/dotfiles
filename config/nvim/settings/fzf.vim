command! FZFBr call fzf#run({'source': 'git branch | sed -e "s/^\W*//" | grep -v HEAD', 'sink': '23sp | te git checkout', 'down': '25%'})
command! FZFBrRemote call fzf#run({'source': 'git branch --all | sed -e "s/^\W*//" | grep -v HEAD', 'sink': '23sp | te git checkout', 'down': '25%'})
