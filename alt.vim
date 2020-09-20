echom "Running alternative config file..."


" General Settings:
" set nocompatible " done already in /etc/vimrc
source $XDG_CONFIG_HOME/vim/conf.d/general.vim
source $XDG_CONFIG_HOME/vim/functions.d/customFuncs.vim



""" VIMPLUG:
" |plugfuncs.vim| should be called after
" |plugsettings.vim| should for settings
" |keys.vim| for the keybindings.

" BuildYCM(info)
function! BuildYCM(info)
   " info is a dictionary with 3 fields
   " - name:   name of the plugin
   " - status: 'installed', 'updated', or 'unchanged'
   " - force:  set on PlugInstall! or PlugUpdate!
   if a:info.status == 'installed' || a:info.force
     !./install.py --clang-completer --system-libclang --system-boost --js-completer --java-completer
   endif
endfunction

" Assumes system installation of ycm
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

call plug#begin('~/.local/share/vim/plugged')

"  " Debugging:
"      " Plug 'vim-vdebug/vdebug'
     Plug 'gilligan/vim-lldb' , {'on': 'Lldbb'}

 " Functionality:
     Plug 'vimwiki/vimwiki'
     Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] } " TODO
     Plug 'jceb/vim-orgmode'
     " TODO
     Plug 'mattn/calendar-vim'
     " TODO
     Plug 'inkarkat/vim-SyntaxRange'
     " Plug 'vim-scripts/OnSyntaxChange.vim'
     " TODO
     Plug 'tpope/vim-projectionist'
     " TODO
     Plug 'tpope/vim-dispatch'
     Plug 'tpope/vim-sleuth'
     Plug 'jamessan/vim-gnupg'

 """ Text Objects:
 " https://github.com/kana/vim-textobj-user/wiki
 Plug 'kana/vim-textobj-user' |
     Plug 'kana/vim-textobj-indent' "i,I
     Plug 'kana/vim-textobj-entire' "e
     Plug 'kana/vim-textobj-fold' "z
     Plug 'kana/vim-textobj-lastpat' "/
     Plug 'idbrii/textobj-word-column.vim' "c,C
     Plug 'Julian/vim-textobj-brace' "j

     Plug 'libclang-vim/vim-textobj-clang' ";, ;{m,c,f,e,s,p,n,u,a}
     " TODO
     Plug 'rbonvall/vim-textobj-latex' "\, $ math 
    " q,Q single/double quoted
    " e - envirenment (begin - end)
     Plug 'jasonlong/vim-textobj-css' "c
     Plug 'gaving/vim-textobj-argument'

     Plug 'thalesmello/vim-textobj-methodcall'
     " TODO
     Plug 'kana/vim-textobj-function' "f,F
     " TODO
     Plug 'bps/vim-textobj-python' "f,c

     Plug 'terryma/vim-expand-region' "J/K
     Plug 'https://gist.github.com/ixil/5356298948576735b3713b01d668a399',
                 \ { 'as': 'local/next_motion_mapping.vim', 'do': 'mkdir -p plugin; cp -f *.vim plugin/' }

 """ Git Stuff:
     Plug 'tpope/vim-fugitive'
     "Plug 'tpope/vim-git' "For really old vims
     "
     Plug 'mhinz/vim-signify' " all other VCS
     " Plug 'airblade/vim-gitgutter' " https://github.com/airblade/vim-gitgutter#hunks

     Plug 'gregsexton/gitv', {'on': ['Gitv']}
     Plug 'christoomey/vim-conflicted'
     Plug 'junegunn/vim-github-dashboard'
     Plug 'junegunn/gv.vim'  " gv to browse commit log

 """ GUI Elements:
     " GUI element
     Plug 'mbadran/headlights'

 """ Status Line:
     Plug 'vim-airline/vim-airline'
     Plug 'vim-airline/vim-airline-themes'
     " Plug 'mg979/vim-xtabline'


 " Tmux:
     Plug 'christoomey/vim-tmux-navigator' " C{hjkl} to move about panes:
     Plug 'tmux-plugins/vim-tmux-focus-events'
     Plug 'tmux-plugins/vim-tmux' " Filetype for .tmux.conf
     "Plug 'benmills/vimux'

call plug#end()



" Autoload Plugins:

augroup load_us_ycm
  autocmd!
  autocmd InsertEnter * call plug#load('ultisnips', 'YouCompleteMe')
                     \| autocmd! load_us_ycm
augroup END






" Plugins:
source $XDG_CONFIG_HOME/vim/plugsettings.vim
source $XDG_CONFIG_HOME/vim/functions.d/plugfuncs.vim
source $XDG_CONFIG_HOME/vim/functions.d/paste_bins.vim
source $XDG_CONFIG_HOME/vim/functions.d/customFuncs.vim
" source $XDG_CONFIG_HOME/vim/functions.d/vim-tmux-zsh.vim

" This should no longer be needed:
" source $XDG_CONFIG_HOME/vim/functions.d/autocompleteFixes.vim

" Keys:
source $XDG_CONFIG_HOME/vim/keys.d/keys.vim

" Apperance:
" source $XDG_CONFIG_HOME/vim/appearance.d/appearance.vim
" source $XDG_CONFIG_HOME/vim/appearance.d/line.vim


" These may be something strange if initialised by some other program (-u setting)
if has ('autocmd') " Remain compatible with earlier versions
 augroup vimrc     " Source vim configuration upon save
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif " has autocmd

map <leader>vimrc :tabe $MYVIMRC<cr>
map <leader>tmux :tabe ~/.tmux.conf<cr>
map <leader>vimso :so $MYVIMRC<cr>
nmap <leader>zshrc :tabe $ZDOTDIR<cr>

"if has ('autocmd') " Remain compatible with earlier versions
" augroup vimrc     " Source vim configuration upon save
"    autocmd! BufWritePost $VIMINIT source % | echom "Reloaded " . $MYVIMRC | redraw
"    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
"  augroup END
"endif " has autocmd

