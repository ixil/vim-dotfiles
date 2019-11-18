let g:clang_extent_selector_use_default_mapping = 0

" augroup clang-extent-selector-mappings
"     autocmd!
"     autocmd FileType c,cpp map <buffer><Leader><Leader> <Plug>(clang-select-next-extent)
" augroup END


" let g:textobj_clang_mapping_kind = ['any', 'class', 'function', 'expression', 'statement', 'parameter', 'namespace', 'under_cursor', 'most_inner']s
let g:textobj_clang_more_mappings = 1
" i;m 	select the most inner definition
" i;c 	select class blocks
" i;f 	select function blocks
" i;e 	select an expression
" i;s 	select an statement
" i;p 	select an parameter and a template parameter
" i;n 	select a namespace
" i;u 	select an element under cursor
" i;a 	select expression, statement, function, class or namespace
