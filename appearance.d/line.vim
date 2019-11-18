
set stl+=%{ConflictedVersion()}

"Not Airline:
function! s:fzf_statusline()
    " Override statusline as you like
    highlight fzf1 ctermfg=161 ctermbg=251
    highlight fzf2 ctermfg=23 ctermbg=251
    highlight fzf3 ctermfg=237 ctermbg=251
    setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


"Airline:
"Airline settings
let g:airline_powerline_fonts=1
let g:airline_theme='badwolf'
let g:airline_theme='tomorrow'

" TODO wrap in the 'if tmux'
let g:airline#extensions#tmuxline#enabled = 0
" let airline#extensions#tmuxline#snapshot_file = "~/.config/tmux/tmux-statusline-colors.conf"

" Explicitly specify which extensions to use
" let g:airline_extensions = ['branch', 'tabline', 'ale', 'whitespace']
let g:airline_extensions = ['branch', 'tabline', 'ale', 'csv', 'gutentags', 'hunks', 'nrrwrgn', 'quickfix', 'tagbar', 'whitespace',]

" Tabline:
" let airline#extensions#tabline#current_first = 1
let g:airline#extensions#tabline#formatter= 'unique_tail_improved'
" let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits (default)
" let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
" let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
" let g:airline#extensions#tabline#tabnr_formatter = 'tabnr'
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'

" let g:airline#extensions#tabline#keymap_ignored_filetypes = ['vimfiler', 'nerdtree']
" fixes unnecessary redraw, when e.g. opening Gundo window
let airline#extensions#tabline#ignore_bufadd_pat =
            \ '\c\vgundo|undotree|vimfiler|tagbar|nerd_tree'

" Hunks:
" let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']

" ALE:
"  let g:airline#extensions#ale#enabled = 1
"  let airline#extensions#ale#error_symbol = 'E:'
"  let airline#extensions#ale#warning_symbol = 'W:'
"  let airline#extensions#ale#show_line_numbers = 1
"  let airline#extensions#ale#open_lnum_symbol = '(L'
"  let airline#extensions#ale#close_lnum_symbol = ')'
