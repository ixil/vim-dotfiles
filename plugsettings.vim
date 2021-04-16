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


" *cheat.sh
source $XDG_CONFIG_HOME/vim/conf.d/cheat-sh.vim

" *dispatch*
source $XDG_CONFIG_HOME/vim/conf.d/dispatch.vim

" *vim-test*
source $XDG_CONFIG_HOME/vim/conf.d/vim-test.vim

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

" ccls
source $XDG_CONFIG_HOME/vim/conf.d/ccls.vim

" *lsp-cxx-highlight*
source $XDG_CONFIG_HOME/vim/conf.d/lsp-cxx-highlight.vim

" *Polyglot* settings must be set first
source $XDG_CONFIG_HOME/vim/conf.d/polyglot-langs.vim

" *A_Alternate*
let g:alternate_nomap = 1

" *Nerdtree*
source $XDG_CONFIG_HOME/vim/conf.d/nerdtree.vim

" *Gitgutter*
" source $XDG_CONFIG_HOME/vim/conf.d/gitgutter.vim
let g:gitgutter_grep = 'rg'

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

" *FZF*
source $XDG_CONFIG_HOME/vim/conf.d/fzf.vim

" *latex-unicoder.vim*
source $XDG_CONFIG_HOME/vim/conf.d/latex_unicoder.vim

" *Peekaboo*
let g:peekaboo_delay=250 " Delay the side window unless I'm really slow

" *EasyMotion, quickscope etc*
source $XDG_CONFIG_HOME/vim/conf.d/Motions.vim

" *YankRing*
" source $XDG_CONFIG_HOME/vim/conf.d/yankring.vim

" *Codi*
" source $XDG_CONFIG_HOME/vim/conf.d/codi.vim
" Slime
source $XDG_CONFIG_HOME/vim/conf.d/slime.vim


" *Incsearch*
set hlsearch
let g:incsearch#auto_nohlsearch = 1

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

" *taskwiki*
source $XDG_CONFIG_HOME/vim/conf.d/taskwiki.vim

" *vim-arduino
source $XDG_CONFIG_HOME/vim/conf.d/vim-arduino.vim

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

" Aesthetics:

" vim-operator-highlight
source $XDG_CONFIG_HOME/vim/conf.d/operator-highlight.vim

" NightAndDay:
source $XDG_CONFIG_HOME/vim/conf.d/night-and-day.vim

let g:kitty_navigator_listening_on_address = $XDG_RUNTIME_DIR . '/kitty'
let g:oscyank_term = 'kitty'
