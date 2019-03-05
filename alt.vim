
True
call plug#begin('~/.local/share/vim/plugged')
     " for turning multiline code <-> into single line: gS, gJ
     Plug 'AndrewRadev/splitjoin.vim'
     Plug 'tpope/vim-speeddating'
     Plug 'AndrewRadev/switch.vim'
call plug#end()


 "nnoremap <Plug>(switch+date) :if !switch#Switch() <bar>
 "      \ call speeddating#increment() <bar> endif<cr>
 "      " call speeddating#increment(v:count1) <Bar>en endif <CR>
 "
 "nnoremap <Plug>(switch-date) :if !switch#Switch() <bar> 
 "      \ call speeddating#increment(-v:count1) <bar> endif<cr>
 "      " \ call speeddating#increment(-v:count1) <bar> endif<cr>
 "" nnoremap <Plug>(switch-date) :if !switch#Switch({'reverse': 1}) <bar>
 ""       \ norm <Plug>SpeedDatingDown <bar> endif<cr>
 "
 "nmap <silent><unique> <C-a> <Plug>(switch+date)
 "nmap <silent><unique> <C-x> <Plug>(switch-date)
" 0
"2000-01-18
let g:speeddating_no_mappings=1 
nmap d<C-A> <Plug>SpeedDatingNowUTC
nmap d<C-X> <Plug>SpeedDatingNowLocal
nnoremap <silent> <Plug>SpeedDatingFallbackUp <c-a>
nnoremap <silent> <Plug>SpeedDatingFallbackDown <c-x>
nnoremap <silent> <c-a> :if !switch#Switch() <bar> execute "normal \<Plug>SpeedDatingUp" <bar> endif <cr>
nnoremap <silent> <c-x> :if !switch#Switch({'reverse': 1}) <bar> execute "normal \<Plug>SpeedDatingDown" <bar> endif <cr>


""let g:nd_themes = [
""   \ ['6:00',  'PaperColor', 'light'],
""   \ ['17:00', 'hybrid-sl', 'dark'],
""   \ ]
"let g:nd_themes = [
"  \ ['6:00',  'PaperColor', 'light'],
"  \ ['17:00', 'PaperColor', 'dark'],
"  \ ]
"
"call plug#begin('~/.local/share/vim/plugged')
" " Color Schemes:
"    Plug 'nightsense/night-and-day'  " switch colorschemes based on time of day
"     " PaperColor in the day, hybrid-sl at night
"
"     "Plug 'flazz/vim-colorschemes'
"     Plug 'NLKNguyen/papercolor-theme'
"     "Plug 'sloria/vim-hybrid'  
"       "hybrid with easier-to-read line numbers
"     "Plug 'noah/vim256-color' 
    "     "Uses submodules so who knows...
"     call plug#end()
"colorscheme PaperColor
"
"finish
