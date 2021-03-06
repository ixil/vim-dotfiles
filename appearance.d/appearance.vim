

                                                                                              " {{{1

" Terminal And GUI Options:
                                                                                              " {{{1
" Gui Options
if has('gui_running')
  source $XDG_CONFIG_HOME/vim/appearance.d/gui.vim
endif
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

" General:
                                                                                              " {{{1

" Behaviour
set sidescrolloff=1 "Keep extend charactor on screen / autoscroll when 1 away from window border
" set sidescroll=1

" Visuals:                                                                                    " {{{2
source $XDG_CONFIG_HOME/vim/appearance.d/fonts.vim
source $XDG_CONFIG_HOME/vim/appearance.d/listchars.vim

" AutoCmds
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END


" Colorscheme:
set background=dark
let g:nord_uniform_diff_background = 1
let g:nord_cursor_line_number_background = 1
let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_bold = 1
let base16colorspace=256
let g:one_allow_italics = 1

" colorscheme 'hybrid-sl'
colorscheme nord
" let g:nd_themes = [
"   \ ['6:00',  'snazzy', 'light'],
"   \ ['17:00', 'snazzy', 'dark'],
"   \ ]
let g:nd_themes = [
  \ ['6:00',  'one', 'light'],
  \ ['17:00', 'nord', 'dark'],
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
let g:gitgutter_sign_added = gh_emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = gh_emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = gh_emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = gh_emoji#for('collision')

" let g:signify_sign_add                = gh_emoji#for('small_blue_diamond')   " = '+'
" let g:signify_sign_change             = gh_emoji#for('small_orange_diamond') " = '!'
" let g:signify_sign_delete             = gh_emoji#for('small_red_triangle')   " = '_'
" let g:signify_sign_delete_first_line  = gh_emoji#for('exclamation')          " = '‾'
" let g:signify_sign_changedelete       = gh_emoji#for('collision')            " = g:signify_sign_change
let g:signify_sign_show_count = 1
let g:signify_sign_show_text = 1

" IndentLine {{
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_char = ''
" let g:indentLine_first_char = ''
let g:indentLine_fileTypeExclude = ['tex', 'md']
let g:indentLine_concealcursor = 'c'
let g:indentLine_showFirstIndentLevel = 0
let g:indentLine_setColors = 0
" " Vim
" let g:indentLine_color_term = 239
" " GVim
" let g:indentLine_color_gui = '#A4E57E'
" " none X terminal
" let g:indentLine_color_tty_light = 7 " (default: 4)
" let g:indentLine_color_dark = 1 " (default: 2)
" " Background (Vim, GVim)
" let g:indentLine_bgcolor_term = 202
" let g:indentLine_bgcolor_gui = '#FF5F00'
" }}                                                                                              " {{{1

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

