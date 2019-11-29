""" Plugin Settings
" Some things change keys, these go into the keys.vimrc
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" *Lexical* *Thesaurus-Query*
" *Goyo* *Limelight* *Zenroom*
source $XDG_CONFIG_HOME/vim/conf.d/prose.vim

" *Autocorrect*
autocmd FileType markdown,mkd call AutoCorrect()
autocmd FileType tex call AutoCorrect()
autocmd FileType text call AutoCorrect()

" Emojis:
au FileType html,php,markdown,mmd,text,mail,gitcommit,vim,vimwiki
    \ runtime macros/emoji-ab.vim


" *Workspace*
source $XDG_CONFIG_HOME/vim/conf.d/workspace.vim

" *Session*
source $XDG_CONFIG_HOME/vim/conf.d/session.vim

" *VimSnippets*
source $XDG_CONFIG_HOME/vim/conf.d/vimsnippets.vim

" *Ultisnips*
source $XDG_CONFIG_HOME/vim/conf.d/ultisnips.vim

" *mattn/emmet-vim
source $XDG_CONFIG_HOME/vim/conf.d/emmet-vim.vim

" *Gutentags*
source $XDG_CONFIG_HOME/vim/conf.d/gutentags.vim

" *Python_syntax*
source $XDG_CONFIG_HOME/vim/conf.d/python_syntax.vim

" *vim-ros
source $XDG_CONFIG_HOME/vim/conf.d/ros.vim

" *Rust-lang*
source $XDG_CONFIG_HOME/vim/conf.d/rust-lang.vim

" *Polyglot* settings must be set first
source $XDG_CONFIG_HOME/vim/conf.d/polyglot-langs.vim

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
" source $XDG_CONFIG_HOME/vim/conf.d/enhanceddiff.vim

" *Ctrlsf*
source $XDG_CONFIG_HOME/vim/conf.d/ctrlsf.vim

" *FZF*
" source $XDG_CONFIG_HOME/vim/conf.d/fzf.vim

" *latex-unicoder.vim*
source $XDG_CONFIG_HOME/vim/conf.d/latex_unicoder.vim

" *Peekaboo*
let g:peekaboo_delay=250 " Delay the side window unless I'm really slow

" *EasyMotion*
source $XDG_CONFIG_HOME/vim/conf.d/easymotion.vim

" *YankRing*
source $XDG_CONFIG_HOME/vim/conf.d/yankring.vim

" *Incsearch*
set hlsearch
let g:incsearch#auto_nohlsearch = 1

" Slime
source $XDG_CONFIG_HOME/vim/conf.d/slime.vim

" *Lion*
source $XDG_CONFIG_HOME/vim/conf.d/lion.vim

" *lib-clang, textobj-clang, etc*
source $XDG_CONFIG_HOME/vim/conf.d/clang-general.vim

source $XDG_CONFIG_HOME/vim/conf.d/vim-cmake.vim
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

" *vimwiki*
source $XDG_CONFIG_HOME/vim/conf.d/vimwiki.vim

" *Speeddating*
let g:speeddating_no_mappings=1

" *GnuPG*
source $XDG_CONFIG_HOME/vim/conf.d/gnupg.vim

" *MatlabFilesEdition*
autocmd BufEnter *.m    compiler mlint

" *VirtualEnv*
source $XDG_CONFIG_HOME/vim/conf.d/virtualenv.vim

" *CppModern
source $XDG_CONFIG_HOME/vim/conf.d/vim-cpp-modern.vim
