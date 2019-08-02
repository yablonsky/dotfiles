function! myspacevim#after() abort
  " deoplete
  call deoplete#custom#option('ignore_sources', {'_': ['look']})

  " vim-test
  function! DockerTransform(cmd) abort
      return 'docker-compose run --no-deps --rm api '.a:cmd
  endfunction

  let g:test#custom_transformations = {'docker': function('DockerTransform')}
  let g:test#transformation = 'docker'
endfunction
