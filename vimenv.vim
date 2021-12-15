" Environment
if empty($XDG_CACHE_HOME)  | let $XDG_CACHE_HOME  = $HOME."/.cache"       | endif
if empty($XDG_CONFIG_HOME) | let $XDG_CONFIG_HOME = $HOME."/.config"      | endif
if empty($XDG_DATA_HOME)   | let $XDG_DATA_HOME   = $HOME."/.local/share" | endif

set runtimepath+=$XDG_DATA_HOME/vim

set runtimepath^=$XDG_CONFIG_HOME/vim
set runtimepath+=$XDG_CONFIG_HOME/vim/after

set packpath^=$XDG_DATA_HOME/vim,$XDG_CONFIG_HOME/vim
set packpath+=$XDG_CONFIG_HOME/vim/after,$XDG_DATA_HOME/vim/after

let g:netrw_home = $XDG_DATA_HOME."/vim"
call mkdir($XDG_DATA_HOME."/vim/spell", 'p', 0700)

set backupdir=$XDG_CACHE_HOME/vim/backup | call mkdir(&backupdir, 'p', 0700)
set directory=$XDG_CACHE_HOME/vim/swap   | call mkdir(&directory, 'p', 0700)
set undodir=$XDG_CACHE_HOME/vim/undo     | call mkdir(&undodir,   'p', 0700)
set viewdir=$XDG_CACHE_HOME/vim/view     | call mkdir(&viewdir,   'p', 0700)

if !has('nvim') " Neovim has its own special location
  set viminfofile=$XDG_CACHE_HOME/vim/viminfo
  let &pythondll=&pythonthreedll
else
  " cd ~/.config/nvim && nvm use && nvm which current
  let g:node_host_prog = '/home/ixil/.local/share/nvm/versions/node/v16.3.0/bin/node'
  " cd ~/.config/nvim && pyenv install   && pipenv --py
  " let g:python_host_prog = '/full/path/to/neovim2/bin/python'
  " let g:python3_host_prog = '/full/path/to/neovim2/bin/python'
  " or if system installed
  " let g:python_host_prog = '/usr/bin/python2'
  " let g:python3_host_prog = '/usr/bin/python3'
endif

" Always use the same venv for vim regardless of shell env
" let g:vim_virtualenv_path = '/path/to/my/new/vim_virtualenv'
" if exists('g:vim_virtualenv_path')
"   pythonx import os; import vim
"   pythonx activate_this = os.path.join(vim.eval('g:vim_virtualenv_path'), 'bin/activate_this.py')
"   pythonx with open(activate_this) as f: exec(f.read(), {'__file__': activate_this})
" endif

" Set Python 3 as the only version, without needing to recompile
