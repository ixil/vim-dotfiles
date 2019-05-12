let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/Templates/dev/emmet_snippets.json')), "\n"))
