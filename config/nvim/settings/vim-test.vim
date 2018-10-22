function! DockerTransform(cmd) abort
    return 'docker-compose exec api '.a:cmd
endfunction

let g:test#custom_transformations = {'docker': function('DockerTransform')}
let g:test#transformation = 'docker'
