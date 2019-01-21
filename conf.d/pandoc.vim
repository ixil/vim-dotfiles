
" enable pandoc functionality for markdown files but use the markdown filetype and syntax
 let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
 let g:pandoc#filetypes#pandoc_markdown = 0
 let g:pandoc#formatting#textwidth = 120
 let g:pandoc#command#prefer_pdf = 1
 let g:pandoc#command#prefer_pdf = 1
 " let g:pandoc#command#custom_open = "MyPandocOpen"
 " let g:pandoc#compiler#command = "panzer"
 " let g:pandoc#compiler#arguments = "---quiet ---strict"

let g:pandoc#after#modules#enabled = ["nrrwrgn", "ultisnips"]
let g:pandoc#biblio#sources="bclg"
let g:pandoc#completion#bib#mode='citeproc'
let g:pandoc#folding#fold_yaml=1

let g:pandoc#biblio#sources=["~/Documents/Bibliographies/My Library.bib"]

