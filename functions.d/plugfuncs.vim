" File for helper functions for vim-plug

" Contents
" Functions:
" Commands:



" Functions:
" |AutohighlightToggle|
" |GlobalChangedLines(ex_cmd)|
" |s:config_fuzzyall|
" |s:config_easyfuzzymotion|
" |s:plug_help_sink|
" |s:scroll_preview(down)|
" |s:setup_extra_keys()|
" |s:plug_gx()|
" |s:plug_doc()|

" Commands:
" |Rg|
" |Findcommand|
" |Files command|
" |Glines|
" |PlugHelp|


function! MyPandocOpen(file)
    return 'zathura --synctex-forward " . line('.') . ":" . col('.') . ":" . shellescape(expand(a:file,':p')) . " " .
endfunction


" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

" fuzzy spellhelp
function! s:config_fuzzyall(...) abort
      return extend(copy({
        \   'converters': [
        \     incsearch#config#fuzzy#converter(),
        \     incsearch#config#fuzzyspell#converter()
        \   ],
        \ }), get(a:, 1, {}))
endfunction


" incsearch.vim x fuzzy x vim-easymotion
function! s:config_easyfuzzymotion(...) abort
      return extend(copy({
        \   'converters': [incsearch#config#fuzzy#converter()],
        \   'modules': [incsearch#config#easymotion#module()],
        \   'keymap': {"\<CR>": '<Over>(easymotion)'},
        \   'is_expr': 0,
        \   'is_stay': 1
        \ }), get(a:, 1, {}))
endfunction

" :Z - cd to recent / frequent directories
function! Z(...)
  let cmd = 'fasd -d -e printf'
  for arg in a:000
    let cmd = cmd . ' ' . arg
  endfor
  let path = system(cmd)
  if isdirectory(path)
    echo path
    exec 'cd' fnameescape(path)
  endif
endfunction


"Browse help files and readme.md
function! s:plug_help_sink(line)
    let dir = g:plugs[a:line].dir
    for pat in ['doc/*.txt', 'README.md']
        let match = get(split(globpath(dir, pat), "\n"), 0, '')
        if len(match)
            execute 'tabedit' match
            return
        endif
    endfor
    tabnew
    execute 'Explore' dir
endfunction

""" Plug Auxiliary

" Extra key bindings for PlugDiff [J,K, C-N,C-P, C-J, C-K]
function! s:scroll_preview(down)
    silent! wincmd P
    if &previewwindow
        execute 'normal!' a:down ? "\<c-e>" : "\<c-y>"
        wincmd p
    endif
endfunction

function! s:setup_extra_keys()
    nnoremap <silent> <buffer> J :call <sid>scroll_preview(1)<cr>
    nnoremap <silent> <buffer> K :call <sid>scroll_preview(0)<cr>
    nnoremap <silent> <buffer> <c-n> :call search('^  \X*\zs\x')<cr>
    nnoremap <silent> <buffer> <c-p> :call search('^  \X*\zs\x', 'b')<cr>
    nmap <silent> <buffer> <c-j> <c-n>o
    nmap <silent> <buffer> <c-k> <c-p>o
endfunction

augroup PlugDiffExtra
    autocmd!
    autocmd FileType vim-plug call s:setup_extra_keys()
augroup END

"[gx] open github urls on Plug lines in browser
function! s:plug_gx()
    let line = getline('.')
    let sha  = matchstr(line, '^  \X*\zs\x\{7,9}\ze ')
    let name = empty(sha) ? matchstr(line, '^[-x+] \zs[^:]\+\ze:')
                \ : getline(search('^- .*:$', 'bn'))[2:-2]
    let uri  = get(get(g:plugs, name, {}), 'uri', '')
    if uri !~ 'github.com'
        return
    endif
    let repo = matchstr(uri, '[^:/]*/'.name)
    let url  = empty(sha) ? 'https://github.com/'.repo
                \ : printf('https://github.com/%s/commit/%s', repo, sha)
    call netrw#BrowseX(url, 0)
endfunction

augroup PlugGx
    autocmd!
    autocmd FileType vim-plug nnoremap <buffer> <silent> gx :call <sid>plug_gx()<cr>
augroup END

"[H] to open help docs
function! s:plug_doc()
    let name = matchstr(getline('.'), '^- \zs\S\+\ze:')
    if has_key(g:plugs, name)
        for doc in split(globpath(g:plugs[name].dir, 'doc/*.txt'), '\n')
            execute 'tabe' doc
        endfor
    endif
endfunction

augroup PlugHelp
    autocmd!
    autocmd FileType vim-plug nnoremap <buffer> <silent> H :call <sid>plug_doc()<cr>
augroup END

" Git related functions
" gitgutter:
" :Glines to select, eg. :Glines s/\s\+$// to remove traliing whitespace from all changed lines
function! GlobalChangedLines(ex_cmd)
    for hunk in GitGutterGetHunks()
        for lnum in range(hunk[2], hunk[2]+hunk[3]-1)
            let cursor = getcurpos()
            silent! execute lnum.a:ex_cmd
            call setpos('.', cursor)
        endfor
    endfor
endfunction


""" Commands:
command! -nargs=1 Glines call GlobalChangedLines(<q-args>)
command! AutoHighlightToggle call AutoHighlightToggle()
command! -nargs=* Z :call Z(<f-args>)

command! FZFMulti call fzf#run(fzf#wrap({
            \ 'source': 'ag -l',
            \ 'options': ['--multi'],
            \ }))

" Requires FZF - Plug Help
command! PlugHelp call fzf#run(fzf#wrap({ 'source': sort(keys(g:plugs)), 'sink': function('s:plug_help_sink')}))

" Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], preview window, [toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
"   :Rg  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Rg! - Start fzf in fullscreen and display the preview window above
"
" command! -bang -nargs=* Ag
"   \ call fzf#vim#ag(<q-args>,
"   \                 <bang>0 ? fzf#vim#with_preview('up:60%')
"   \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
"   \                 <bang>0)

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -L '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Find Command:
" only list files with the argument value.
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)

" Files command:
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)


