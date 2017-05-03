" *** Fixes *** "
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0 "Solves the garbage chars problem.
let $VTE_VERSION="100"
set guicursor=

" *** Plugins *** "
source $HOME/.config/nvim/config/plugins.vim

" *** General *** "
set number              " show line numbers
set showcmd             " show command in bottom bar
set showmode            " show current mode
set ruler
set colorcolumn=80
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set foldenable          " enable folding
set autoread            " detect file changes
set mouse=a             " allow mouse in xterm
colorscheme gruvbox
set background=dark
"set t_Co=256 

set clipboard=unnamedplus " clipboard

" *** Code *** "
syntax on
syntax enable

" *** Search ***
set incsearch           " search as characters are entered
set hlsearch            " highlight matchesset foldenable     
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" *** Indentation ***"
filetype indent on      " load filetype-specific indent files
set expandtab " tabs are spaces
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4
set autoindent
set smarttab

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

" *** Backups *** "
set undodir=~/.config/nvim/undodir
set undofile
set undolevels=100
set undoreload=1000

set backupdir=~/.config/nvim/backup
set directory=~/.config/nvim/backup

