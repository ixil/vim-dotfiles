" |plugfuncs.vim| should be called first
" |plugsettings.vim| should remove bad default maps/set some options, but the keymap lives here.

""" Index:
" Function Keys:
" Meta Keys:
"   ALE: h/l to go through problems
" General:
"   Movement:
" NERDTree:
" YCM:
" EasyAlign:
" IncSearch:
" Ditto:
" SynStack:
" Tagbar:
" Latex Unicoder:
" TComment:
" MultiCursor:
"
" UndoTree CustomMap:
" Unmappable:

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Should know these built in commands:
" Normal:
" &, g& - repeat substitution on line, or all lines
" &: - repeat last command
" gv - reselect visual selection

" Insert mode:
" ^<C-D>, 0<C-D>, ^<C-D>, <C-F> - remove 1/remove all/restore/auto indent for line
" <C-T> - ident line
" <C-E>, <C-Y - insert character above/below line
" <C-H>, <C-W>, <C-U> - delete character,word/until start of line
" <C-W>, <C-U> - delete word/until start of line
" <C-R> + <C-P><C-O> insert register literally /fix indent
" <C-R> + <C-P><C-O> insert register literally /fix indent
" <C-_> change language
" <C-]> trigger abbrev

" Simple Important Mappings:
"
nnoremap H ^
nnoremap L $
nnoremap Y y$
nnoremap <silent> Q <C-W>c
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s
map <silent><A-1> :tabn 1<cr>
map <silent><A-2> :tabn 2<cr>
map <silent><A-3> :tabn 3<cr>
vnoremap > >gv
vnoremap < <gv
vnoremap < <gv

" Buffer Switching: note also [b, ]b
nmap ,b :bp<cr>
nmap ;b :bn<cr>

"Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

" Swaps:
" To first non-space character, 0 column
" nnoremap 0 ^
" nnoremap ^ 0
" Swap to-character and to-line keys
nnoremap ' `
nnoremap ` '

if exists('##OptionSet')
    augroup VimrcCustomDP
        autocmd!
        autocmd OptionSet diff
            \  if v:option_new == 1
            \|     nnoremap <buffer> dp dp
            \| else
            \|     nunmap <buffer> dp
            \| endif
    augroup END
endif

" Attach an additional autocommand to catch when vim is started in diff mode
autocmd VimrcCustomDP VimEnter * if &diff|nnoremap <buffer> dp dp|endif
"TODO
nnoremap <expr> <silent> dd (getline('.') =~ '^$' ? '"_' : '').'dd'

nnoremap <space>w :w<cr>
nnoremap <space>q :q<cr>

" Useful in conjunction with the . command
nnoremap c* /\<<C-r>=expand('<cword>')<CR>\>\C<CR>``cgn
nnoremap c# ?\<<C-r>=expand('<cword>')<CR>\>\C<CR>``cgN
nnoremap d* /\<<C-r>=expand('<cword>')<CR>\>\C<CR>``dgn
nnoremap d# ?\<<C-r>=expand('<cword>')<CR>\>\C<CR>``dgN
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Function Keys:
nmap "<C-g>p :put =expand('%:p')<CR>
nmap "<C-g>P h:put =expand('%:p')<CR>
" omap <C-g> h:put =expand('%:p')<CR>
vmap "<C-g>p :put =expand('%:p')<CR>
imap <C-R><C-g> <Esc>"<C-g>p"i

" Completion submodes: LNKT]FDVUO
" sN
" Add extra ctrl-x mode shortcut to be more comfortable and match dvo <-> us layout
inoremap <C-q> <C-x>

" TODO Map these to something useful?
" TODO Map these to something useful?
noremap <Up> :GitGutterPrevHunk<CR>
noremap <Down> :GitGutterNextHunk<CR>
"TODO Maybe add with ALE?
noremap <Right> :cnext<CR>
noremap <Left> :cprev<CR>

" SynStack:
nmap <F2> :call customFuncs#SynStack2()<CR>
" nmap <F2> :call customFuncs#SynStack()<CR>

nnoremap <F3> :UndotreeToggle<cr>
nnoremap <F8> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" General:

""" Movement:
" Window movement
" unmap <C-j>
" unmap <C-k>
" unmap <C-h>
" unmap <C-l>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <c-a> :if !switch#Switch()<bar>call speeddating#increment()<bar>endif<cr>
nnoremap <c-x> :if !switch#Switch({'reverse': 1})<bar>call speeddating#decrement()<bar>endif<cr>

" autocmd FileType julia nmap <buffer> K <Plug>(JuliaDocPrompt)

" Edit/create file under curso
nmap <leader>gf :e <cfile><cr>
" Edit in the preview window file under cursor
nmap gfp :exec 'pedit ' . expand('<cfile>')<CR>

" Autocompleted Quotes Jump:
imap <C-a> <esc>wa

" Group backslashing
cmap ;\ \(\)<Left><Left>

" Map Ctrl-x and Ctrl-z to navigate the quickfix error list (normally :cn and
" TODO
" :cp)
" nnoremap <silent> <C-x> :cn<CR>
" nnoremap <silent> <C-z> :cp<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FASTER JUMPING:
" hit ,f to find the definition of the current class
" this uses ctags. the standard way to get this is Ctrl-]
" nnoremap <silent> ,f <C-]>

" use ,F to jump to tag in a vertical split
" nnoremap <silent> ,F :let word=expand("<cword>")<CR>:vsp<CR>:wincmd w<cr>:exec("tag ". word)<cr>
" Remap for  escape coded keys coming from console <A-j> == j
" for i in range(65,90) + range(97,122)
"     let c = nr2char(i)
"     exec "map \e".c." <M-".c.">"
"     exec "map! \e".c." <M-".c.">"
" endfor
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Command Completions:
" Could just use SudoEdit

" cnoremap w!! w !sudo tee > /dev/null %

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Window:
" Start windows resize mode
let g:winresizer_start_key = '<C-w><C-v>'
" let g:winresizer_gui_start_key = 'C-Z'
" Resize windows with arrow keys
nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-
nnoremap <C-Left> <C-w><
nnoremap <C-Right>  <C-w>>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search:
" Stolen from Steve Losh vimrc: https://bitbucket.org/sjl/dotfiles/src/tip/vim/.vimrc
" Open a Quickfix window for the last search.
nnoremap <silent> <leader>q/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

" Ag for the last search.
" TODO what is this mapping?!
nnoremap <silent> <leader>qa/ :execute "Ag! '" . substitute(substitute(substitute(@/, "\\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "") . "'"<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Plugin Specific:
"" NERDTree:
" set <A-N>=N
" nmap <A-N> :NERDTreeToggle<CR>
map <leader>n :NERDTreeToggle<CR>
" map <leader>v :NERDTreeFind<CR>
" map <leader>v :NERDTreeCWD<CR>

"" Emojify
" Emojify() %s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g


"" YCM Ultisnips Supertab Endwise:
" source $XDG_CONFIG_HOME/vim/functions.d/autocompleteFixes.vim

" incsearch
noremap <silent><expr> z/ incsearch#go(<SID>config_fuzzyall())
noremap <silent><expr> z? incsearch#<go(<SID>config_fuzzyall({'command': '?'}))
noremap <silent><expr> zg? incsearch#go(<SID>config_fuzzyall({'is_stay': 1}))
noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())

" Ditto:
" Use autocmds to check your text automatically and keep the highlighting
" up to date (easier):
" au FileType markdown,text,tex DittoOn  " Turn on Ditto's autocmds
" nmap <leader>di <Plug>ToggleDitto      " Turn Ditto on and off

" If you don't want the autocmds, you can also use an operator to check
" specific parts of your text:
" vmap <leader>d <Plug>Ditto	       " Call Ditto on visual selection
" nmap <leader>d <Plug>Ditto	       " Call Ditto on operator movement

" nmap =d <Plug>DittoNext                " Jump to the next word
" nmap -d <Plug>DittoPrev                " Jump to the previous word
" nmap +d <Plug>DittoGood                " Ignore the word under the cursor
" nmap _d <Plug>DittoBad                 " Stop ignoring the word under the cursor
" nmap ]d <Plug>DittoMore                " Show the next matches
" nmap [d <Plug>DittoLess                " Show the previous matches
"
"" Expand-region:

vmap K <Plug>(expand_region_expand)
vmap J <Plug>(expand_region_shrink)

"" EasyAlign:
" Start interactive EasyAlign in visual mode (e.g. vipga) (can use C-X to get regexp prompt)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"" FZF-Mru
map <leader>p :FZFMru<cr>
map <leader>x :Buffers<cr>

" FZF:
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
" imap <c-x><c-k> <plug>(fzf-complete-word)
" imap <c-x><c-f> <plug>(fzf-complete-path)
" imap <c-x><c-j> <plug>(fzf-complete-file-ag)
" imap <c-x><c-l> <plug>(fzf-complete-line)

"  let g:fzf_nvim_statusline = 0 " disable statusline overwriting
"
"   nnoremap <silent> <leader><space> :Files<CR>
"   nnoremap <silent> <leader>a :Buffers<CR>
"   nnoremap <silent> <leader>A :Windows<CR>
"   nnoremap <silent> <leader>; :BLines<CR>
"   nnoremap <silent> <leader>o :BTags<CR>
"   nnoremap <silent> <leader>O :Tags<CR>
"   nnoremap <silent> <leader>? :History<CR>
"   nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
"   nnoremap <silent> <leader>. :AgIn 
"
"   nnoremap <silent> K :call SearchWordWithAg()<CR>
"   vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>
"   nnoremap <silent> <leader>gl :Commits<CR>
"   nnoremap <silent> <leader>ga :BCommits<CR>
"   nnoremap <silent> <leader>ft :Filetypes<CR>
"
"   imap <C-x><C-f> <plug>(fzf-complete-file-ag)
" imap <C-x><C-l> <plug>(fzf-complete-line)
" function! SearchWordWithAg()
"     execute 'Ag' expand('<cword>')
"   endfunction
"
"   function! SearchVisualSelectionWithAg() range
"     let old_reg = getreg('"')
"     let old_regtype = getregtype('"')
"     let old_clipboard = &clipboard
"     set clipboard&
"     normal! ""gvy
"     let selection = getreg('"')
"     call setreg('"', old_reg, old_regtype)
"     let &clipboard = old_clipboard
"     execute 'Ag' selection
"   endfunction
"
"   function! SearchWithAgInDirectory(...)
"     call fzf#vim#ag(join(a:000[1:], ' '), extend({'dir': a:1}, g:fzf#vim#default_layout))
"   endfunction
" command! -nargs=+ -complete=dir AgIn call SearchWithAgInDirectory(<f-args>)
" " Advanced customization using autoload functions
" inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})



"" Fuzzy Incsearch:
" Requires the fuzzy inc function
map z/ <Plug>(incsearch-fuzzyspell-/)
map z? <Plug>(incsearch-fuzzyspell-?)
map zg/ <Plug>(incsearch-fuzzyspell-stay)

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Type zl to toggle highlighting on/off. " TODO Mapping used
nnoremap zl :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
" CTRL + L to clear highlighting and then clear/redraw
" nnoremap <silent> <C-L> :nohlsearch<CR><C-L> done with zl

" Git Related:
" Git Gutter:
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hr <Plug>GitGutterUndoHunk

" let g:lexical#thesaurus_key = '<leader>t'
" let g:lexical#dictionary_key = '<leader>k'
nmap <Leader>cs <Plug>ThesaurusQueryReplaceCurrentWord
vmap <Leader>cs <Plug>ThesaurusQueryReplaceVisual
nmap <silent> <LocalLeader>cs <Plug>ThesaurusQueryReplaceCurrentWord
vmap <silent> <LocalLeader>cs <Plug>ThesaurusQueryReplaceVisual

" SplitJoin:
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

"GScope:
" TODO
" noremap <silent> <leader>cs :GscopeFind s <C-R><C-W><cr>
" noremap <silent> <leader>cg :GscopeFind g <C-R><C-W><cr>
" noremap <silent> <leader>cc :GscopeFind c <C-R><C-W><cr>
" noremap <silent> <leader>ct :GscopeFind t <C-R><C-W><cr>
" noremap <silent> <leader>ce :GscopeFind e <C-R><C-W><cr>
" noremap <silent> <leader>cf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
" noremap <silent> <leader>ci :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
" noremap <silent> <leader>cd :GscopeFind d <C-R><C-W><cr>
" noremap <silent> <leader>ca :GscopeFind a <C-R><C-W><cr>

" Jedi:
" TODO
" let g:jedi#goto_command = "<leader>d"
" let g:jedi#goto_assignments_command = "<leader>g"
" let g:jedi#goto_definitions_command = ""
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<leader>n"
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#rename_command = "<leader>r"

let g:jedi#goto_assignments_command = "gD"
let g:jedi#goto_command = "gd"
let g:jedi#usages_command = "gu"
let g:jedi#rename_command = "<c-c>r"

" let g:jedi#goto_assignment = "gd"
" nnoremap gd :YcmCompleter GoTo<CR>
" nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" let g:jedi#usages_command = "gu"
" let g:jedi#rename_command = "<c-c>r"
" nnoremap <c-c>r :YcmCompleter RefactorRename<CR>

" Wordfinder:
" TODO <C-F> makes a pause for foward page >:(
" nmap     <C-F>f :CtrlSF ''<Left>
" nmap     <C-F>n <Plug>CtrlSFCwordPath
" nnoremap <C-F>t :CtrlSFToggle<CR>
" nmap     <C-F>f <Plug>CtrlSFPrompt
" vmap     <C-F>f <Plug>CtrlSFVwordPath
" vmap     <C-F>F <Plug>CtrlSFVwordExec
" nmap     <C-F>n <Plug>CtrlSFCwordPath
" nmap     <C-F>p <Plug>CtrlSFPwordPath
" nnoremap <C-F>o :CtrlSFOpen<CR>
" nnoremap <C-F>t :CtrlSFToggle<CR>
" inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

"Tabularize:
" Hit Alt-Shift-A then type a character you want to align by
" set <A-A>=A
nmap <A-A> :Tabularize /
vmap <A-A> :Tabularize /

" Latex Unicoder:
" nnoremap <C-l> :call unicoder#start(0)<CR>
nnoremap <Leader>l :call unicoder#start(0)<CR>
inoremap <C-l> <Esc>:call unicoder#start(1)<CR>
vnoremap <C-l> :<C-u>call unicoder#selection()<CR>

" Signature Marks:
  let g:SignatureMap = {
    \ 'Leader'             :  "m",
    \ 'PlaceNextMark'      :  "m,",
    \ 'ToggleMarkAtLine'   :  "m.",
    \ 'PurgeMarksAtLine'   :  "m-",
    \ 'DeleteMark'         :  "dm",
    \ 'PurgeMarks'         :  "m<Space>",
    \ 'PurgeMarkers'       :  "m<BS>",
    \ 'GotoNextLineAlpha'  :  "']",
    \ 'GotoPrevLineAlpha'  :  "'[",
    \ 'GotoNextSpotAlpha'  :  "`]",
    \ 'GotoPrevSpotAlpha'  :  "`[",
    \ 'GotoNextLineByPos'  :  "]'",
    \ 'GotoPrevLineByPos'  :  "['",
    \ 'GotoNextSpotByPos'  :  "]`",
    \ 'GotoPrevSpotByPos'  :  "[`",
    \ 'GotoNextMarker'     :  "]-",
    \ 'GotoPrevMarker'     :  "[-",
    \ 'GotoNextMarkerAny'  :  "]=",
    \ 'GotoPrevMarkerAny'  :  "[=",
    \ 'ListBufferMarks'    :  "m/",
    \ 'ListBufferMarkers'  :  "m?"
    \ }

" SplitJoin
" let g:splitjoin_split_mapping = 'gS'
" M
" let g:splitjoin_join_mapping = 'gJ'

" nmap <Leader>j :SplitjoinJoin<cr>
" nmap <Leader>s :SplitjoinSplit<cr>
" nmap sj :SplitjoinSplit<cr>
" nmap sk :SplitjoinJoin<cr>

" Autopairs:
let g:AutoPairsShortcutFastWrap = '<M-e>'
let g:AutoPairsShorcutToggle    = '<M-p>'
" let g:AutoPairsShortcutJump     = '<M-n>'
" let g:AutoPairsMapBS            = 1
" let g:AutoPairsMapCh            = 1
" let g:AutoPairsMapCR            = 1
" let g:AutoPairsMapSpace         = 1

" Emojify:
" imap <C-X><C-E> call(emoji#complete<cr>)
" <Plug>() 
" %s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g


" TComment:
" Command-/ to toggle comments
" set <A-/>=/
map <A-/> :TComment<CR>
imap <A-/> <Esc>:TComment<CR>i
nmap <silent> gcp <c-_>p

" MultiCursor:
" Turn off default key mappings
let g:multi_cursor_use_default_mapping=0
" Default mapping
" Switch to multicursor mode with ,mc
let g:multi_cursor_start_key=',mc'
" let g:multi_cursor_start_word_key    = '<C-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
" set <A-n>=n
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'

" Ctrl-n, Ctrl-p, Ctrl-x, and <Esc> are mapped in the special multicursor
" mode once you've added at least one virtual cursor to the buffer
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Meta Keys:
"
" ALE: h/l to go through syntax problems
" set <A-h>=h
" set <A-l>=l
nmap <silent> <è> <Plug>(ale_previous_wrap)
nmap <silent> <A-h> <Plug>(ale_previous_wrap)
nmap <silent> <ì> <Plug>(ale_next_wrap)
nmap <silent> <A-l> <Plug>(ale_next_wrap)

" Move Lines:
" From konsole A-j/A-k
" set <A-k>=k
" set <A-j>=j
nnoremap <ê> :m .+1<CR>==
vnoremap <ê> :m '>+1<CR>gv=gv
inoremap <ê> <Esc>:m .+1<CR>==gi
nnoremap <ë> :m .-2<CR>==
vnoremap <ë> :m '<-2<CR>gv=gv
inoremap <ë> <Esc>:m .-2<CR>==gi

nnoremap <A-k> :m .-2<CR>==
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-k> :m '<-2<CR>gv=gv
nnoremap <A-j> :m .+1<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UndoTree CustomMap:
function g:Undotree_CustomMap()
    " nmap <buffer> J <plug>UndotreeNextState
    " nmap <buffer> K <plug>UndotreePreviousState
endfunc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Unmappable:

nnoremap <silent> <s><s> :
