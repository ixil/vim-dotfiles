au FileType vimwiki call pandoc#completion#Init()
let g:vimwiki_table_mappings = 0
let g:vimwiki_list = [
            \{'path': '~/Documents/VimWiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_folding='syntax'
" au BufRead,BufNewFile *.wiki set filetype=vimwiki
" :autocmd FileType vimwiki map d :VimwikiMakeDiaryNote
function! ToggleCalendar()
  execute ":Calendar"
  if exists("g:calendar_open")
    if g:calendar_open == 1
      execute "q"
      unlet g:calendar_open
    else
      g:calendar_open = 1
    end
  else
    let g:calendar_open = 1
  end
endfunction
" TODO calendar toggle 
" :autocmd FileType vimwiki map c :call ToggleCalendar()

" TODO template generator
" au BufNewFile ~/vimwiki/diary/*.md :silent 0r !~/.vim/bin/generate-vimwiki-diary-template '%'
