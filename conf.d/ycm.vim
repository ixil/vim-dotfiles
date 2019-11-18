
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif

" let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
call extend(g:ycm_semantic_triggers, {
            \ 'roslaunch' : ['="', '$(', '/'],
            \ 'rosmsg,rossrv,rosaction' : ['re!^', '/'],
            \ })

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
let g:ycm_clangd_uses_ycmd_cache = 0
" use installed clangd, not YCM bundled clangd which doesn't get updates
let g:ycmclangd_binary_path = exepath("clangd")
