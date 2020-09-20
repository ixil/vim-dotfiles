""" General Settings


" Improves redrawing
set ttyfast
" set shell=/bin/dash
set shell=/bin/zsh
set shellpipe=>
" Don't update screen while executing a macro, register or other commands that not have been typed
set lazyredraw

" Colorscheme must be loaded after pluigns
set encoding=utf8
set termencoding=utf8

set grepprg=rg\ --vimgrep\ -S\ -L
set grepformat^=%f:%l:%c:%m

" Leader
let mapleader =" "
let maplocalleader ="\\"

" Filetype
filetype plugin on
filetype plugin indent on
filetype on

syntax on
set t_Co=256
set laststatus=2

syntax enable

set hidden            " Edit other buffers without saving
set noerrorbells
set history=10000

" General:
set number              " Show line numbers
set linebreak           " Break lines at word (requires Wrap lines)
set textwidth=100       " Line wrap (number of cols)
set showmatch           " Highlight matching brace
set visualbell          " Use visual bell (no beeping)

set hlsearch            " Highlight all search results
set smartcase           " Enable smart-case search
set ignorecase          " Always case-insensitive
set incsearch           " Searches for strings incrementally

set autoindent          " Auto-indent new lines
set expandtab           " Use spaces instead of tabs
set shiftwidth=4        " Number of auto-indent spaces
set smartindent         " Enable smart-indent
set smarttab            " Enable smart-tabs
set tabstop=4           " Number of spaces per Tab character
set softtabstop=4       " Number of spaces per Tab
set mouse=a             " Use mouse
set mousehide           " Hide mouse when typing
set winaltkeys=no       " Remove GUI Alt/Meta key bindings for the gui filemenus
set virtualedit=block   " USE WITH CARE
set ruler               " Show row and column ruler information
set list
set pastetoggle=<C-F2>  " Toggle paste mode, useful for terminal vim

"" Advanced:
set undofile
set undolevels=1000            " Number of undo levels
set backspace=indent,eol,start " Backspace behaviour

if has("persistent_undo")
    set undodir=$XDG_CACHE_HOME/vim/undo
    set undofile
endif

set sessionoptions=blank,curdir,folds,help,tabpages,winpos

" set showcmd                  " Shows the command in process
set cursorline                 " Highlight current line
set noshowmode

" Inbuilt thesaurus
set thesaurus+=~/.local/share/vim/thesaurus/mthesaur.txt

" Man:
" runtime ftplugin/man.vim
set keywordprg=:Man " Sets 'K' to use the :Man command and load the man page in a split

" Finding Files:
set path+=**
set wildmenu     " visual autocomplete for command menu

if &term =~ '^tmux'
  let &t_BE="\<Esc>[?2004h"
  let &t_BD="\<Esc>[?2004l"
  let &t_PS="\<Esc>[200~"
  let &t_PE="\<Esc>[201~"
endif

" NetRW file browsing
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv=1
let g:netrw_liststyle =3
let g:netrw_list_hide = netrw_gitignore#Hide()
let g:netrw_list_hide = ',(^\|\s\s\)\zs\.\S\+'
" let g:netrw_browsex_viewer= "kfmclient exec"
let g:netrw_browsex_viewer= "xdg-open"

" Tex
let g:tex_flavor = 'latex'

" Doxygen
let g:load_doxygen_syntax=1
