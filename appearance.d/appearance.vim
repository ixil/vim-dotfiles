" General apperance settinsg
" set background=dark
colorscheme PaperColor
" let g:nd_themes = [
"   \ ['6:00',  'PaperColor', 'light'],
"   \ ['17:00', 'hybrid-sl', 'dark'],
"   \ ]
let g:nd_themes = [
  \ ['6:00',  'PaperColor', 'light'],
  \ ['17:00', 'PaperColor', 'dark'],
  \ ]

set stl+=%{ConflictedVersion()}

" Gui Options
if has('gui_running')
    " No toolbar, menu bar, and scroll bar in GVim
    set guioptions-=T
    set guioptions-=l
    set guioptions-=L
    set guioptions-=m
    set guioptions-=M
    set guioptions-=r
    set guioptions-=R
    set guifont=iosevka\ 12
    "set guifont=Consolas\ 12
    "set guifont=Mononoki 12
    "set guifont=Fira\ Mono\ 12
    "set guifont=iosevka\ nerd
    set listchars=tab:→\ 
    set listchars+=eol:↲
    set listchars+=nbsp:␣
    set listchars+=extends:❯,precedes:❮
    " set listchars+=trail:•
    set showbreak=↪\ 
else
    let g:CSApprox_loaded = 1
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Listchars:
" set listchars+=trail:◥
"                trail:·
set listchars=tab:▸\ 
"             tab:»·
set listchars+=eol:¬
"              eol:★
"              eol:¶
set listchars+=extends:→,precedes:←
"              extends:❯,precedes:❮
"              extends:»,precedes:«
set listchars+=nbsp:◥
"              nbsp:_
"              nbsp:+
set showbreak=★★★
"            =↪\  
"            =+++     " Wrap-broken line prefix


"vertical splits less gap between bars
set fillchars+=vert:│
" Add a visual vertical line 1 column after textwidth
if exists('+colorcolumn')
    set colorcolumn=+1
endif

"Plugins:

"YCM:
let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '⚠'
