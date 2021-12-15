
function! s:IsFirenvimActive(event) abort
  if !exists('*nvim_get_chan_info')
    return 0
  endif

  let l:bufname=expand('%:t')
  if l:bufname =~? 'github.com'
      set ft=markdown
      colorscheme github
  elseif l:bufname =~? 'cocalc.com' || l:bufname =~? 'kaggleusercontent.com'
      set ft=python
  elseif l:bufname =~? 'localhost'
      " Jupyter notebooks don't have any more specific buffer information. If you
      " use some other locally hosted app you want editing function in, set it
      " here.
      " set ft=python
  elseif l:bufname =~? 'reddit.com'
      set ft=markdown
  elseif l:bufname =~? 'stackexchange.com' || l:bufname =~? 'stackoverflow.com'
      set ft=markdown
  elseif l:bufname =~? 'slack.com' || l:bufname =~? 'gitter.com'
      set ft=markdown
  elseif l:bufname =~? 'riot.im'
      " for chat apps. Enter sends the message and deletes the buffer.
      " Shift enter is normal return. Insert mode by default.
      " Note that slack and gitter probably don't respond appropriately to press_keys. Workarounds might directly call javascript functions to send the messages.
      normal! i
      inoremap <CR> <Esc>:w<CR>:call firenvim#press_keys("<LT>CR>")<CR>ggdGa
      inoremap <s-CR> <CR>
  endif

  nnoremap <Esc><Esc> :call firenvim#focus_page()<CR>

  let l:ui = nvim_get_chan_info(a:event.chan)
  return has_key(l:ui, 'client') && has_key(l:ui.client, 'name') &&
      \ l:ui.client.name =~? 'Firenvim'
endfunction

function! OnUIEnter(event) abort
  if s:IsFirenvimActive(a:event)
    set laststatus=0
  endif
endfunction
autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
