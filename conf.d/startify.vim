" Startify:
let g:startify_fortune_use_unicode = 1

let g:startify_session_savevars = [
           \ 'g:startify_session_savevars',
           \ 'g:startify_session_savecmds'
           \ ]


let g:startify_skiplist = [
 \ '^/run/user/1000/firenvim',
 \ '^/tmp/.*',
 \ 'COMMIT_EDITMSG',
 \ 'runtime/doc/.*\.txt$',
 \ 'bundle/.*/doc/.*\.txt$',
 \ 'plugged/.*/doc/.*\.txt$',
 \ '/.git/',
 \ 'fugitiveblame$',
 \ escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc/.*\.txt$',
 \ ]

let g:startify_disable_at_vimenter = 1

let g:startify_session_dir = '~/.config/vim/sessions'
let g:startify_custom_header = []
" let g:startify_bookmarks = [
"          \ { 'c': '~/.vim/vimrc' },
"          \ '~/golfing',
"          \ ]
" g:startify_skiplist=[]
"
if has('nvim')
    " autocmd TabNewEntered * Startify
else
    autocmd BufWinEnter *
                \ if !exists('t:startify_new_tab')
                \     && empty(expand('%'))
                \     && empty(&l:buftype)
                \     && &l:modifiable |
                \   let t:startify_new_tab = 1 |
                \   Startify |
                \ endif
endif

autocmd BufEnter *
       \ if !exists('t:startify_new_tab') && empty(expand('%')) && !exists('t:goyo_master') |
       \   let t:startify_new_tab = 1 |
       \   Startify |
       \ endif

function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
