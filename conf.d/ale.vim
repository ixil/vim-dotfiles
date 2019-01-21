
let g:ale_lint_on_text_changed = 'normal'
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_lint_delay = 400             "Default 200 ms
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '%s [%severity%]:[%linter%] '

" Do manually
let g:ale_maximum_file_size = 500000  " Don't lint large files (> 500KB), it can slow things down
let g:ale_pattern_options = {
\   '.*\.md$': {'ale_enabled': 0},
\   '.*\.rst$': {'ale_enabled': 0},
\   '.*\.txt$': {'ale_enabled': 0},
\   '.*\.tex$': {'ale_enabled': 0},
\ }
let g:ale_fixers = {}
let g:ale_linters = {}
" let g:ale_linters.javascript = ['eslint']
let g:ale_linters.python = ['flake8']
" let g:ale_linters.html = []
" let g:ale_fixers.javascript = ['prettier']
let g:ale_fixers.python = ['black']
" 'add_blank_lines_for_python_control_statements' - Add blank lines before control statements.
" 'autopep8' - Fix PEP8 issues with autopep8.
" 'black' - Fix PEP8 issues with black.
" 'isort' - Sort Python imports with isort.
" 'yapf' - Fix Python files with yapf.
" let g:ale_fixers.css = ['prettier']

