" |plugfuncs.vim| should be called first
" |plugsettings.vim| should remove bad default maps/set some options, but the keymap lives here.

" I may have overridden some of these
" Should know these default built in commands: {{{1
" Normal: {{{2
" &, g& - repeat substitution on line, or all lines
" &: - repeat last command
" gv - reselect visual selection
" <operator>gn/gN

" Insert mode: {{{2
" ^<C-D>, 0<C-D>, ^<C-D>, <C-F> - remove 1/remove all/restore/auto indent for line
" <C-T> - ident line
" <C-E>, <C-Y - insert character above/below line
" <C-H>, <C-W>, <C-U> - delete character,word/until start of line
" <C-W>, <C-U> - delete word/until start of line
" <C-R> + <C-P><C-O> insert register literally /fix indent
" <C-_> change language
" <C-]> trigger abbrev
" Completion submodes: <C-X> + <C-   LNKT]FDVUO   > {{{3
" insert mode}}}2
" }}}1

" Start of Mappings: {{{1

" Cannot Live Without:  {{{2
"Controversial! {{{3 
" Make yank more like delete {{{4
nnoremap Y y$

" Easier to reach (I use H, L more often) {{{4
" nnoremap H ^
" nnoremap L $

" Add extra ctrl-x mode shortcut to be more comfortable and match dvo <-> us layout {{{4
inoremap <C-q> <C-x>

" Swaps: {{{4
" To first non-space character, 0 column {{{5
" nnoremap 0 ^
" nnoremap ^ 0

" Swap to-character and to-line keys {{{5
nnoremap ' `
nnoremap ` '

" Chords {{{4
" Buffer Switching: note also [b, ]b  - uncomfortable on dvorak
nmap ,b :bp<cr>
nmap ;b :bn<cr>
"}}}4
"controversial}}}3

" General {{{3

" Leader based {{{4
" Save and Quit:
" nnoremap <space>w :w<cr>
" nnoremap <space>q :q<cr>
" leader based }}}4
"Close and open splits easily{{{4
nnoremap <silent> Q <C-W>c
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s
"}}}4
" Window movement, use in conjunction with tmux move{{{4
" Note <C-l> defaults to redraw (use :redraw)
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
"}}}
"}}}2

" Always Used: But does not include plugin based {{{2

" Passives: {{{4

"visual align {{{5
vnoremap > >gv
vnoremap < <gv
vnoremap < <gv

" ;\ Group backslashing for regexes {{{5
cmap ;\ \(\)<Left><Left>

" Use Eunuch plugin instead for :SudoWrite{{{5
" cmap w!! w !sudo tee > /dev/null %

"passives }}}4

" Amazing {{{4
"Clear current search highlight by double tapping // {{{5
nmap <silent> // :nohlsearch<CR>

" Replace/delete repeatable: {{{5
" Useful in conjunction with the . command
nnoremap c* /\<<C-r>=expand('<cword>')<CR>\>\C<CR>``cgn
nnoremap c# ?\<<C-r>=expand('<cword>')<CR>\>\C<CR>``cgN
nnoremap d* /\<<C-r>=expand('<cword>')<CR>\>\C<CR>``dgn
nnoremap d# ?\<<C-r>=expand('<cword>')<CR>\>\C<CR>``dgN


" filepath as if a register, use \"%p for just the filename"{{{5
" nmap "%p :put =expand('%:p:t')<CR>
" nmap "<C-g>p :put =expand('%:p')<CR>
" nmap "<C-g>P :put =expand('%:p')<CR>
" vmap "<C-g>p :put =expand('%:p')<CR>
" imap <C-R><C-g> <Esc>"<C-g>p"i
" nmap "%P :put =expand('%:p:t')<CR>
" omap <C-g> h:put =expand('%:p')<CR>

" Edit/create file under cursor {{{5
nmap <leader>gf :e <cfile><cr>
xmap <leader>gf <Esc>:e <C-R>*<cr>
" Edit in the preview window file under cursor {{{5
nmap gfp :cd %:p:h <Bar> exec 'pedit ' . expand('<cfile>') <Bar> cd - <CR>
xmap gfp <Esc>:cd %:p:h <Bar> :exec 'pedit ' .  expand(@*) <Bar> :cd - <CR>

" Open a Quickfix window for the last search.                   {{{5
" TODO incorporate FZF?
" Stolen from Steve Losh vimrc: https://bitbucket.org/sjl/dotfiles/src/tip/vim/.vimrc
nnoremap <silent> <leader>q/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>
"}}}
"Autocorrect last error i_C-s: {{{5
"From https://castel.dev/post/lecture-notes-1/
inoremap <C-s> <c-g>u<Esc>[s1z=`]a<c-g>u
"}}}
"}}}4
"amazing }}}4"

" }}}2 Always Used


" Window:{{{3
" Start windows resize mode
let g:winresizer_start_key = '<C-w><C-v>'
" let g:winresizer_gui_start_key = 'C-Z'
" Resize windows with arrow keys - Be wary in some terminals
nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-
nnoremap <C-Left> <C-w><
nnoremap <C-Right>  <C-w>>
"}}}


" FZF:                                              {{{2
" TODO check the bindings are actually desired
" Mapping selecting mappings                        {{{4
nmap <leader><tab><tab> :WhichKey ' '<CR>
nmap <localleader><tab><tab> :WhichKey '\\'<CR>
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
"}}}4
" Insert mode completion            {{{3
"TODO do we want the #vim#complete#({extra options}) ??


" TODO dictionary is not set, but spell can be, but fzf doesn't pick it up
" imap <c-x><c-k> <plug>(fzf-complete-word) 
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('fd')
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('rg --files')
imap <c-x><c-j> <plug>(fzf-complete-path)
imap <c-x><c-f> <plug>(fzf-complete-file)
imap <c-x><c-l> <plug>(fzf-complete-line)
" inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'right': '15%'})

"}}}3

"Leader Binds {{{2
"  let g:fzf_nvim_statusline = 0 " disable statusline overwriting
"" FZF-Mru                      {{{4
map <leader>p :FZFMru<CR>
"}}}

  nnoremap <silent> <leader>F :Files<CR>
" set to x as on dvorak->qwerty that's a 'b' otherwise it messes with Bufkill
  nnoremap <silent> <leader>x :Buffers<CR>
  nnoremap <silent> <leader>gl :Commits<CR>
  nnoremap <silent> <leader>ga :BCommits<CR>
  nnoremap <silent> <leader>O :Tags<CR>

  "TODO maybe not a useful
  nnoremap <silent> <leader>; :BLines<CR>
  nnoremap <silent> <leader>o :BTags<CR>
  nnoremap <silent> <leader>? :History<CR>
  nnoremap <silent> <leader>ft :Filetypes<CR>
"}}}3


" FZF Rg  {{{3
"TODO
"Search with Rg                                                     {{{4
"   nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
"}}}
" Search FZF SearchWithAgInDirectory  <leader>. bind and Command  {{{4
"   function! SearchWithAgInDirectory(...) 
"     call fzf#vim#ag(join(a:000[1:], ' '), extend({'dir': a:1}, g:fzf#vim#default_layout))
"   endfunction
" command! -nargs=+ -complete=dir AgIn call SearchWithAgInDirectory(<f-args>)
"   nnoremap <silent> <leader>. :AgIn 
" }}}4
" Search word/man with Ag bind to K   {{{4
" function! SearchWordWithAg()
"   {{{5
"     execute 'Ag' expand('<cword>')
"   endfunction
"   }}}5
"   function! SearchVisualSelectionWithAg() range
"   {{{5
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
"   Mappings {{{5
"   vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>
"   nnoremap <silent> K :call SearchWordWithAg()<CR>
"}}}4
" Ag for the last search. {{{4
" TODO what is this mapping?!
nnoremap <silent> <leader>qa/ :execute "Rg! '" . substitute(substitute(substitute(@/, "\\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "") . "'"<CR>
" }}}4
"}}}3
"}}}2


" Language Specific {{{2
" Plugin based binds {{{3
" python {{{4
" TODO: replace specific with ALE/YCM binds?
" Jedi:
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
" }}}4

" cpp {{{4
" TODO rtags}}}4
" plugin based }}}3
" language specific }}}2


" General Plugins Binds {{{2

" EasyAlign / Lion:                   {{{4
" Start interactive EasyAlign in visual mode (e.g. vipga) (can use C-X to get regexp prompt)
" xmap gl <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap gl <Plug>(EasyAlign)
let g:lion_map_right = 'gl'
let g:lion_map_left = 'gL'
"}}}4


" Fuzzy Incsearch: {{{4

" incsearch                                         {{{4
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" TODO why doubled?
" Requires the fuzzy inc function
noremap <silent><expr> z/ incsearch#go(<SID>config_fuzzyall())
noremap <silent><expr> z? incsearch#<go(<SID>config_fuzzyall({'command': '?'}))
noremap <silent><expr> zg? incsearch#go(<SID>config_fuzzyall({'is_stay': 1}))
noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())
map z/ <Plug>(incsearch-fuzzyspell-/)
map z? <Plug>(incsearch-fuzzyspell-?)
map zg/ <Plug>(incsearch-fuzzyspell-stay)
"}}}

" Type zl to toggle highlighting on/off. " TODO Mapping used
nnoremap zl :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
" Clear highlighting and then clear/redraw - TODO this would clash with right-move
" nnoremap <silent> zL :nohlsearch<CR><C-L>

" EasyMotion {{{4
" TODO add over win/buffer motions
nmap f <Plug>(easymotion-fl)
xmap f <Plug>(easymotion-fl)
nmap F <Plug>(easymotion-Fl)
xmap F <Plug>(easymotion-Fl)
nmap t <Plug>(easymotion-tl)
xmap t <Plug>(easymotion-tl)
nmap T <Plug>(easymotion-Tl)
xmap T <Plug>(easymotion-Tl)
nmap ; <Plug>(easymotion-next)
xmap ; <Plug>(easymotion-next)
nmap , <Plug>(easymotion-prev)
xmap , <Plug>(easymotion-prev)
" }}}4

" Expand-region:                            {{{4
vmap K <Plug>(expand_region_expand)
vmap J <Plug>(expand_region_shrink)
"}}}

" Git Related {{{4
" Git Gutter:
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hr <Plug>GitGutterUndoHunk
" }}}4

" TODO SplitJoin:{{{4
nmap sj :SplitjoinJoin<cr>
nmap sk :SplitjoinSplit<cr>
" nmap <Leader>j :SplitjoinJoin<cr>
" nmap <Leader>s :SplitjoinSplit<cr>
" let g:splitjoin_split_mapping = 'gS'
" let g:splitjoin_join_mapping = 'gJ'

"}}}4

" Signature Marks:{{{4
"TODO Clashes with  dispatch m?
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
    \ 'GotoNextSpotAlpha' : "`]",
    \ 'GotoPrevSpotAlpha' : "`[",
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
"}}}4

" TComment:{{{4
" Command-/ to toggle comments
" set <A-/>=/
nmap <silent> gcp <c-_>p
"tcomment}}}4

" TODO: YouCompleteMe YCM: {{{4
" let g:ycm_key_list_stop_completion = ['<C-y>']
  " let g:ycm_key_invoke_completion = '<C-Space>'
  " let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
  " let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
  let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
  let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
  " let g:ycm_key_detailed_diagnostics = '<leader>d'
" The default value for g:UltiSnipsJumpBackwardTrigger interferes with the
" built-in complete function: |i_CTRL-X_CTRL-K|. A workaround is to add the
" following to your vimrc file or switching to a plugin like Supertab or
" YouCompleteMe. >
"    inoremap <c-x><c-k> <c-x><c-k>
   " g:UltiSnipsExpandTrigger               <tab>
   " g:UltiSnipsListSnippets                <c-tab>
   " g:UltiSnipsJumpForwardTrigger          <c-j>
   " g:UltiSnipsJumpBackwardTrigger         <c-k>
" }}}

" <C-A> and <C-X>  {{{4
" Clever token switch/increment, also see and modify ../conf.d/switch.vim
" Sets the timestamp under the cursor to UTC/Local now
"TODO better mnemonic for now
nmap d<C-A> <Plug>SpeedDatingNowUTC
nmap d<C-X> <Plug>SpeedDatingNowLocal

" Switch and Speeddating fallback mappings
nnoremap <silent> <Plug>SpeedDatingFallbackUp <c-a>
nnoremap <silent> <Plug>SpeedDatingFallbackDown <c-x>
nnoremap <silent> <c-a> :if !switch#Switch() <bar> execute "normal \<Plug>SpeedDatingUp" <bar> endif <cr>
nnoremap <silent> <c-x> :if !switch#Switch({'reverse': 1}) <bar> execute "normal \<Plug>SpeedDatingDown" <bar> endif <cr>

"}}}


" MultiCursor:{{{4
" Turn off default key mappings
" TODO
" let g:multi_cursor_use_default_mapping=0
" " Default mapping
" " Switch to multicursor mode with ,mc
" let g:multi_cursor_start_key=',mc'
" " let g:multi_cursor_start_word_key    = '<C-n>'
" let g:multi_cursor_start_key           = 'g<C-n>'
" " set <A-n>=n
" let g:multi_cursor_select_all_word_key = '<A-n>'
" let g:multi_cursor_select_all_key      = 'g<A-n>'
"
" " Ctrl-n, Ctrl-p, Ctrl-x, and <Esc> are mapped in the special multicursor
" " mode once you've added at least one virtual cursor to the buffer
" let g:multi_cursor_next_key            = '<C-n>'
" let g:multi_cursor_prev_key            = '<C-p>'
" let g:multi_cursor_skip_key            = '<C-x>'
" let g:multi_cursor_quit_key            = '<Esc>'
"multi cursor}}}4

" General plugins binds }}}2

" Function Keys and Special Keys {{{2
" Arrow keys {{{4

" TODO re-Map these to something useful?
" TODO Also protect when the plugin is not found
map <down> <plug>(signify-next-hunk)
nmap <up> <plug>(signify-prev-hunk)
" noremap <up> :GitGutterPrevHunk<CR>
" noremap <down> :GitGutterNextHunk<CR>

"TODO Maybe add with ALE/linter? or with augroups
noremap <Right> :cnext<CR>
noremap <Left> :cprev<CR>

" arrow keys }}}4

" Function Keys {{{4
" SynStack: TODO rempap to something more useful, maybe put in vim debug augroup
nnoremap <F1> K
vnoremap <F1> K
nmap <F2> :call customFuncs#SynStack2()<CR>
" nmap <F2> :call customFuncs#SynStack()<CR>

nnoremap <F3> :UndotreeToggle<cr>

" TODO augroup this for markdown etc augroup, but keep F8 as the Tags/TOC Toggler
nnoremap <F8> :TagbarToggle<CR>
" }}}4
" }}}2

" Uses Meta: Won't work in terminal vim (Meta sent as  <Esc>) {{{1
" Move Lines:       {{{4
" From konsole A-j/A-k
" set <A-k>=k
" set <A-j>=j
" For console vim
nnoremap ê :m .+1<CR>==
vnoremap ê :m '>+1<CR>gv=gv
inoremap ê <Esc>:m .+1<CR>==gi
nnoremap ë :m .-2<CR>==
vnoremap ë :m '<-2<CR>gv=gv
inoremap ë <Esc>:m .-2<CR>==gi

nnoremap <A-k> :m .-2<CR>==
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-k> :m '<-2<CR>gv=gv
nnoremap <A-j> :m .+1<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
"}}}4


" Plugin based {{{2
" TODO check / lazy load

"Tabularize:{{{4
" Hit Alt-Shift-A then type a character you want to align by set <A-A>=A
nmap <A-A> :Tabularize /
vmap <A-A> :Tabularize /

"}}}4

" Tabs selection {{{4
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <A-1> <Plug>AirlineSelectTab1
nmap <A-2> <Plug>AirlineSelectTab2
nmap <A-3> <Plug>AirlineSelectTab3
  " nmap <leader>- <Plug>AirlineSelectPrevTab
  " nmap <leader>+ <Plug>AirlineSelectNextTab
" TODO check for lazyload alternative loading
" map <silent><A-1> :tabn 1<cr>
" map <silent><A-2> :tabn 2<cr>
" map <silent><A-3> :tabn 3<cr>
" }}}4

" ALE: h/l to go through syntax problems        {{{4
" set <A-h>=h
" set <A-l>=l
nmap <silent> è <Plug>(ale_previous_wrap)
nmap <silent> <A-h> <Plug>(ale_previous_wrap)
nmap <silent> ì <Plug>(ale_next_wrap)
nmap <silent> <A-l> <Plug>(ale_next_wrap)
"ale}}}4
"
" Autocompleted Quotes Jump: " TODO fix for terminal vim        {{{4
" TODO: Should set an alternative when not in gui
let g:AutoPairsShortcutFastWrap = '<M-e>'
" let g:AutoPairsShortcutFastWrap='<C-e>'
let g:AutoPairsShorcutToggle    = '<M-p>'
" let g:AutoPairsShorcutToggle=''
" let g:AutoPairsShortcutJump=''
" let g:AutoPairsShortcutJump     = '<M-n>'
" let g:AutoPairsMapBS            = 1
" let g:AutoPairsMapCh            = 1
" let g:AutoPairsMapCR            = 1
" let g:AutoPairsMapSpace         = 1
" imap <C-e> <esc>wa
"}}}4
" }}}4
" plugin based }}}2
"}}}1

"TODO's {{{1
" Needs a fixing {{{2

" NERDTree:                     {{{4
" set <A-N>=N
" nmap <A-N> :NERDTreeToggle<CR>
map <leader>n :NERDTreeToggle<CR>
" map <leader>v :NERDTreeFind<CR>
" map <leader>v :NERDTreeCWD<CR>
"}}}

" Thesaurus / lexical {{{4
" TODO make au for text / content based content cs would be a nice bind for code
" let g:lexical#thesaurus_key = '<leader>t'
" let g:lexical#dictionary_key = '<leader>k'
nmap <Leader>cs <Plug>ThesaurusQueryReplaceCurrentWord
vmap <Leader>cs <Plug>ThesaurusQueryReplaceVisual
nmap <silent> <LocalLeader>cs <Plug>ThesaurusQueryReplaceCurrentWord
vmap <silent> <LocalLeader>cs <Plug>ThesaurusQueryReplaceVisual
"}}}4

" Map Ctrl-x and Ctrl-z to navigate the quickfix error list (normally :cn and :cp) TODO {{{4
" <C-x> is for a 'reduce/switch' <C-z> the terminal uses
" nnoremap <silent> <C-x> :cn<CR>
" nnoremap <silent> <C-z> :cp<CR>
" }}}4

" Latex Unicoder: {{{4
" TODO <leader>l clashes with swoop
" TODO clashes/duplicated by the juliaL2U plugin?
" nnoremap <Leader>l :call unicoder#start(0)<CR>
nnoremap <localleader>l :call unicoder#start(0)<CR>
inoremap <C-l> <Esc>:call unicoder#start(1)<CR>
vnoremap <C-l> :<C-u>call unicoder#selection()<CR>
"}}}4

"Diffmode au {{{4
" TODO: What is this for/where is it from? should go to aucmds 
" Attach an additional autocommand to catch when vim is started in diff mode
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
autocmd VimrcCustomDP VimEnter * if &diff|nnoremap <buffer> dp dp|endif
"}}}4

"TODO whatis thisis!?{{{4
nnoremap <expr> <silent> dd (getline('.') =~ '^$' ? '"_' : '').'dd'
"}}}4

" TextObjects:{{{4
" omap ic <plug>(signify-motion-inner-pending)
" xmap ic <plug>(signify-motion-inner-visual)
" omap ac <plug>(signify-motion-outer-pending)
" xmap ac <plug>(signify-motion-outer-visual)
"textobjects}}}4

" }}}2

" Disabled {{{2

" Ditto: TODO                                    {{{4
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
"}}}4

" Wordfinder TODO: {{{4
" TODO <C-F> makes a pause for foward page >:( <C-b> already does too due to tmux leader
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
" }}}4

" Jula docs TODO {{{4
" autocmd FileType julia nmap <buffer> K <Plug>(JuliaDocPrompt)
" }}}4

" TODO UndoTree CustomMap:{{{4
" function g:Undotree_CustomMap()
    " nmap <buffer> J <plug>UndotreeNextState
    " nmap <buffer> K <plug>UndotreePreviousState
" endfunc
"undotreecustommap}}}4

" Emojify: TODO {{{4
" imap <C-X><C-E> call(gh_emoji#complete<cr>)

" Emmet-vim TODO {{{4
" let g:user_emmet_leader_key='<C-Z>'
"}}}


"GScope: {{{4
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
" }}}4

"" YCM Ultisnips Supertab Endwise:
" source $XDG_CONFIG_HOME/vim/functions.d/autocompleteFixes.vim


" disabled}}}2
"todo's }}}1

" Disabled {{{1
" Faster Jumping:   {{{4
"
" hit ,f to find the definition of the current class
" this uses ctags. the standard way to get this is Ctrl-]
" nnoremap <silent> ,f <C-]>

" use ,F to jump to tag in a vertical split
" nnoremap <silent> ,F :let word=expand("<cword>")<CR>:vsp<CR>:wincmd w<cr>:exec("tag ". word)<cr>
" }}}4

" Remap meta/escaped keys (<- I don't trust this)                   {{{4
" Remap for  escape coded keys coming from console <A-j> == j
" for i in range(65,90) + range(97,122)
"     let c = nr2char(i)
"     exec "map \e".c." <M-".c.">"
"     exec "map! \e".c." <M-".c.">"
" endfor
"}}}
"

" }}}

" Unmappable: {{{1
" nnoremap <silent> <s><s> :
" unmapable }}}1


" vim:set et fdm=marker sw=2 ts=4 tw=100:
