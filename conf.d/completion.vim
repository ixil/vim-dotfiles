" Required
lua << EOF
require'lspconfig'.pyright.setup{}
EOF

" augroup CompletionTriggerCharacter
"     autocmd!
"     autocmd BufEnter * let g:completion_trigger_character = ['.']
"     autocmd BufEnter *.c,*.cpp let g:completion_trigger_character = ['.', '::']
" augroup end

" For using <TAB> as a trigger key
" imap <tab> <Plug>(completion_smart_tab)
" imap <s-tab> <Plug>(completion_smart_s_tab)

let g:completion_trigger_keyword_length = 3 " default = 1
let g:completion_enable_snippet = 'UltiSnips'
let g:completion_enable_auto_popup = 1
let g:completion_auto_change_source = 1

" Source is automatically added, you just need to include it in the chain complete list
let g:completion_chain_complete_list = {
            \ 'default': [
            \   { 'complete_items': ['lsp', 'snippet']},
            \   { 'complete_items': ['tags']},
            \   { 'complete_items': ['buffers'] },
            \   { 'mode': { '<c-p>' } },
            \   { 'mode': { '<c-n>' } }
            \ ],
            \ 'sql': [
            \   {'complete_items': ['vim-dadbod-completion']},
            \ ],
            \ }

" Modes
"<c-n>" : i_CTRL-N
"<c-p>" : i_CTRL-P
"cmd" : i_CTRL-X_CTRL-V
"defs": i_CTRL-X_CTRL-D
"dict": i_CTRL-X_CTRL-K
"file": i_CTRL-X_CTRL-F
"incl": i_CTRL-X_CTRL-I
"keyn": i_CTRL-X_CTRL-N
"keyp": i_CTRL-X_CTRL-P
"omni": i_CTRL-X_CTRL-O
"line": i_CTRL-X_CTRL-L
"spel": i_CTRL-X_s
"tags": i_CTRL-X_CTRL-]
"thes": i_CTRL-X_CTRL-T
"user": i_CTRL-X_CTRL-U


" Make sure `substring` is part of this list. Other items are optional for this completion source
" let g:completion_matching_strategy_list = ['exact', 'substring']
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']
" Useful if there's a lot of camel case items
let g:completion_matching_smart_case = 1
" let g:completion_matching_ignore_case = 1

" possible value: "length", "alphabet", "none"
let g:completion_sorting = "length"

" let g:completion_enable_auto_hover = 0
" let g:completion_enable_auto_signature = 0
let g:completion_trigger_on_delete = 0
let g:completion_timer_cycle = 80 "default value is 80

" For avoding auto-pairs conflict
" let g:completion_confirm_key = ""
" imap <expr> <cr>  pumvisible() ? complete_info()["selected"] != "-1" ?
"             \ "\<Plug>(completion_confirm_completion)"  : "\<c-e>\<CR>" :  "\<CR>"
