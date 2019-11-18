
" In the XDG_DATA_HOME, should probably be moved to a globallly accessible area TODO
" augroup lexical
"     autocmd!
"     autocmd FileType markdown,mkd call lexical#init()
"     autocmd FileType textile call lexical#init()
" "    autocmd FileType plaintex call lexical#init({ 'spell': 0 })
" "    autocmd FileType tex call lexical#init({ 'spell': 0 })
"     autocmd FileType text call lexical#init({ 'spell': 0 })
" augroup END

let g:lexical#spelllang = ['en_au', 'de']
let g:lexical#spellfile = [ '/usr/share/dict/' ]
let g:lexical#thesaurus = [ '~/.local/share/vim/thesaurus/mthesaur.txt' ]
let g:tq_mthesaur_file="~/.local/share/vim/thesaurus/mthesaur.txt"
let g:tq_online_backends_timeout = 0.4

let g:tq_truncation_on_syno_list_size = 200
let g:tq_language=['en', 'de']
let g:tq_enabled_backends=["thesaurus_com", "openoffice_en", "openthesaurus_de",  "mthesaur_txt", ]
let g:tq_online_backends_timeout = 0.4
let g:tq_truncation_on_definition_num = 3
let g:tq_map_keys = 0

