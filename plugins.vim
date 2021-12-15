""" VIMPLUG:
" |plug-buildfuncs.vim| contains update/install hooks
" |plugfuncs.vim| should be called after, contains plugin specific functions
" |plugsettings.vim| should for settings
" |keys.vim| for the keybindings.
if isdirectory('~/.local/share/vim/plugged') != 0
    echoerr 'missing ~/.local/share/vim/plugged'
endif

" Build Funcs:
source $XDG_CONFIG_HOME/vim/functions.d/plug-buildfuncs.vim


" Preload Settings:
source $XDG_CONFIG_HOME/vim/conf.d/polyglot.vim
let g:UltiSnipsSnippetDirectories=["UltiSnips", "MyUltiSnips"]
" let g:vimtex_include_indicators=['input', 'include', 'import', 'subimport', 'import*', 'subimport*']
" Assumes system installation of ycm TODO
" let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Plug Load:
call plug#begin('~/.local/share/vim/plugged')

" Local Plugins:
     Plug '~/Templates/snippets'

 """ General Editing:
     " Plug 'Konfekt/FastFold' " Faster/Better folding
     Plug 'mbbill/undotree' " F3 to show

     " TODO
     Plug 'pelodelfuego/vim-swoop'
     Plug 'wincent/ferret'
     Plug 'JRasmusBm/vim-peculiar'

     " for turning multiline code <-> into single line: gS, gJ
     Plug 'AndrewRadev/splitjoin.vim'
     " TODO
     Plug 'FooSoft/vim-argwrap'

     " TODO
     Plug 'markonm/traces.vim'

     " Autocomplete search terms with <C-Tab>
     Plug 'vim-scripts/sherlock.vim'

     " TODO
     " https://github.com/svermeulen/vim-easyclip
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

     " Quick List helpful
     Plug 'romainl/vim-qlist'
     " TODO may clash with ALE, syntastic etc
     Plug 'romainl/vim-qf'

     " Repeat
     Plug 'tpope/vim-repeat'
     Plug 'inkarkat/vim-ingo-library'
     Plug 'vim-scripts/visualrepeat'

     " Commenting and text manip
     Plug 'tpope/vim-surround'              " Surround visual/objects with whatever
     Plug 'tomtom/tcomment_vim'             " Commenting
     " Plug 'tpope/vim-commentary'          " Un/Comment stuff: gcc, gc<motion>,
     Plug 'tommcdo/vim-exchange'            " cx<movement> to exchange
     " Plug 'seb-mueller/kwbdi.vim'           " Better buffer delete with splits behaviour <leader>bd
     Plug 'qpkorr/vim-bufkill'

     " Multiple Cursors
     " Use <C-n,p,x> <A-n>
     Plug 'mg979/vim-visual-multi'

     Plug 'mg979/alt-mappings.vim'

     " Replace with Register "gr{motion}
     Plug 'vim-scripts/ReplaceWithRegister'


 "Sessions:
     " Session management
     " Plug 'thaerkh/vim-workspace'
     " Plug 'tpope/vim-obsession'

 """ Movement:
     " Plug 'vim-seek/vim-sneak'
     " <Leader><Leader><motion>
     Plug 'easymotion/vim-easymotion'
     Plug 'benjifisher/matchit.zip'
     Plug 'unblevable/quick-scope'
     " Plug 'rhysd/clever-f.vim'

 "Search:
     Plug 'mileszs/ack.vim' " :Ack, LAck, LAckAdd, AckAdd
     " Plug 'albfan/ag.vim'
     " Plug 'brooth/far.vim'

     " <C-f>{f,n,t} - follow with h,j,k,l, C-J, C-K, p,o
     Plug 'dyng/ctrlsf.vim'                     " TODO TODO
     Plug 'haya14busa/incsearch.vim'            " TODO
         Plug 'haya14busa/incsearch-easymotion.vim' " TODO z/, z?, zg/
         Plug 'haya14busa/incsearch-fuzzy.vim'      " TODO


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
             " Plug 'tyok/nerdtree-ack'
             " Plug 'taiansu/nerdtree-ag'

     "" Diffing:
     Plug 'zhaocai/DirDiff.vim'              "Directory diff and file diff-er
     Plug 'vim-scripts/diffchanges.vim'      "Toggle show changes, and also create a patch
     Plug 'chrisbra/Recover.vim'            " Diff recovery files
     if has("patch-8.1.0360")
         set diffopt+=internal,algorithm:patience
     else
         Plug 'chrisbra/vim-diff-enhanced' " No longer required with vim 8.1
     endif


 " --------------------------------------------------------------------------------
 " Tests
     Plug 'vim-test/vim-test'

 " Functionality:
     " Plug 's1341/vim-tabws' "TODO
     " Plug 'vimwiki/vimwiki'
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
     Plug 'tpope/vim-sleuth'
     Plug 'jamessan/vim-gnupg'

     " Build, makeprg, compiler definitions
     Plug 'johnsyweb/vim-makeshift'
     Plug 'tpope/vim-dispatch'
     " Plug 'vim-scripts/clang'

     " Debugging:
     " if has('nvim')
     "     Plug 'mfussenegger/nvim-dap'
     "     Plug 'mfussenegger/nvim-dap-python'
     " endif

     " Plug 'vim-vdebug/vdebug'
     " Plug 'gilligan/vim-lldb'

     "Telescope:
     " if has('nvim')
     "     Plug 'nvim-lua/popup.nvim'
     "     Plug 'nvim-lua/plenary.nvim'
     "     Plug 'nvim-telescope/telescope.nvim' "TODO
     "     Plug 'bi0ha2ard/telescope-ros.nvim'
     "     Plug 'fhill2/telescope-ultisnips.nvim'
     "     Plug 'gbrlsnchs/telescope-lsp-handlers.nvim'
     "     Plug 'nvim-telescope/telescope-dap.nvim'
     " endif


 """ Text Objects:
 " https://github.com/kana/vim-textobj-user/wiki
 Plug 'kana/vim-textobj-user' |
 "i,I
     Plug 'kana/vim-textobj-indent'
     "e
     Plug 'kana/vim-textobj-entire'
     "z
     Plug 'kana/vim-textobj-fold'
     "/
     Plug 'kana/vim-textobj-lastpat'
     "f,F
     Plug 'kana/vim-textobj-function'
     "c,C
     Plug 'idbrii/textobj-word-column.vim'
     "j
     Plug 'Julian/vim-textobj-brace'
     "_
     Plug 'lucapette/vim-textobj-underscore'
     ";, ;{m,c,f,e,s,p,n,u,a}
     Plug 'libclang-vim/vim-textobj-clang'
     " TODO
     "\, $ math
     Plug 'rbonvall/vim-textobj-latex'
    " q,Q single/double quoted
    " e - envirenment (begin - end)
    "c
     Plug 'jasonlong/vim-textobj-css'
     Plug 'gaving/vim-textobj-argument'

     Plug 'thalesmello/vim-textobj-methodcall'
     " TODO
     " TODO
     "f,c
     Plug 'bps/vim-textobj-python'
     " Plug 'wellle/targets.vim'

     "J/K
     Plug 'terryma/vim-expand-region'
     Plug 'https://gist.github.com/ixil/5356298948576735b3713b01d668a399',
                 \ { 'as': 'local/next_motion_mapping.vim', 'do': 'mkdir -p plugin; cp -f *.vim plugin/' }

 """ Git Stuff:
     Plug 'tpope/vim-fugitive'
     "TODO github api in .netrc
     Plug 'tpope/vim-rhubarb'
     "TODO github api in .vimrc
     " Plug 'shumphrey/fugitive-gitlab.vim'
     Plug 'tommcdo/vim-fubitive'
     " TODO
     " Plug 'jparise/vim-phabricator'
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
     " Plug 'mbadran/headlights'

 """ Status Line:
     Plug 'vim-airline/vim-airline'
     Plug 'vim-airline/vim-airline-themes'
     " Plug 'itchyny/lightline.vim'
     " Plug 'mg979/vim-xtabline'

 " Unicode And Emojis:
     " Unicode character meta-data etc digraphs: C-k
     Plug 'tpope/vim-characterize'
     Plug 'joom/latex-unicoder.vim' "<c-l>
     " TODO
     " F4, Digraph, <C-X><C-G> <C-X><C-Z> <C-X><C-U> 
     Plug 'chrisbra/unicode.vim'
     Plug 'https://gitlab.com/gi1242/vim-emoji-ab'

 """ Syntax And Linting And Tags:
     " TODO
     Plug 'w0rp/ale'
     Plug 'ludovicchabant/vim-gutentags'
     Plug 'skywind3000/gutentags_plus'
     Plug 'majutsushi/tagbar'

 """ Completion And Snippets:
    if has('nvim')
        Plug 'neovim/nvim-lsp'
        Plug 'nvim-treesitter/nvim-treesitter'
        Plug 'nvim-lua/completion-nvim'
            Plug 'steelsojka/completion-buffers'
            Plug 'kristijanhusak/vim-dadbod-completion' " Database completion
            Plug 'nvim-treesitter/completion-treesitter'
    endif

     " Plug 'ervandew/supertab'                                      " TODO
     Plug 'sirver/ultisnips'  " Note: YCM + ultisnips require settings to work together
     Plug 'honza/vim-snippets'

     " TODO
     "Plug 'sickill/vim-pasta'

     " Plug 'lifepillar/vim-mucomplete' 
     if filereadable('/usr/share/vim-youcompleteme/plugin/youcompleteme.vim')
         Plug '/usr/share/vim-youcompleteme/plugin/youcompleteme.vim', { 'as':'YouCompleteMe'}
     else
         Plug 'ycm-core/YouCompleteMe', { 'do': function('BuildYCM') }
     endif

     " TODO
     Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
     " Plug 'Cocophotos/vim-ycm-latex-semantic-completer'
     " Plug 'jeayae/color_coded', { 'do': 'rm -f CMakeCache.txt && cmake . && make && make install', 'for': ['cpp', 'objc', 'objcpp'], 'build_commands' : ['cmake', 'make']}

     " CCLS
     Plug 'm-pilia/vim-ccls'
     Plug 'jackguo380/vim-lsp-cxx-highlight'

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
     Plug 'AndrewRadev/switch.vim'
     " Color ansi escape codes
     Plug 'powerman/AnsiEsc.vim'


     Plug 'bronson/vim-trailing-whitespace' " Remove trailing whitespace

 """ Pairwise Autocompleteion:
     " TODO
     Plug 'jiangmiao/auto-pairs'
     " Plug 'raimondi/delimitmate' "Delimiters autocomplete. Many similar
     "TODO augroup
     Plug 'tpope/vim-endwise', { 'on': [], 'for': [], 'as': 'endwise' } " End/do/endif etc autocompletition, load manually at end
     " TODO
     Plug 'lfilho/cosco.vim'

 " Alignment And Tables:
     Plug 'chrisbra/csv.vim'
     Plug 'salsifis/vim-transpose'  " Column based text manipulation, CSV transposing
     " Plug 'junegunn/vim-easy-align' " For aligning stuff properly!
     Plug 'tommcdo/vim-lion' "TODO
     Plug 'dhruvasagar/vim-table-mode'
     Plug 'godlygeek/tabular'

 " Binaries Interfaces And Helpers:
     Plug 'ojroques/vim-oscyank'

     " Databases:
     Plug 'tpope/vim-dadbod'

     " CLI And More:
     Plug 'dbeniamine/cheat.sh-vim'
     if has('nvim')
         Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
         Plug 'lambdalisue/suda.vim'
     endif

     Plug 'CoatiSoftware/vim-sourcetrail'
     Plug 'fourjay/vim-password-store'
     Plug 'wincent/terminus'

     " FZF:
     " TODO arch installed on the rtp, otherwise use nix
     " Plug 'junegunn/fzf'
     Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
     " Plug '~/.nix-profile/share/vim-plugins/fzf/plugin/fzf.vim',  { 'as': 'local/fzf.vim' }  "basic usage, in
     " Plug '/usr/share/vim/vimfiles/plugin/fzf.vim',  { 'as': 'local/fzf' }  "
     " Plug '/usr/share/vim/vimfiles/plugin/fzf/',  { 'as': 'local/fzf.vim' }  "
     " Plug 'rayjzeng/fzf.vim'
     " requires junegunn/fzf::plugins/fzf.vim
     Plug 'junegunn/fzf.vim'
     Plug 'pbogut/fzf-mru.vim' "FZFMru

     Plug 'ActivityWatch/aw-watcher-vim'
     Plug 'blindFS/vim-taskwarrior'
     Plug 'tbabej/taskwiki'

     " Plug 'raghur/vim-ghost'
     "     Plug 'roxma/nvim-yarp', v:version >= 800 && !has('nvim') ? {} : { 'on': [], 'for': [] }
     "     Plug 'roxma/vim-hug-neovim-rpc', v:version >= 800 && !has('nvim') ? {} : { 'on': [], 'for': [] }

     " Mail:
         " Notmuch:
         Plug 'Konfekt/vim-notmuch-addrlookup'
     " Should work with modern enough notmuch
     " if !executable('notmuch-addrlookup')
     "   Plug 'aperezdc/notmuch-addrlookup-c', { 'do': 'make' }
     "   let $PATH .= expand(':~/.local/share/vim/plugged/notmuch-addrlookup-c')
     " endif

     " Plug 'stevearc/vim-arduino'
     "Plug 'mattn/webapi-vim' Interface for WEB APIs (Requires cURL)
     "Plug 'devjoe/vim-codequery'

     "Papis
     " TODO
     " Plug 'papis/papis-vim.git'


    " Kitty:
    if &term == 'xterm-kitty'
        if exists('$KITTY_LISTEN_ON')
        Plug 'knubie/vim-kitty-navigator'
        endif
    endif
    " Tmux:
    if exists('$TMUX')
         Plug 'christoomey/vim-tmux-navigator' " C{hjkl} to move about panes:
         " Plug 'tmux-plugins/vim-tmux-focus-events' "terminus
         " Plug 'tpope/vim-tbone'
         "Plug 'benmills/vimux'
     endif

     " TODO make the mappings between repl things the same
     " Inline REPL:
         "Plug 'jpalardy/vim-slime'
         Plug 'metakirby5/codi.vim'
         Plug 'epeli/slimux'

         " Jupyter:
         "Plug 'julienr/vim-cellmode'
         Plug 'jupyter-vim/jupyter-vim'
         " Plug 'szymonmaszke/vimpyter' "Jupyter

     """ Documentation:
    Plug 'kkoomen/vim-doge' "TODO configure

 """ Prose:
     " TODO augroups
     Plug 'reedes/vim-lexical'
     Plug 'reedes/vim-wordy'                 " TODO Probably don't need
     Plug 'Ron89/thesaurus_query.vim'        " <Leader>cs default mapping
     Plug 'dbmrq/vim-ditto'                  " TODO
     " Autocorrection
     " Also see jelkins/vim-correction, a vim-abolish dependency below
     " let g:loaded_autocorrect = 1 " autocorrection off==1
     Plug 'panozzaj/vim-autocorrect'
     " Plug 'reedes/vim-litecorrect'
     Plug 'ixil/vim-polyglot', { 'do': function('BuildPolyglot') }
     " Consider languages in polyglot eg. let g:polyglot_disabled = ['css']

 " Pandoc:
     Plug 'vim-pandoc/vim-pandoc'
     Plug 'vim-pandoc/vim-pandoc-syntax' " May interfere with markdown
     Plug 'vim-pandoc/vim-pandoc-after'
     let g:pandoc#after#modules#enabled = ["ultisnips", "nrrwrgn", "tablemode"]


 """ Filetypes:
     "" Neomutt config
     Plug 'neomutt/neomutt.vim'
     "" Tmux
     Plug 'tmux-plugins/vim-tmux'
     "" C/C++ clang
     Plug 'octol/vim-cpp-enhanced-highlight'
     " Plug 'bfrg/vim-cpp-modern' "TODO Polyglot, this supports /20
     Plug 'libclang-vim/vim-textobj-clang'
     Plug 'libclang-vim/vim-textobj-function-clang'
    " Plug 'lyuts/vim-rtags'
     " Plug 'vhdirk/vim-cmake'
     Plug 'farafonov-alexey/vim-cmake'


     "" Tag Languages: (HTML/CSS)
         Plug 'Valloric/MatchTagAlways'
         Plug 'mattn/emmet-vim' " TODO
         "Plug 'alvan/vim-closetag'

     "" Python:
         Plug 'fs111/pydoc.vim'
         Plug 'tmhedberg/SimpylFold'
         Plug 'plytophogy/vim-virtualenv'
         " Plug 'vim-python/python-syntax'  " Improved python syntax Polyglot
         " Plug 'Vimjas/vim-python-pep8-indent'  " Proper python indenting: Polyglot
         if has('python') ||  has('python3') | Plug 'davidhalter/jedi-vim', {'as':'jedi-v'} | endif
     " Plug 'python-mode/python-mode', { 'branch': 'develop' }

     "" TeX:
         Plug 'lervag/vimtex'
         Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

     "" Julia:
         " Plug 'JuliaEditorSupport/julia-vim' "Polyglot

     "" Javascript:
         Plug 'letientai299/vim-react-snippets' ", { 'branch': 'es6' }
         " Plug 'pangloss/vim-javascript' "Polyglot

     "" Rust:
         " Plug 'rust-lang/rust.vim', {' for': 'rust'} "Polyglot
         Plug 'racer-rust/vim-racer', {' for': 'rust'}

     "" JSON:
         Plug 'elzr/vim-json'
     "
     "" Clojure Scheme Lisp Timl:
         Plug 'guns/vim-sexp'

     "" Markdown:
        " Use pandoc instead
        Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
        " Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
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


     """ ROS:
         Plug 'taketwo/vim-ros'
         Plug 'kgreenek/vim-ros-ycm'
         " Plug 'galou/vim-ros', { 'branch': 'python3' }

 " Utilities:
     " TODO
     " Plug 'mvphilip/vim-submode'
     Plug 'lervag/file-line'
     " Plug 'AndrewRadev/sideways.vim'
     Plug 'mhinz/vim-startify'
     Plug 'kshenoy/vim-signature' " Marks
     Plug 'junegunn/vim-peekaboo'  " Register display tray

 " Window Management:
     Plug 'simeji/winresizer'
     " Plug 'dr-chip-vim-scripts/ZoomWin' "C-w o to zoom in/out
     Plug 'regedarek/ZoomWin' "C-w o to zoom in/out

 " Behavioural Looks:
     Plug 'chrisbra/NrrwRgn'           "focus on a narrow region
     Plug 'junegunn/goyo.vim'          " Writing Focus thingo
         Plug 'amix/vim-zenroom2'      " + additional stuff for goyo for md/rst/txt files (may conflict)
         Plug 'junegunn/limelight.vim' " Goes with Goyo
         " Plug 'ekaj2/limelight.vim' " Goes with Goyo

 "" Aesthetics And Appearance:
     " Plug 'Shougo/denite'
     " Plug 'edkolev/tmuxline.vim'
     Plug 'Yggdroot/indentLine'
     Plug 'Valloric/vim-operator-highlight'

 "" Color Schemes:
    Plug 'nightsense/night-and-day'  " switch colorschemes based on time of day
     " PaperColor in the day, hybrid-sl at night

     ""Plug 'flazz/vim-colorschemes'
     Plug 'NLKNguyen/papercolor-theme'
     Plug 'sloria/vim-hybrid'  " hybrid with easier-to-read line numbers
     "Plug 'noah/vim256-color' "Uses submodules so who knows...
     Plug 'connorholyday/vim-snazzy'
     Plug 'arcticicestudio/nord-vim'
     Plug 'ayu-theme/ayu-vim'
     Plug 'chriskempson/base16-vim'
     Plug 'jandamm/vim-one' " Actually called 'one'


call plug#end()

" Autoload Plugins:

