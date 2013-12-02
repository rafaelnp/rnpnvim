" Vim general Options (no plugins involved)

"===============================
" new stuff - still being tested
"===============================
set showmatch
set matchtime=2
set copyindent
set listchars=""

"Minimal number of screen lines to keep above and below the cursor.
set scrolloff=2

" fast terminal connection
set ttyfast

set colorcolumn=90

" don't discard buffers
set hidden

"==============
" end new stuff
"==============

set nocompatible                   " no vi-compatibility
set autochdir                      " always switch to the current file directory
set autowriteall                   " automatically save all buffers
set nobackup                       " no backup files
set backspace=indent,eol,start     " see :help bs
set helplang=de,en                 " help language
set history=100                    " command history
set printoptions=paper:a4          " printer options
set t_vb=                          " disable the  annoyng visual and sound bell :)
set novisualbell
set noerrorbells                   " no noise
tab all                            " open a new tab instead of a new vim instance
set fileencodings=utf-8,latin1     " Encodings
set spelllang=de,pt_br,en,es       " set your favorite language here
set browsedir=buffer               " defaults to the current file's directory
set completeopt+=preview
" wildmenu: ignore these extensions
set wildignore=*.o,*.obj,*.bak,*.exe,*~,*.aux,*.fls

" Force utf-8. Fallback latin1
if has("multi_byte_encoding")
	if has('unix') || has('macunix')
		set termencoding=utf-8
		set encoding=utf-8
		set fileformat=unix                    " unix rocks :)
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

nnoremap <space> <Nop>
let mapleader = " "

" Text Formatting/Layout
syntax enable                     " syntax highlight on and keep your settings
set fo=tcrqn                      " See Help (:help fo-table)
set ai                            " autoindent
set si                            " smartindent
set cindent                       " do c-style indenting

" Don't forget:
" tabs are for indenting and aligning code and data.
" spaces are for separating words in text and comments.
"
" Here are the space and tabulator keys definition:
"
" https://en.wikipedia.org/wiki/Space_bar
" https://en.wikipedia.org/wiki/Tabulator_key
"
" Vim tabs configuration
"
" tabstop = Set tabstop to tell vim how many columns a tab counts for.
"           this is the only command here that will affect how existing
"           text displays.
" shiftwidth = Set shiftwidth to control how many columns text is indented
"              with the reindent operations (<< and >>) and automatic C-style
"              indentation.
" softtabstop = Set softtabstop to control how many columns vim uses when you
"				hit Tab in insert mode
set tabstop=4          " tab spacing (settings below are to unify it)
set softtabstop=4      " unify
set shiftwidth=4       " unify
set noexpandtab        " just tabs please :)

set hls                " highlight search patern
set wrapmargin=1       " space after linebrake
set textwidth=90       " no fucking long lines
set incsearch          " incremental search
set ignorecase
set smartcase          " Override the 'ignorecase' option if the
                       " search pattern contains upper
                       "	case characters.  Only used when the search
                       "	pattern is typed and 'ignorecase' option is on

set cpoptions=BceFs    " compatible options

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"
" 2.3 - GUI Options
"
set showcmd            " show command in last line of screen
set laststatus=2       " statusline always visible
set shortmess=atToO    " see: help shortmess
set ruler              " Show cursor line and column number position
set number             " show line numbers

if has('mouse')
	set mouse=a        " enable mouse in all modes
	set mousehide      " hides the mouse while typing
endif

if has('gui_running')
	:call SetupGUI()
else
	set showmode
	set bg=dark
	colorscheme vividchalk
	if &term == 'xterm' || &term == 'screen' || &term =='terminator'
		set t_Co=256            " Enable 256 colors in terminal
	endif
endif

"============
" C/C++ stuff
"============
set makeprg=scons

if !filereadable(expand("%:p:h")."/SConstruct")
    setlocal makeprg=gcc\ -Wall\ -Wextra\ -o\ %<\ %
endif

" different identation for C and C++
autocmd FileType c   setlocal shiftwidth=8 tabstop=8 softtabstop=8
