let g:user_emmet_install_global = 0
autocmd FileType html,css  EmmetInstall
autocmd FileType html,css imap <TAB> <plug>(emmet-expand-abbr)
" let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/Templates/dev/emmet_snippets.json')), "\n"))
