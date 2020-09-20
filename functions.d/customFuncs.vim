" File for helper functions independent of plugins etc vim-plug

" Contents:
" Functions:
" Locals:
" s:SynStack
" s:DiffSaved
" Globals:
" Commands:
"" Globals Commands:
" :DiffOrig
" :Cwd
" :Wd
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions:
"function! s:DiffWithSaved()
"  let filetype=&ft
"  diffthis
"  vnew | r # | normal! 1Gdd
"  diffthis
"  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
"endfunction
"
"com! DiffSaved call s:DiffWithSaved()
" Local Functions:
" Show syntax highlighting groups for word under cursor

" Globals Functions:
function! customFuncs#SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

function! customFuncs#SynStack2()
    if !exists("*synstack")
        return
    endif
    echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
                \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
                \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"
endfunc

function! customFuncs#Underline(chars)
    " default character is     '-'
  let chars = empty(a:chars) ? '-' : a:chars
  let nr_columns = virtcol('$') - 1
  let uline = repeat(chars, (nr_columns / len(chars)) + 1)
  put =strpart(uline, 0, nr_columns)
endfunction
command! -nargs=? Underline call customFuncs:Underline(<q-args>)

function! customFuncs#ExecuteMacroOverVisualRange()
    " Run the recording only over matched visual range
    " Stolen from: https://github.com/stoeffel/.dotfiles/blob/master/vim/visual-at.vim
echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

function! s:Scratch (command, ...)
" Put the outputs of a vim command in a new buffer
    redir => lines
    let saveMore = &more
    set nomore
    execute a:command
    redir END
    let &more = saveMore
    call feedkeys("\<cr>")
    new | setlocal buftype=nofile bufhidden=hide noswapfile
    put=lines
    if a:0 > 0
        execute 'vglobal/'.a:1.'/delete'
    endif
    if a:command == 'scriptnames'
        %substitute#^[[:space:]]*[[:digit:]]\+:[[:space:]]*##e
    endif
    silent %substitute/\%^\_s*\n\|\_s*\%$
    let height = line('$') + 3
    execute 'normal! z'.height."\<cr>"
    0
endfunction

" set header title for journal & enter writing mode
function! JournalMode()
    execute 'normal gg'
    let filename = '#' . ' ' . expand('%:r')
    call setline(1, filename)
    execute 'normal o'
    execute 'Goyo'
endfunction

" Commands:
" Fugitive: Git Review
command Greview :Git! diff --staged

" Or without vim... :w !diff % -
command! DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis

" Change directory to the buffer's
command! Cwd cd %:p:h
command! Wd write|bdelete

command! -nargs=? Scriptnames call <sid>Scratch('scriptnames', <f-args>)
command! -nargs=+ Scratch call <sid>Scratch(<f-args>)

