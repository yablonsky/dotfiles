set nocompatible               " be improved, required

let nvim_config_base = '~/.config/nvim/'
"""" Vundle Initialization
let vundles_path = nvim_config_base . 'vundles.vim'
if filereadable(expand(vundles_path))
  execute 'source ' . fnameescape(vundles_path)
endif

"""" General Config
let config_path = nvim_config_base . 'config.vim'
if filereadable(expand(config_path))
  execute 'source ' . fnameescape(config_path)
endif

"""" Settings
let config_dir = nvim_config_base . 'settings/'
for fpath in split(globpath(config_dir, '*.vim'), '\n')
  exe 'source' fpath
endfor
