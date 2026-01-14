command! FZFBr call fzf#run({'source': 'git branch | sed -e "s/^\W*//" | grep -v HEAD', 'sink': '23sp | te git checkout', 'down': '25%'})
command! FZFBrRemote call fzf#run({'source': 'git branch --all | grep -v HEAD | sed -e "s/^\W*//" -e "s/remotes\/origin\///" | sort -u', 'sink': '23sp | te git checkout', 'down': '25%'})
command! FZFCd call fzf#run(fzf#wrap({'source': 'find $HOME -path "${HOME}/\.*" -prune -o -type d -print 2> /dev/null', 'sink': 'cd'}))
command! FZFCdRelative call fzf#run(fzf#wrap({'source': 'find . -path "*/\.*" -prune -o -type d -print 2> /dev/null', 'sink': 'cd'}))
