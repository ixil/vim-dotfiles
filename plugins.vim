""" VIMPLUG:
" |plugfuncs.vim| should be called after
" |plugsettings.vim| should for settings
" |keys.vim| for the keybindings.

" BuildYCM(info)
function! BuildYCM(info)
   " info is a dictionary with 3 fields
   " - name:   name of the plugin
   " - status: 'installed', 'updated', or 'unchanged'
   " - force:  set on PlugInstall! or PlugUpdate!
   if a:info.status == 'installed' || a:info.force
     !./install.py --clang-completer --system-libclang --system-boost --js-completer --java-completer
   endif
endfunction

" Assumes system installation of ycm
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

call plug#begin('~/.local/share/vim/plugged')

" Local Plugins:
     " Plug '~/dev/vim/Ultisnips', { 'as': 'custom/Ultisnips' } " done with conf.d

 """ General Editing:
     " Plug 'Konfekt/FastFold' " Faster/Better folding
     Plug 'mbbill/undotree' " F3 to show

     " TODO
     Plug 'pelodelfuego/vim-swoop'

     " for turning multiline code <-> into single line: gS, gJ
     Plug 'AndrewRadev/splitjoin.vim'
     Plug 'markonm/traces.vim'

     " Autocomplete search terms with <C-Tab>
     Plug 'vim-scripts/sherlock.vim'

     " Yank ring - use C-n/p to go back through copies "TODO
     " Plug 'skwp/YankRing.vim'

     " For pairs of files
     Plug 'pchynoweth/a.vim', { 'as': 'alternate.vim' }

     " Encodings, Quick Options,
     " {cptb}{netx,prev,first,last}
     " movements: args,quickfix,tags,file,scmdiff {a,q,t,f,n}
     " exchange lines {e, <Space>, }
     " option toggle, {[]y}o {bcdhilnrsuvwx}
     " Pasting: {=<>}{pP} 
     " Encoding/decode ][ x xml, u url, y - C string encode
     Plug 'tpope/vim-unimpaired'

     " Repeat
     Plug 'tpope/vim-repeat'
     Plug 'inkarkat/vim-ingo-library'
     Plug 'vim-scripts/visualrepeat'

     " Commenting and text manip
     " Plug 'tpope/vim-surround'              " Surround visual/objects with whatever
     Plug 'wilywampa/vim-surround'              " Surround visual/objects with whatever
     Plug 'tomtom/tcomment_vim'             " Commenting
     " Plug 'tpope/vim-commentary'          " Un/Comment stuff: gcc, gc<motion>,
     Plug 'tommcdo/vim-exchange'            " cx<movement> to exchange
     Plug 'seb-mueller/kwbdi.vim'           " Better buffer delete with splits behaviour <leader>bd

     " Multiple Cursors
     " Use <C-n,p,x> <A-n>
     Plug 'terryma/vim-multiple-cursors'

 "Sessions:
     " Session management
     " Plug 'thaerkh/vim-workspace'
     " Plug 'tpope/vim-obsession'

 "Search:
     Plug 'mileszs/ack.vim' " :Ack, LAck, LAckAdd, AckAdd
     " Plug 'albfan/ag.vim'

     " <C-f>{f,n,t} - follow with h,j,k,l, C-J, C-K, p,o
     Plug 'dyng/ctrlsf.vim'                     " TODO TODO
     Plug 'haya14busa/incsearch.vim'            " TODO
         Plug 'haya14busa/incsearch-easymotion.vim' " TODO z/, z?, zg/
         Plug 'haya14busa/incsearch-fuzzy.vim'      " TODO

 """ Movement:
     " Plug 'vim-seek/vim-sneak'
     " <Leader><Leader><motion>
     Plug 'easymotion/vim-easymotion'
     Plug 'benjifisher/matchit.zip'

 """ Files:
     "" Unix:
         Plug 'tpope/vim-eunuch' " unix buffer/file commands
         " TODO " Plug 'zenbro/mirror.vim'

     "" Browser Stuff NERDTree:
         Plug 'tpope/vim-vinegar' " only for netrw
         " Plug 'francoiscabrol/ranger.vim'
         Plug 'scrooloose/nerdtree'
             Plug 'Xuyuanp/nerdtree-git-plugin'
             " Plug 'dhruvasagar/vim-vinegar' " only for nerdtree
             """ Pretty things
             "Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
             Plug 'ryanoasis/vim-devicons'
             Plug 'tyok/nerdtree-ack'
             "Plug 'taiansu/nerdtree-ag'

     "" Diffing:
     Plug 'zhaocai/DirDiff.vim'              "Directory diff and file diff-er
     Plug 'vim-scripts/diffchanges.vim'      "Toggle show changes, and also create a patch
     " Plug 'chrisbra/vim-diff-enhanced' " No longer required with vim 8.1
     Plug 'chrisbra/Recover.vim'            " Diff recovery files


 " --------------------------------------------------------------------------------
 " Tests
 Plug 'janko-m/vim-test'

 " Debugging:
     " Plug 'vim-vdebug/vdebug'
     " Plug 'gilligan/vim-lldb'

 " Functionality:
     Plug 'vimwiki/vimwiki'
     Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] } " TODO
     Plug 'jceb/vim-orgmode'
     " TODO
     Plug 'mattn/calendar-vim'
     " TODO
     Plug 'inkarkat/vim-SyntaxRange'
     " Plug 'vim-scripts/OnSyntaxChange.vim'
     " TODO
     Plug 'tpope/vim-projectionist'
     " TODO
     Plug 'tpope/vim-dispatch'
     Plug 'tpope/vim-sleuth'
     Plug 'jamessan/vim-gnupg'

 """ Text Objects:
 " https://github.com/kana/vim-textobj-user/wiki
 Plug 'kana/vim-textobj-user' |
     Plug 'kana/vim-textobj-indent' "i,I
     Plug 'kana/vim-textobj-entire' "e
     Plug 'kana/vim-textobj-fold' "z
     Plug 'kana/vim-textobj-lastpat' "/
     Plug 'idbrii/textobj-word-column.vim' "c,C
     Plug 'Julian/vim-textobj-brace' "j

     Plug 'libclang-vim/vim-textobj-clang' ";, ;{m,c,f,e,s,p,n,u,a}
     " TODO
     Plug 'rbonvall/vim-textobj-latex' "\, $ math 
    " q,Q single/double quoted
    " e - envirenment (begin - end)
     Plug 'jasonlong/vim-textobj-css' "c
     Plug 'gaving/vim-textobj-argument'

     Plug 'thalesmello/vim-textobj-methodcall'
     " TODO
     Plug 'kana/vim-textobj-function' "f,F
     " TODO
     Plug 'bps/vim-textobj-python' "f,c

     Plug 'terryma/vim-expand-region' "J/K
     Plug 'https://gist.github.com/ixil/5356298948576735b3713b01d668a399',
                 \ { 'as': 'local/next_motion_mapping.vim', 'do': 'mkdir -p plugin; cp -f *.vim plugin/' }

 """ Git Stuff:
     Plug 'tpope/vim-fugitive'
     "Plug 'tpope/vim-git' "For really old vims
     "
     Plug 'mhinz/vim-signify' " all other VCS
     " Plug 'airblade/vim-gitgutter' " https://github.com/airblade/vim-gitgutter#hunks

     Plug 'gregsexton/gitv', {'on': ['Gitv']}
     Plug 'christoomey/vim-conflicted'
     Plug 'junegunn/vim-github-dashboard'
     Plug 'junegunn/gv.vim'  " gv to browse commit log

 """ GUI Elements:
     " GUI element
     Plug 'mbadran/headlights'

 """ Status Line:
     Plug 'vim-airline/vim-airline'
     Plug 'vim-airline/vim-airline-themes'
     " Plug 'mg979/vim-xtabline'

 " Unicode And Emojis:
     " Unicode character meta-data etc digraphs: C-k
     Plug 'tpope/vim-characterize'
     Plug 'joom/latex-unicoder.vim' "<c-l>
     " TODO
     " F4, Digraph, <C-X><C-G> <C-X><C-Z> <C-X><C-U> 
     Plug 'chrisbra/unicode.vim'

     " TODO
     Plug 'junegunn/vim-emoji'
     Plug 'kyuhi/vim-emoji-complete'


 """ Syntax And Linting And Tags:
     " TODO
     Plug 'w0rp/ale'
     Plug 'ludovicchabant/vim-gutentags'
     Plug 'skywind3000/gutentags_plus'
     Plug 'majutsushi/tagbar'

 """ Completion And Snippets:
     " Plug 'ervandew/supertab'                                      " TODO
     Plug 'sirver/ultisnips', { 'on': [] } " Note: YCM + ultisnips require settings to work together
     Plug 'honza/vim-snippets'
     " TODO
     "Plug 'sickill/vim-pasta'
     " TODO
     " Remove YouCompleteMe go to ucomplete/language server based things
     " Plug 'prabirshrestha/vim-lsp'
     " Plug 'prabirshrestha/asyncomplete.vim'
         " Plug 'prabirshrestha/asyncomplete-lsp.vim

     " Plug 'lifepillar/vim-mucomplete' 
     Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM'), 'on': [] } " TODO
     Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}       " TODO
     " Plug 'Cocophotos/vim-ycm-latex-semantic-completer'
     " Plug 'jeayae/color_coded', { 'do': 'rm -f CMakeCache.txt && cmake . && make && make install',\
     "    'for': ['cpp', 'objc', 'objcpp'], 'build_commands' : ['cmake', 'make']}

 """ Scripts And Functions:
     " Universal Text Linking - opens URIs, ideas, wiki bookmarks, etc etc etc
     " TODO
     Plug 'vim-scripts/utl.vim'

     " Most recently used files - using fzfmru
     " Plug 'vim-scripts/mru.vim'

     " For english/endings find/replace
     Plug 'tpope/vim-abolish'
     " Plug 'jelkins/vim-correction'
     " Increment Dates with CTRL-A/X
     Plug 'tpope/vim-speeddating'


     Plug 'bronson/vim-trailing-whitespace' " Remove trailing whitespace

 """ Pairwise Autocompleteion:
     Plug 'jiangmiao/auto-pairs'
     " Plug 'raimondi/delimitmate' "Delimiters autocomplete. Many similar
     Plug 'tpope/vim-endwise', { 'on': [], 'for': [], 'as': 'endwise' } " End/do/endif etc autocompletition, load manually at end

 " Alignment And Tables:
     Plug 'salsifis/vim-transpose'  " Column based text manipulation, CSV transposing
     " Plug 'junegunn/vim-easy-align' " For aligning stuff properly!
     Plug 'tommcdo/vim-lion' "TODO
     Plug 'dhruvasagar/vim-table-mode'
     Plug 'godlygeek/tabular'

 " Binaries Interfaces And Helpers:
     Plug 'junegunn/vim-peekaboo'  " Register display tray
     " Plug '/usr/bin/fzf'
     Plug '/usr/share/vim/vimfiles/plugin/fzf.vim',  { 'as': 'local/fzfbase' }  "basic usage
     Plug 'junegunn/fzf.vim'  " Register display tray
     Plug 'pbogut/fzf-mru.vim' "FZFMru
     Plug 'wakatime/vim-wakatime'
     Plug 'blindFS/vim-taskwarrior'
     Plug 'tbabej/taskwiki'
     Plug 'pandysong/ghost-text.vim'

     "Plug 'mattn/webapi-vim' Interface for WEB APIs (Requires cURL)
     "Plug 'devjoe/vim-codequery'

 " Run Things:
     "Plug 'julienr/vim-cellmode'
     Plug 'epeli/slimux'
     "Plug 'jpalardy/vim-slime'

 " Tmux:
     Plug 'christoomey/vim-tmux-navigator' " C{hjkl} to move about panes:
     Plug 'tmux-plugins/vim-tmux-focus-events'
     Plug 'tmux-plugins/vim-tmux' " Filetype for .tmux.conf
     "Plug 'benmills/vimux'

     " Inline REPL:
     Plug 'metakirby5/codi.vim'

     "" Jupyter:
     Plug 'wmvanvliet/jupyter-vim'
     " Plug 'szymonmaszke/vimpyter' "Jupyter

 """ Prose:
     Plug 'reedes/vim-lexical'
     Plug 'reedes/vim-wordy'                 " TODO Probably don't need
     Plug 'Ron89/thesaurus_query.vim'        " <Leader>cs default mapping
     Plug 'dbmrq/vim-ditto'                  " TODO
     " Autocorrection
     " Also see jelkins/vim-correction, a vim-abolish dependency below
     " let g:loaded_autocorrect = 1 " autocorrection off==1
     Plug 'panozzaj/vim-autocorrect'
     " Plug 'reedes/vim-litecorrect'
     Plug 'sheerun/vim-polyglot'
     " Consider languages in polyglot eg. let g:polyglot_disabled = ['css']

 " Pandoc:
     Plug 'vim-pandoc/vim-pandoc'
     Plug 'vim-pandoc/vim-pandoc-syntax' " May interfere with markdown
     Plug 'vim-pandoc/vim-pandoc-after'
     let g:pandoc#after#modules#enabled = ["ultisnips", "nrrwrgn", "tablemode"]


 """ Filetypes:
     "" Tag Languages: (HTML/CSS)
     Plug 'powerman/AnsiEsc.vim'  " Color ansi escape codes
         Plug 'Valloric/MatchTagAlways'
         Plug 'mattn/emmet-vim' " TODO
         "Plug 'alvan/vim-closetag'

     "" Python:
         Plug 'fs111/pydoc.vim'
         Plug 'tmhedberg/SimpylFold'
         Plug 'plytophogy/vim-virtualenv'
         Plug 'vim-python/python-syntax'  " Improved python syntax
         Plug 'Vimjas/vim-python-pep8-indent'  " Proper python indenting
         if has('python') ||  has('python3') | Plug 'davidhalter/jedi-vim' | endif
     " Plug 'python-mode/python-mode', { 'branch': 'develop' }

     "" TeX:
         Plug 'lervag/vimtex'

     "" Julia:
         Plug 'JuliaEditorSupport/julia-vim'

     "" Javascript:
         Plug 'letientai299/vim-react-snippets' ", { 'branch': 'es6' }
         Plug 'pangloss/vim-javascript'

     "" JSON:
         Plug 'elzr/vim-json'
     "
     "" Clojure Scheme Lisp Timl:
         Plug 'guns/vim-sexp'

     "" Markdown:
        " Use pandocs
         " Plug 'plasticboy/vim-markdown'
         " Plug 'mattly/vim-markdown-enhancements' " critic and multi markdown
     "Plug 'waylan/vim-markdown-extra-preview' " TODO
     "mj
             "Plug 'tpope/vim-markdown'       " Markdown

     "" MATLAB:
         Plug 'vim-scripts/MatlabFilesEdition' ", {'for', 'matlab'}
         "Plug 'wolfgangmehner/matlab-support'

     "" HEX Editing:
         Plug 'Shougo/vinarise.vim'

     """ ROS
         Plug 'taketwo/vim-ros'

 " Utilities:
     " TODO
     " Plug 'AndrewRadev/sideways.vim'
     Plug 'AndrewRadev/switch.vim'
     Plug 'mhinz/vim-startify'
     Plug 'kshenoy/vim-signature' " Marks
 " Window management
     Plug 'simeji/winresizer'
     Plug 'dr-chip-vim-scripts/ZoomWin' "C-w o to zoom in/out

 " Behavioural Looks:
     Plug 'chrisbra/NrrwRgn'           "focus on a narrow region
     Plug 'junegunn/goyo.vim'          " Writing Focus thingo
         Plug 'amix/vim-zenroom2'      " + additional stuff for goyo for md/rst/txt files (may conflict)
         " Plug 'junegunn/limelight.vim' " Goes with Goyo
         Plug 'ekaj2/limelight.vim' " Goes with Goyo

 "" Asthetics:
     " Plug 'Shougo/denite'
     Plug 'edkolev/tmuxline.vim'
     Plug 'Yggdroot/indentLine'

 "" Color Schemes:
    " Plug 'nightsense/night-and-day'  " switch colorschemes based on time of day
     " PaperColor in the day, hybrid-sl at night

     ""Plug 'flazz/vim-colorschemes'
     Plug 'NLKNguyen/papercolor-theme'
     "Plug 'sloria/vim-hybrid'  " hybrid with easier-to-read line numbers
     "Plug 'noah/vim256-color' "Uses submodules so who knows...

""" To Be Loaded Last:
" endwise

call plug#end()



" Autoload Plugins:

augroup load_us_ycm
  autocmd!
  autocmd InsertEnter * call plug#load('ultisnips', 'YouCompleteMe')
                     \| autocmd! load_us_ycm
augroup END


