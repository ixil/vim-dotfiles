
" let g:gutentags_cache_dir = '$XDG_CACHE_HOME/vim/gutentags/'
let g:gutentags_define_advanced_commands = 1
let g:gutentags_cache_dir = $HOME .'/.cache/vim/gutentags/'

" Gutentags Plus:\
" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']

" config project root markers.
let g:gutentags_project_root = ['.git', '.root']
let g:gutentags_plus_nomap = 1

" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1

