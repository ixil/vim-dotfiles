" For plasticboy/vim-markdown


" for ```csharp write 'csharpe=cs' to use the cs fietype syntax
let g:vim_markdown_fenced_languages = ['csharp=cs', 'c++=cpp', 'viml=vim', 'bash=sh', 'ini=dosini', 'python=py']
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_folding_level = 2
let g:vim_markdown_conceal = 1      " 0 disables conceal

" Disable math concealing with tex_conceal "" markdown_math = 1
" let g:tex_conceal = ""      " tex concealing
let g:vim_markdown_math = 1

let g:vim_markdown_follow_anchor = 1    " ge follows anchors in text
let g:vim_markdown_no_extensions_in_markdown = 1 " open x.md file by default with ge instead of x
let g:vim_markdown_new_list_item_indent = 2
" Useful for gitlab and github wiki links
let g:vim_markdown_no_extensions_in_markdown = 1

