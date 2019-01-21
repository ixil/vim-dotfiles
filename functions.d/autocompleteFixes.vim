" From: https://github.com/wincent/wincent/commit/0664b627e7390c7ab5b047ee5818801481d0f46c

function Autocomplete_expand_or_jump(direction)
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res == 0
    " No expansion occurred.
    if pumvisible()
      " Pop-up is visible, let's select the next (or previous) completion.
      if a:direction == 'N'
        return "\<C-N>"
      else
        return "\<C-P>"
      endif
    else
      call UltiSnips#JumpForwards()
      if g:ulti_jump_forwards_res == 0
        " We did not jump forwards.
        return "\<Tab>"
      endif
    endif
  endif
   " No popup is visible, a snippet was expanded, or we jumped, so nothing to do.
  return ''
endfunction


" YouCompleteMe and UltiSnips compatibility.
let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'

" TODO: change UltiSnips to not try mapping if this is empty; setting this to
" <C-k> here rather than <S-Tab> to prevent it from getting clobbered in:
" ultisnips/pythonx/UltiSnips/snippet_manager.py: _map_inner_keys
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

let g:ycm_key_list_select_completion = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

let g:ulti_jump_forwards_res = 0
let g:ulti_expand_res = 0

let g:endwise_no_mappings = 1
call plug#load('endwise')

augroup WincentAutocomplete
  autocmd!

  " Override late bindings set up by YouCompleteMe in autoload file.
  autocmd BufEnter * exec 'inoremap <silent> <Tab> <C-R>=Autocomplete_expand_or_jump("N")<CR>'
  autocmd BufEnter * exec 'inoremap <silent> <S-Tab> <C-R>=Autocomplete_expand_or_jump("P")<CR>'

  " TODO: ideally would only do this while snippet is active
  " (see pythonx/UltiSnips/snippet_manager.py; might need to open a feature
  " request or a PR to have _map_inner_keys, _unmap_inner_keys fire off
  " autocommands that I can subscribe to)
  " BUG: seems you have to do <CR> twice to actual finalize completion
  " (this happens even with the standard <C-Y>
  inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "<CR>"
" inoremap <expr> <CR> pumvisible() ? "\<C-R>=ExpandSnippetOrCarriageReturn()\<CR>" : "\<CR>\<C-R>=EndwiseDiscretionary()\<CR>"
augroup END

" Additional UltiSnips config
" let g:UltiSnipsSnippetsDir = '~/.vim/ultisnips'
" let g:UltiSnipsSnippetDirectories = ['ultisnips']

" Additional YouCompleteMe config
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1




" Make YCM compatible with UltiSnips (requires supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" " better key bindings for UltiSnipsExpandTrigger
" " let g:UltiSnipsExpandTrigger = "<cr>"
" " let g:UltiSnipsJumpForwardTrigger = "<c-j>"
" " let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
" " let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" let g:UltiSnipsExpandTrigger = "<NUL>"
" let g:ulti_expand_or_jump_res = 0
" function ExpandSnippetOrCarriageReturn()
"     let snippet = UltiSnips#ExpandSnippetOrJump()
"     if g:ulti_expand_or_jump_res > 0
"         return snippet
"     else
"         return "\<CR>"
"     endif
" endfunction

" let g:endwise_no_mappings = 1
" call plug#load('endwise')
" inoremap <expr> <CR> pumvisible() ? "\<C-R>=ExpandSnippetOrCarriageReturn()\<CR>" : "\<CR>\<C-R>=EndwiseDiscretionary()\<CR>"

" Ultisnips + YCM compatibility
" function! g:UltiSnips_Complete()
"     call UltiSnips#ExpandSnippet()
"     if g:ulti_expand_res == 0
"         if pumvisible()
"             return "\<C-n>"
"         else
"             call UltiSnips#JumpForwards()
"             if g:ulti_jump_forwards_res == 0
"                return "\<TAB>"
"             endif
"         endif
"     endif
"     return ""
" endfunction
"
" au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<CR>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsListSnippets="<c-e>"



