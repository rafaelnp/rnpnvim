" Vim Options (no plugins involved)

"========
" General
"========

set nocompatible                   " no vi-compatibility
set autochdir                      " always switch to the current file directory
set autowriteall                   " automatically save all buffers
set autoread                       " load file modified outside vim
set nobackup                       " no backup files, we have git :)
set nowritebackup
set backspace=indent,eol,start     " see :help bs
set helplang=de,en                 " help language
set history=200                    " command history
set printoptions=paper:a4          " printer options
set fileencodings=utf-8,latin1     " Encodings
set spelllang=de,pt_br,en,es       " set your favorite language here
if has("browse")
	set browsedir=buffer           " defaults to the current file's directory
endif
set completeopt=menu,preview       " menu completion options
set ttyfast                        " fast terminal connection
set hidden                         " don't discard buffers
set ttimeoutlen=50                 " timeout for a key sequence complete
set pastetoggle=<F2>               " enables paste mode


" Force utf-8. Fallback latin1. Always use unix file format
if has("multi_byte_encoding")
	if has('unix') || has('macunix')
		set termencoding=utf-8
		set encoding=utf-8
		set fileformat=unix
		set fileformats=unix
	elseif has('mac')
		set termencoding=utf-8
		set encoding=utf-8
		set fileformat=unix
		set fileformats=unix
	else
		set termencoding=utf-8
		set encoding=utf-8
		set fileformat=unix
		set fileformats=unix
	endif
else
	set termencoding=latin1
	set encoding=latin1
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
set ai              " autoindent
set si              " smartindent
set cindent         " do c-style indenting
set copyindent      " Copy the structure of the existing lines indent when autoindenting a new line
set textwidth=90    " no fucking long lines
set wrapmargin=2    " space after linebrake
set cpoptions=BceF  " compatible options

" Here are the space and tabulator keys definition:
" tabs are for indenting and aligning code and data.
" spaces are for separating words in text and comments.
"
" https://en.wikipedia.org/wiki/Space_bar
" https://en.wikipedia.org/wiki/Tabulator_key
"
" Vim tabs configuration
"
" tabstop = Set tabstop to tell vim how many columns a tab counts for. This is the only
"           command here that will affect how existing text displays.
" shiftwidth = Set shiftwidth to control how many columns text is indented
"              with the reindent operations (<< and >>) and automatic C-style
"              indentation.
" softtabstop = Set softtabstop to control how many columns vim uses when you
"               hit Tab in insert mode
set tabstop=4          " tab spacing (settings below are to unify it)
set softtabstop=4      " unify
set shiftwidth=4       " unify
set noexpandtab        " just tabs please :)


"==========
" Searching
"==========
set hlsearch      " highlight search patern
set incsearch     " incremental search
set ignorecase
set smartcase     " Override the 'ignorecase' option if the
                  " search pattern contains upper case characters. Only used when
                  " the search pattern is typed and 'ignorecase' option is on

" wildmenu: ignore these extensions
set wildignore=*.o,*.obj,*.bak,*.exe,*~,*.aux,*.fls
if has('unix')
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
else
	set wildignore+=*\\.git\\*,*\\.hg\\*,*\\.svn\\*
endif

"============
" GUI Options
"============
tab all                " open a new tab instead of a new vim instance
set showcmd            " show command in last line of screen
set laststatus=2       " statusline always visible
set shortmess=atToO    " see: help shortmess
set ruler              " Show cursor line and column number position
set number             " show line numbers
set scrolloff=2        " number of screen lines to keep above and below the cursor.
set splitright         " Always splits to the right and below
set splitbelow
set showbreak=↳        " Show the linebreak for a long line
set colorcolumn=+1     " highlight column after 'textwidth'
colorscheme vividchalk
set noshowmode         " Don't show the mode, Powerline shows it

if has('mouse')
	set mouse=a        " enable mouse in all modes
	set mousehide      " hides the mouse while typing
endif

if has('gui_running')
	set ea               " make all windows the same size when adding/removing windows
	set ead=both         " set in which direction 'equalalways' works: "ver", "hor" or "both"
	set wildmenu         " use autocompletion on command line
	set showmatch
	set matchtime=2
	set cursorline       " sets cursor line highlight. cool :)
	set display=uhex     " show unprintable characters hexadecimal
	set guioptions=aAgi  " see: help guioptions

	if has('unix')
		"Default font
		"set guifont=Monospace\ 9
		" Other good fonts:
		"set guifont=Anonymous\ Pro\ Minus\ 11
		"set guifont=Anonymous\ Pro\ 9
		"set guifont=DejaVu\ Sans\ Mono\ 9
		"set guifont=Inconsolata\ for\ Powerline\ 9
		set guifont=Liberation\ Mono\ for\ Powerline\ 8
	elseif has ('mac')
		set guifont=Monospace\ 9
	elseif has ('win32') || ('win64')
		set guifont=Lucida_Sans_Typewriter:h9
	endif

	"Pop-up menu color setteings
	highlight Pmenu guibg=brown gui=bold
	highlight Pmenu ctermbg=238 gui=bold
	set mousemodel=popup
else
	set bg=dark
	" Enable 256 colors in terminal
	if &term == 'xterm' || &term == 'screen' || &term =='terminator'
		set t_Co=256
	endif
endif

"============
" C/C++ stuff
"============
set makeprg=scons

if !filereadable(expand("%:p:h")."/SConstruct")
	setlocal makeprg=clang\ -Wall\ -Wextra\ -o\ %<\ %
endif

" different indentation for C and C++
autocmd FileType c   setlocal shiftwidth=8 tabstop=8 softtabstop=8
autocmd FileType cpp setlocal shiftwidth=8 tabstop=8 softtabstop=8
