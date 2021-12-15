" autocmd CmdwinEnter * inoremap <expr><buffer> <TAB>
"             \ pumvisible() ? "\<C-n>" : "\<TAB>"
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_collect_identifiers_from_tags_files = 0
" let let g:ycm_language_server = []

" TODO
" let g:ycm_global_ycm_extra_conf = '~/.vim/default_ycm_extra_conf.py'
" let g:ycm_extra_conf_globlist = ['~/'.$ROS_WORKSPACE.'/*']

let g:ycm_filetype_blacklist={
            \  'fugitive': 1,
            \  'infolog':  1,
            \  'log':      1,
            \  'mail':     1,
            \  'nerdtree': 1,
            \  'notes':    1,
            \  'pandoc':   1,
            \  'peekaboo': 1,
            \  'qf':       1,
            \  'tagbar':   1,
            \  'text':     1,
            \  'unite':    1,
            \  'vim-plug': 1
            \ }

if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif


" let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
call extend(g:ycm_semantic_triggers, {
            \ 'roslaunch' : ['="', '$(', '/'],
            \ 'rosmsg,rossrv,rosaction' : ['re!^', '/'],
            \ })

" pandoc citekeys
let g:ycm_semantic_triggers.pandoc = ['@']
let g:ycm_semantic_triggers.markdown = ['@']

" Modified from :put =string(g:vimetex#re#youcompleteme``)
let g:ycm_semantic_triggers.tex = [
            \ 're!\\[A-Za-z]+',
            \ 're!\\(usepackage|RequirePackage|PassOptionsToPackage)(\s*\[[^]]*\])?\s*\{[^}]*',
            \ 're!\\documentclass(\s*\[[^]]*\])?\s*\{[^}]*',
            \ 're!\\begin(\s*\[[^]]*\])?\s*\{[^}]*',
            \ 're!\\end(\s*\[[^]]*\])?\s*\{[^}]*',
            \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
            \ 're!\\(text|block)cquote\*?(\[[^]]*\]){0,2}{[^}]*',
            \ 're!\\(for|hy)[A-Za-z]*cquote\*?{[^}]*}(\[[^]]*\]){0,2}{[^}]*',
            \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
            \ 're!\\hyperref\[[^]]*',
            \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
            \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
            \ 're!\\(include(only)?|input|subfile){[^}]*',
            \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
            \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
            \ ]

" let g:ycm_semantic_triggers.tex = [
"             \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
"             \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
"             \ 're!\\hyperref\[[^]]*',
"             \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
"             \ 're!\\(include(only)?|input){[^}]*',
"             \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
"             \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
"             \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
"             \ ]

let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }


"let clangd fully control code completion
" let g:ycm_clangd_uses_ycmd_cache = 0
" use installed clangd, not YCM bundled clangd which doesn't get updates
" let g:ycmclangd_binary_path = exepath("clangd")
