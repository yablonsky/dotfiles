set nocompatible               " be improved, required

let nvim_config_base = '~/.config/nvim/'
"""" Plugin Initialization
let plugin_path = nvim_config_base . 'plugins.vim'
if filereadable(expand(plugin_path))
  execute 'source ' . fnameescape(plugin_path)
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
