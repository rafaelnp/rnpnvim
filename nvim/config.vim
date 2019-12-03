" Vim Options (no plugins involved)

"========
" General
"========

"set autochdir                      " disabled because of vimshell plugin
set autowriteall                   " automatically save all buffers
set nobackup                       " no backup files, we have git :)
set nowritebackup
set noswapfile                     " no swap file
set helplang=en                    " help language
set history=1000                   " command history
set printoptions=paper:a4          " printer options
set fileencodings=utf-8,ucs-bom    " Encodings
set spelllang=de,pt_br,en,es       " set your favorite language here
if has("browse")
	set browsedir=buffer           " defaults to the current file's directory
endif
set completeopt=menu               " menu completion options
set hidden                         " don't discard buffers
set ttimeoutlen=50                 " timeout for a key sequence complete
set pastetoggle=<F2>               " enables paste mode
set clipboard+=unnamedplus

" workaround for (failing) autoread
au FocusGained * :checktime

" Force utf-8. Fallback latin1. Always use unix file format
if has('multi_byte')
	set termencoding=utf-8
	set encoding=utf-8
	set fileformat=unix
	set fileformats=unix,dos
else
	set termencoding=latin1
	set encoding=latin1
endif

" centralize undo files
" the directory must be created manually
if has("persistent_undo")
	set undodir=~/.config/nvim/.undodir
	set undofile
endif

"======
" sound
"======
set t_vb=                " disable the  annoyng visual and sound bell :)
set novisualbell         " no noise
set noerrorbells         " no noise

"=======================
" Text Formatting/Layout
"=======================

syntax enable       " syntax highlight on and keep your settings
set fo=tcrqn        " See Help (:help fo-table)
set smartindent     " smartindent
set copyindent      " Copy the structure of the existing lines indent when autoindenting a new line
"set textwidth

set cpoptions=BceF  " compatible options

" Here are the space and tabulator keys definition:
" tabs are for indenting and aligning code and data.
" https://en.wikipedia.org/wiki/Space_bar
" https://en.wikipedia.org/wiki/Tabulator_key
"
" Vim tabs configuration
"
" tabstop = Set tabstop to tell vim how many columns a tab counts for. This isx
"           the only command here that will affect how existing text displays.
"
" shiftwidth = Set shiftwidth to control how many columns text is indented
"              with the reindent operations (<< and >>) and automatic C-style
"              indentation.
" softtabstop = Set softtabstop to control how many columns vim uses when you
"               hit Tab in insert mode

set tabstop=4          " tab spacing (settings below are to unify it)
set softtabstop=4      " unify
set shiftwidth=4       " unify


"==========
" Searching
"==========
set ignorecase
set smartcase       " Override the 'ignorecase' option if the
					" search pattern contains upper case characters. Only used when
					" the search pattern is typed and 'ignorecase' option is on

" wildmenu: ignore these extensions
set wildignore=*.o,*.obj,*.bak,*.exe,*~,*.aux,*.fls
if has('unix')
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
else
	set wildignore+=*\\.git\\*,*\\.hg\\*,*\\.svn\\*
endif

"===================
" GUI/Visual Options
"===================
tab all                      " open a new tab instead of a new vim instance
set shortmess=aToOc          " see: help shortmess
set number                   " show line numbers
set scrolloff=2              " number of screen lines to keep above and below the cursor.
set splitright               " Always splits to the right and below
set splitbelow
set showbreak=↳              " Show the linebreak for a long line
set signcolumn=yes


if (has("termguicolors"))
	set termguicolors
endif

colorscheme one              " colour scheme name

set noshowmode               " Don't show the mode, Powerline shows it
set showmatch                " When a bracket is inserted, briefly jump to the matching one.
set matchtime=2              " Tenths of a second to show the matching parten
set wildmenu                 " use autocompletion on command line
set cursorline               " sets cursor line highlight. cool :)
set display=uhex             " show unprintable characters hexadecimal
set listchars=tab:▸\ ,eol:¬,trail:-,extends:>,precedes:<,nbsp:+,space:·
set list

if has('mouse')
	set mouse=a              " enable mouse in all modes
	set mousehide            " hides the mouse while typing
endif

if exists('g:GuiLoaded')
	set guioptions=aAgi      " see: help guioptions

	if has('unix')
		set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 8
		"set guifont=Monospace\ 9
	elseif has ('mac')
		set guifont=Monospace\ 9
	elseif has ('win32') || ('win64')
		set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h8
		"set guifont=Lucida_Sans_Typewriter:h9
	endif

	set mousemodel=popup
else
	" Enable 256 colors in terminal
	if &term == 'xterm' || &term == 'screen' || &term =='terminator' || &term == 'gnome-terminal' || &term == 'konsole'
		set t_Co=256
	endif
endif

let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'

