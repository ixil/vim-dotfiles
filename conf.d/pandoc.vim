
" enable pandoc functionality for markdown files but use the markdown filetype and syntax
let g:pandoc#keyboard#use_default_mappings=1
let g:pandoc#keyboard#blacklist_submodule_mappings=[]

" Filetypes
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 1

let g:pandoc#formatting#textwidth = 100
let g:pandoc#command#prefer_pdf = 1
" let g:pandoc#command#custom_open = "MyPandocOpen"
" let g:pandoc#compiler#arguments = "---quiet ---strict"

let g:pandoc#after#modules#enabled = ["nrrwrgn", "ultisnips"]
" let g:pandoc#biblio#use_bibtool=[]
let g:pandoc#biblio#sources="bclg"
let g:pandoc#completion#bib#mode='citeproc'
let g:pandoc#folding#fold_yaml=1
" Also see konfekt/fastfold
let g:pandoc#folding#fastfolds=1
let g:pandoc#folding#level=0
let g:pandoc#biblio#sources=["~/Documents/Papers/wheeled_anymal.bib"]


" let g:pandoc#command#templates_file= split(&runtimepath, ",")[0]."/vim-pandoc-templates"

