let test#strategy = "neovim"
let test#neovim#term_position = "vertical"

function! DockerTransform(cmd) abort
    return 'docker-compose exec -e NO_TIME_LIMIT=1 api '.a:cmd
endfunction

let g:test#custom_transformations = {'docker': function('DockerTransform')}
let g:test#transformation = 'docker'
