""" Plugin Settings
" Some things change keys, these go into the keys.vimrc
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" *Index*
" |Goyo| |Limelight| |Zenroom|
" |Autocorrect|
" |Workspace|
" |Session|
" |VimSnippets|
" |Gutentags|
" |Python_syntax|
" |Polyglot|
" |A_Alternate|
" |Nerdtree|
" |Gitgutter|
" |Syntastic|
" |Ack|
" |Ale|
" |VimLaTeX|
" |Plasticboy-vim-markdown|
" |Lexical| |Thesaurus-Query|
" |YCM|
" |GHDashboard|
" |Pandoc|
" |Litecorrect|
" |EnhancedDiff|
" |Ctrlsf|
" |FZF|
" |latex-unicoder.vim|
" |Peekaboo|
" |EasyMotion|
" |YankRing|
" |Lion|
" |textobj-clang|
" |CtrlSF|
" |Startify|
" |AutoPairs|
" |Utl|


" *Goyo* *Limelight* *Zenroom*
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:limelight_default_coefficient = 0.7
let g:limelight_conceal_ctermfg = 238

" *Autocorrect*
autocmd FileType markdown,mkd call AutoCorrect()
autocmd FileType tex call AutoCorrect()
autocmd FileType text call AutoCorrect()


" *Workspace*
source $XDG_CONFIG_HOME/vim/conf.d/workspace.vim

" *Session*
source $XDG_CONFIG_HOME/vim/conf.d/session.vim

" *VimSnippets*
source $XDG_CONFIG_HOME/vim/conf.d/vimsnippets.vim

" *Gutentags*
source $XDG_CONFIG_HOME/vim/conf.d/gutentags.vim

" *Python_syntax*
source $XDG_CONFIG_HOME/vim/conf.d/python_syntax.vim

" *Polyglot*
let g:polyglot_disabled = ['tex', 'latex', 'python']

" *A_Alternate*
let g:alternate_nomap = 1

" *Nerdtree*
source $XDG_CONFIG_HOME/vim/conf.d/nerdtree.vim

" *Gitgutter*
" source $XDG_CONFIG_HOME/vim/conf.d/gitgutter.vim

" *Signify*
source $XDG_CONFIG_HOME/vim/conf.d/signify.vim

" *Syntastic*
" source $XDG_CONFIG_HOME/vim/conf.d/syntastic.vim

" *Ack*
source $XDG_CONFIG_HOME/vim/conf.d/ack.vim

" *Ale*
source $XDG_CONFIG_HOME/vim/conf.d/ale.vim

" *VimLaTeX*
source $XDG_CONFIG_HOME/vim/conf.d/vimtex.vim

" *Plasticboy-vim-markdown*
source $XDG_CONFIG_HOME/vim/conf.d/markdown.vim

" *Lexical* *Thesaurus-Query*
source $XDG_CONFIG_HOME/vim/conf.d/lexical.vim

" *YCM*
source $XDG_CONFIG_HOME/vim/conf.d/ycm.vim

" *GHDashboard*
source $XDG_CONFIG_HOME/vim/conf.d/ghdashboard.vim

" *Pandoc*
source $XDG_CONFIG_HOME/vim/conf.d/pandoc.vim

" *Litecorrect*
source $XDG_CONFIG_HOME/vim/conf.d/litecorrect.vim

" *EnhancedDiff*
source $XDG_CONFIG_HOME/vim/conf.d/enhanceddiff.vim

" *Ctrlsf*
source $XDG_CONFIG_HOME/vim/conf.d/ctrlsf.vim

" *FZF*
source $XDG_CONFIG_HOME/vim/conf.d/fzf.vim

" *latex-unicoder.vim*
source $XDG_CONFIG_HOME/vim/conf.d/latex_unicoder.vim

" *Peekaboo*
let g:peekaboo_delay=300 " Delay the side window unless I'm really slow

" *EasyMotion*
source $XDG_CONFIG_HOME/vim/conf.d/easymotion.vim

" *YankRing*
source $XDG_CONFIG_HOME/vim/conf.d/yankring.vim

" Slime
let g:slime_target = "tmux"
let g:slime_python_ipython = 1

" *Lion*
let b:lion_squeeze_spaces = 1

" *textobj-clang*
let g:textobj_clang_more_mappings=1

" *CtrlSF*
source $XDG_CONFIG_HOME/vim/conf.d/ctrlsf.vim

" *Startify*
source $XDG_CONFIG_HOME/vim/conf.d/startify.vim

" *MultiCursor*
let g:multi_cursor_use_default_mapping=0

" *AutoPairs*
source $XDG_CONFIG_HOME/vim/conf.d/autopairs.vim

" *Utl*
source $XDG_CONFIG_HOME/vim/conf.d/utl_rc.vim

" *Switch*
source $XDG_CONFIG_HOME/vim/conf.d/switch.vim

" *Speeddating*
let g:speeddating_no_mappings=1

" *GnuPG*
source $XDG_CONFIG_HOME/vim/conf.d/gnupg.vim

" *VirtualEnv*
source $XDG_CONFIG_HOME/vim/conf.d/virtualenv.vim
