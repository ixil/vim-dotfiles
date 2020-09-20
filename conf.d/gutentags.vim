
" let g:gutentags_cache_dir = '$XDG_CACHE_HOME/vim/gutentags/'
let g:gutentags_define_advanced_commands = 1
let g:gutentags_cache_dir = expand('~/.cache/vim/gutentags/')

let g:gutentags_modules = ['ctags']
" enable gtags module
" let g:gutentags_modules = ['ctags', 'gtags_cscope']
let g:gutentags_ctags_extra_args = [
            \ '--tag-relative=yes',
            \ '--fields=+ailmnS',
            \ '--extra=+q',
            \ ]

let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_resolve_symlinks = 1

let g:gutentags_ctags_exclude = [ '*.git', '*.svg', '*.hg',
                                    \ '*/tests/*',
                                    \ 'build',
                                    \ 'dist',
                                    \ '*sites/*/files/*',
                                    \ 'bin',
                                    \ 'node_modules',
                                    \ 'bower_components',
                                    \ 'cache',
                                    \ 'compiled',
                                    \ 'docs',
                                    \ 'example',
                                    \ 'bundle',
                                    \ 'vendor',
                                    \ '*-lock.json',
                                    \ '*.lock',
                                    \ '*bundle*.js',
                                    \ '*build*.js',
                                    \ '.*rc*',
                                    \ '*.json',
                                    \ '*.min.*',
                                    \ '*.map',
                                    \ '*.bak',
                                    \ '*.zip',
                                    \ '*.pyc',
                                    \ '*.class',
                                    \ '*.sln',
                                    \ '*.Master',
                                    \ '*.csproj',
                                    \ '*.tmp',
                                    \ '*.csproj.user',
                                    \ '*.cache',
                                    \ '*.pdb',
                                    \ 'tags*',
                                    \ 'cscope.*',
                                    \ '*.css',
                                    \ '*.less',
                                    \ '*.scss',
                                    \ '*.exe', '*.dll',
                                    \ '*.mp3', '*.ogg', '*.flac',
                                    \ '*.swp', '*.swo',
                                    \ '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png',
                                    \ '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2',
                                    \ '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx',
                                    \ '.ccls-cache',
                                    \ '.ccls*/**/*.blob', '.ccls*/**/*.h'
                                    \ ]
                                    " \ '*.md',

" Gutentags Plus:\
" config project root markers.
" let g:gutentags_file_list_command = 'rg --files'
let g:gutentags_file_list_command = {
            \ 'markers': {
            \ '.git': 'git ls-files',
            \ '.hg': 'hg locate',
            \ },
            \ }
let g:gutentags_project_root = ['.root', '.git', '.ccls', '.latexmkrc']
let g:gutentags_plus_nomap = 0

" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1
command! -nargs=0 GutentagsClearCache call system('rm ' . g:gutentags_cache_dir . '/*')
