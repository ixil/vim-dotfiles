" Environment

" These are already set in set in /etc/vimrc on arch
       set runtimepath-=~/.vim
       set runtimepath^=$XDG_CONFIG_HOME/vim
       set runtimepath-=~/.vim/after
       set runtimepath+=$XDG_CONFIG_HOME/vim/after
       " set runtimepath=$XDG_CONFIG_HOME/vim,$VIM,$VIMRUNTIME,$XDG_CONFIG_HOME/vim/after
       set directory=$XDG_CACHE_HOME/vim,~/.vim/tmp,/tmp
       set backupdir=$XDG_CACHE_HOME/vim,~/.vim/tmp,/tmp
       set viminfo+=n$XDG_CACHE_HOME/vim/viminfo
       set undodir=$XDG_CACHE_HOME/vim/undo
       set nocompatible


" if exists('$XDG_CACHE_HOME')
"     let &g:directory=$XDG_CACHE_HOME
" else
"     let &g:directory=$HOME . '/.cache'
" endif
"
" let &g:undodir=&g:directory . '/vim/undo//'
" let &g:backupdir=&g:directory . '/vim/backupdir//'
" let &g:directory=&g:directory . '/vim/swap//'
"
" Move the netrwhist to a cache loc
let g:netrw_home=$XDG_CACHE_HOME.'/vim/netrw'
" set pyxversion 3

