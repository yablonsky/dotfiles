set nocompatible               " be improved, required

" =============== Vundle Initialization ===============
let vundles_path="~/.config/nvim/vundles.vim"
if filereadable(expand(vundles_path))
  execute 'source ' . fnameescape(vundles_path)
endif

" =============== Vundle Initialization ===============
let config_path="~/.config/nvim/config.vim"
if filereadable(expand(config_path))
  execute 'source ' . fnameescape(config_path)
endif
