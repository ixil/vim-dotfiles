""" Source the stuff

if empty($MYVIMRC) | let $MYVIMRC = expand('<sfile>:p') | endif

" Environment setup:
source $XDG_CONFIG_HOME/vim/vimenv.vim

" let g:use_alt = '1'

if exists('g:use_alt')
    source $XDG_CONFIG_HOME/vim/alt.vim
    echom "finishing"
    finish
endif

" General Settings:
" set nocompatible " done already in /etc/vimrc
source $XDG_CONFIG_HOME/vim/conf.d/general.vim
if exists('g:started_by_firenvim')
    source $XDG_CONFIG_HOME/vim/conf.d/firenvim.vim
endif
source $XDG_CONFIG_HOME/vim/functions.d/customFuncs.vim

" Plugins:
source $XDG_CONFIG_HOME/vim/plugins.vim
source $XDG_CONFIG_HOME/vim/plugsettings.vim
source $XDG_CONFIG_HOME/vim/functions.d/plugfuncs.vim
source $XDG_CONFIG_HOME/vim/functions.d/autocompleteFixes.vim

" Keys:
source $XDG_CONFIG_HOME/vim/keys.d/keys.vim

" Apperance:
source $XDG_CONFIG_HOME/vim/appearance.d/appearance.vim
source $XDG_CONFIG_HOME/vim/appearance.d/line.vim


" These may be something strange if initialised by some other program (-u setting)
if has ('autocmd') " Remain compatible with earlier versions
 augroup vimrc     " Source vim configuration upon save
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif " has autocmd

map <leader>vimrc :tabe $MYVIMRC<cr>
" map <leader>tmux :tabe ~/.tmux.conf<cr>
" map <leader>vimso :so $MYVIMRC<cr>
nmap <leader>zshrc :tabe $ZDOTDIR<cr>

"if has ('autocmd') " Remain compatible with earlier versions
" augroup vimrc     " Source vim configuration upon save
"    autocmd! BufWritePost $VIMINIT source % | echom "Reloaded " . $MYVIMRC | redraw
"    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
"  augroup END
"endif " has autocmd

augroup journal
    autocmd!

    autocmd VimEnter */journal/**   0r /home/ixil/Templates/skeletons/journal.skeleton
    autocmd VimEnter */journal/**       " set header for the particular journal
    autocmd VimEnter */journal/**   :call JournalMode()setlocal complete=k/home/ixil/Documents/journal/**/*
augroup end
