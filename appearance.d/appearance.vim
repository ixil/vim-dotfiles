"  Apperance Settings:
                                                                                              " {{{1

" Terminal And GUI Options:
                                                                                              " {{{1
" Gui Options
if has('gui_running')
  source $XDG_CONFIG_HOME/vim/appearance.d/gui.vim
else
  " Cursor shape also check plugin wincent/terminus
  " 0 -> blinking block. 1 -> blinking block (default). 2 -> steady block. 3 -> blinking underline.
  " 4 -> steady underline. 5 -> blinking bar (xterm). 6 -> steady bar (xterm)
  " TODO add some colors, replace -> red, visual -> blue/purple
  " TODO check the term type - requires a patch TERM
  " let &t_SI.="\e[5 q"  "Insert
  " let &t_SR.="\e[4 q"   "Replace
  " let &t_EI.="\e[1 q"  "NORMAL
  " augroup myCmds
    " optional reset cursor on start:
    " au!
    " autocmd VimEnter * silent !echo -ne "\e[2 q"
  " augroup END

  " 256color termcaps
  if &term =~# '256color'
    if ( &term =~# '^screen'  || &term =~# '^tmux' )
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
    else
      set termguicolors " be hopeful it's already set
    endif
  endif
endif

" General:
                                                                                              " {{{1


" Visuals:                                                                                    " {{{2
source $XDG_CONFIG_HOME/vim/appearance.d/fonts.vim
source $XDG_CONFIG_HOME/vim/appearance.d/listchars.vim

" Colorscheme:
set background=dark
colorscheme PaperColor
" let g:nd_themes = [
"   \ ['6:00',  'PaperColor', 'light'],
"   \ ['17:00', 'hybrid-sl', 'dark'],
"   \ ]
let g:nd_themes = [
  \ ['6:00',  'PaperColor', 'light'],
  \ ['17:00', 'PaperColor', 'dark'],
  \ ]

"vertical splits less gap between bars in the status bars
set fillchars+=vert:│
" Add a visual vertical line 1 column after text width
if exists('+colorcolumn')
    set colorcolumn=+1
endif

"Plugins Specifics:
                                                                                              " {{{1

"YCM:
let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '⚠'

" Gitgutter Signify:
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')

" let g:signify_sign_add                = emoji#for('small_blue_diamond')   " = '+'                  
" let g:signify_sign_change             = emoji#for('small_orange_diamond') " = '!'                  
" let g:signify_sign_delete             = emoji#for('small_red_triangle')   " = '_'                  
" let g:signify_sign_delete_first_line  = emoji#for('exclamation')          " = '‾'                  
" let g:signify_sign_changedelete       = emoji#for('collision')            " = g:signify_sign_change
let g:signify_sign_show_count = 1
let g:signify_sign_show_text = 1

                                                                                              " {{{1
" Syntaxes And Highlights:

" Make comments italic
highlight Comment cterm=italic

"Plugins Specifics:                                                                         " {{{2
highlight link SignifyLineAdd             DiffAdd
highlight link SignifyLineChange          DiffChange
highlight link SignifyLineDelete          DiffDelete
highlight link SignifyLineChangeDelete    SignifyLineChange
highlight link SignifyLineDeleteFirstLine SignifyLineDelete

highlight link SignifySignAdd             DiffAdd
highlight link SignifySignChange          DiffChange
highlight link SignifySignDelete          DiffDelete
highlight link SignifySignChangeDelete    SignifySignChange
highlight link SignifySignDeleteFirstLine SignifySignDelete

