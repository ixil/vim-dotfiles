" Environment

" These are already set in set in /etc/vimrc
"       set runtimepath=$XDG_CONFIG_HOME/vim,$VIM,$VIMRUNTIME,$XDG_CONFIG_HOME/vim/after
"       set directory=$XDG_CACHE_HOME/vim,~/.vim/tmp,/tmp
"       set backupdir=$XDG_CACHE_HOME/vim,~/.vim/tmp,/tmp
"       set viminfo+=n$XDG_CACHE_HOME/vim/viminfo
"       set nocompatible

" Move the netrwhist to a cache loc
let g:netrw_home=$XDG_CACHE_HOME.'/vim/netrw'
set pyxversion=3
