
" let g:gutentags_cache_dir = '$XDG_CACHE_HOME/vim/gutentags/'
let g:gutentags_define_advanced_commands = 0
let g:gutentags_cache_dir = expand('~/.cache/vim/gutentags/')

let g:gutentags_modules = ['ctags']
" enable gtags module
" let g:gutentags_modules = ['ctags', 'gtags_cscope']
let g:gutentags_ctags_extra_args = [
            \ '--tag-relative=yes',
            \ '--fields=+ailmnS',
            \ ]
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_resolve_symlinks = 1

" Gutentags Plus:\
" config project root markers.
" let g:gutentags_file_list_command = {
"             \ 'markers': {
"             \ '.git': 'git ls-files',
"             \ '.hg': 'hg locate',
"             \ },
"             \ }
let g:gutentags_project_root = ['.root', 'git']
let g:gutentags_plus_nomap = 1

" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1
command! -nargs=0 GutentagsClearCache call system('rm ' . g:gutentags_cache_dir . '/*')
