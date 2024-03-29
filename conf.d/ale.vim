
let g:airline#extensions#ale#enabled = 1

let g:ale_sign_warning = '›'
let g:ale_sign_error = '›'

let g:ale_c_cc_options='-std=c20 -Wall'
let g:ale_cpp_cc_options =1
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_lint_delay = 400             "Default 200 ms
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s (%severity%)%(code)%'
" let g:ale_echo_msg_format = '%s [%severity%]:[%linter%] '

" Do manually
let g:ale_maximum_file_size = 500000  " Don't lint large files (> 500KB), it can slow things down

let g:ale_fixers = {}
let g:ale_linters = {}
let g:ale_linters_ignore = {}

let g:ale_pattern_options = {
            \   '.*\.md$': {'ale_enabled': 0},
            \   '.*\.rst$': {'ale_enabled': 0},
            \   '.*\.txt$': {'ale_enabled': 0},
            \   '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
            \   '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
            \}



let g:ale_parse_compile_commands=1

let g:ale_linters_ignore.cpp = [ 'cquery', 'g\+\+', 'gcc', 'clang', 'cppcheck']

" let g:ale_linters.javascript = ['eslint']
" let g:ale_linters.html = []
let g:ale_linters.tex = ['lacheck', 'chktex', 'texlab', 'redpen', 'proselint', 'vale', 'lty']
let g:ale_linters.python = ['flake8']
let g:ale_linters.yaml = ['yamllint']
let g:ale_linters.openapi = ['ibm_validator']

let g:ale_fixers.tex = ['latexindent', 'textlint']
let g:ale_fixers.javascript = ['prettier']
let g:ale_fixers.cpp = ['clang-format', 'clangtidy', 'trim_whitespace', 'uncrustify', 'remove_trailing_lines']
let g:ale_fixers.python = ['black']
let g:ale_fixers.css = ['prettier']
let g:ale_fixers.yaml = ['prettier']
let g:ale_fixers.openapi = ['yamlfix', 'prettier']

" 'add_blank_lines_for_python_control_statements' - Add blank lines before control statements.
" 'autopep8' - Fix PEP8 issues with autopep8.
" 'black' - Fix PEP8 issues with black.
" 'isort' - Sort Python imports with isort.
" 'yapf' - Fix Python files with yapf.

" let g:ale_linters_ignore.cpp = [ 'cquery', 'g\+\+', 'gcc', 'clazy', 'cppcheck', 'clangd', 'clang']
" let g:ale_linters_ignore.c = [ 'cquery', 'g\+\+', 'gcc', 'clazy', 'cppcheck', 'clangd', 'clang']
