let g:vimtex_quickfix_mode=2
let g:vimtex_compiler_latexmk={
      \ 'options': [
        \ '-verbose',
        \ '-shell-escape',
        \ '-file-line-error',
        \ '-synctex=1',
        \ '-interaction=nonstopmode',
        \ ],
      \ 'build_dir' : 'build'
      \}
" let g:vimtex_compiler_latexmk = {
"             \ 'options': ['-shell-escape'],
"             \}
if has('nvim')
  " let g:vimtex_view_general_options = "-x nvr --servername /tmp/mynvimserver --remote-silent +%l '%f'"
  " let g:vimtex_view_general_options_latexmk = '-x "nvr --servername /tmp/mynvimserver --remote-silent +%l '%f'""'
  " vim --remote-expr "vimtex#view#reverse_goto(%l, '%f')"
  " let g:vimtex_compiler_progname = 'nvr'
else
  " let g:vimtex_view_general_options = '-x "nvr --servername /tmp/mynvimserver --remote-silent +%l "%f""'
  " let g:vimtex_view_general_options_latexmk = "vim --remote-expr "vimtex#view#reverse_goto(%l, '%f')""
endif
" let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_method='zathura'

" let g:vimtex_view_method = 'zathura'
let g:tex_conceal='abdmg'

" let g:vimtex_quickfix_ignore_filters
