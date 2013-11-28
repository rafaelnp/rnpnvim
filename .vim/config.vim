
"
" 2 - Setup and costumization
"
"
" 2.1 - General Options
"

set nocompatible                        " no vi-compatibility
set autochdir                           " always switch to the current file directory
set autowriteall                        " automatically save all buffers
set nobackup                            " no backup files
set backspace=indent,eol,start          " see :help bs
set helplang=de,en                      " help language
set history=100                         " command history
set printoptions=paper:a4               " printer options
set ruler                               " Show cursor line and column number position
set number                              " show line numbers
" wildmenu: ignore these extensions
set wildignore=*.o,*.obj,*.bak,*.exe,*~,*.aux,*.fls
set visualbell t_vb=                    " disable the fucking annoyng visual
                                        " and sound bell :)
set novisualbell
set noerrorbells                        " no f***ing noise
tab all                                 " open a new tab instead of launching a new
                                        " vim instance
set fileencodings=utf-8,latin1          " Encodings
set spelllang=de,pt_br,en,es
set browsedir=buffer                    " defaults to the current file's directory
set completeopt+=preview

if has("multi_byte_encoding")
	set encoding=utf-8                  " charcter encoding used in vim
else
	set encoding=latin1                 " fallback
endif

nnoremap <space> <Nop>
let mapleader = " "

"
" 2.2 - Text Formatting/Layout
"
syntax enable                     " syntax highlight on and keep your settings

" system dependent configuration
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

set fo=tcrqn                      " See Help (:help fo-table)
set ai                            " autoindent
set si                            " smartindent
set cindent                       " do c-style indenting

" Don't forget:
" tabs are for indenting and aligning text.
" spaces are for separating keywords.
"
" For those that still insist to use spaces instead of tabs to ident code, here
" are the meaning of space and tabulator keys:
"
" https://en.wikipedia.org/wiki/Space_bar
" https://en.wikipedia.org/wiki/Tabulator_key
"
" Vim configuration 
"
" tabstop = Set tabstop to tell vim how many columns a tab counts for.
"			This is the only command here that will affect how existing
"			text displays.
" shiftwidth =  Set shiftwidth to control how many columns text is indented
"				with the reindent operations (<< and >>) and automatic C-style
"				indentation.
" softtabstop = Set softtabstop to control how many columns vim uses when you
"				hit Tab in insert mode
set tabstop=4                     " tab spacing (settings below are to unify it)
set softtabstop=4                 " unify
set shiftwidth=4                  " unify
set noexpandtab                   " just tabs please :)

set showcmd                       " show command in last line of screen
set nu                            " line numbers :)
set hls                           " highlight search patern
set wrapmargin=1                  " space after linebrake
set textwidth=90                  " no fucking long lines
set incsearch                     " incremental search
set ignorecase
set smartcase                     " Override the 'ignorecase' option if the
                                  " search pattern contains upper
                                  "	case characters.  Only used when the search
                                  "	pattern is typed and 'ignorecase' option is on
set cpoptions=BceFs               " compatible options

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"
" 2.3 - GUI Options
"

set laststatus=2                       " statusline always visible
set shortmess=atToO                    " see: help shortmess


if has('mouse')
	set mouse=a                        " enable mouse in all modes
	set mousehide                      " hides the mouse while typing
endif

function! SetupGUI()
	set ea                             " make all windows the same size when
                                       " adding/removing windows
	set ead=both                       "set in which direction 'equalalways'
                                       " works: "ver", "hor" or "both"
	set wildmenu                       "
	set noshowmode                       " display current mode
	set cursorline                     " sets cursor line highlight. cool :)
	set display=uhex

	" TODO: Which is the best font (proportional) for programming ??
	if has('unix')
		"Default font
		"set guifont=Monospace\ 9
		" Other good fonts:
		"set guifont=Anonymous\ Pro\ Minus\ 11
		"set guifont=Anonymous\ Pro\ 9
		set guifont=Inconsolata\ 9
		"set guifont=DejaVu\ Sans\ Mono\ 9
	elseif has ('win32') || ('win64')
		set guifont=Lucida_Sans_Typewriter:h9
	elseif has ('mac')
		set guifont=Monospace\ 9
	endif

	colorscheme vividchalk
	set guioptions=aAgi                       " see: help guioptions

	"Pop-up menu color setteings
	highlight Pmenu guibg=brown gui=bold      "gui
	highlight Pmenu ctermbg=238 gui=bold      "terminal
	set mousemodel=popup
endfunction

if has('gui_running')
	:call SetupGUI()
else
	set showmode
	set bg=dark
	colorscheme vividchalk
	if &term == 'xterm' || &term == 'screen' || &term =='terminator'
		set t_Co=256            " Enable 256 colors to stop the CSApprox warning
                                " and make xterm vim shine
	endif
endif

syntax enable                          " syntax highlight on and keep your settings


"
" 2.5 - C/C++ stuff
"
set makeprg=scons

if !filereadable(expand("%:p:h")."/SConstruct")
    setlocal makeprg=gcc\ -Wall\ -Wextra\ -o\ %<\ %
endif

" different identation for C and C++
autocmd FileType c   setlocal shiftwidth=8 tabstop=8 softtabstop=8
autocmd FileType cpp setlocal shiftwidth=8 tabstop=8 softtabstop=8


"
" 2.5 - mappings
"
" :nmap - Display normal mode maps
" :imap - Display insert mode maps
" :vmap - Display visual and select mode maps
" :smap - Display select mode maps
" :xmap - Display visual mode maps
" :cmap - Display command-line mode maps
" :omap - Display operator pending mode maps

nmap <a-r> :%s/\r//g<CR>            " removes carriage return
nmap <a-t> :tabnew<CR>              " opens a new table
nmap <a-n> :bn<CR>
nmap <a-p> :bp<CR>
nmap <C-s> :wa<CR>                  " save all buffers
nmap ,d    :call Reloadconfig()<CR> " maps reload config
nmap <silent> <a-d> :call DumpMaps()<CR>     " save all current mappings on a text file

function! Reloadconfig()
	wa
	source $MYVIMRC
endfunction

function! DumpMaps()
	redir! > ~/vim_maps.txt
	map
	map!
	redir END
endfunction

" Insert current date and time
nnoremap <F5> "=strftime("%Y.%m.%d (%a) %H:%M:%S")<CR>P
inoremap <F5> <C-R>=strftime("%Y.%m.%d (%a) %H:%M:%S")<CR>

"Very useful :)
map <buffer> <a-m> :%s///g<CR>     " remove ^M in current file
map <a-q> :ccl<CR>                " closes quickfix

" CTRL+F1 to toggle the menu bar
nmap <silent> <A-1> :if &guioptions=~'m' \| set guioptions-=m \| else \| set guioptions+=m \| endif<CR><ESC>

" CTRL+F2 to toggle the menu bar
nmap <silent> <A-2> :if &guioptions=~'T' \| set guioptions-=T \| else \| set guioptions+=T \| endif<CR><ESC>

" CTRL+F3 to toggle the right scroll bars
nmap <silent> <A-3> :if &guioptions=~'r' \| set guioptions-=r \| else \| set guioptions+=r \| endif<CR><ESC>

" CTRL+F4 to toggle left the scroll bars
nmap <silent> <A-4> :if &guioptions=~'l' \| set guioptions-=l \| else \| set guioptions+=l \| endif<CR><ESC>

"
" 2.6 - Mapping commands for window changing
"
"
" Moving cursor to other windows
"
" shift down   : change window focus to lower one (cyclic)
" shift up     : change window focus to upper one (cyclic)
" shift left   : change window focus to one on left
" shift right  : change window focus to one on right
"
nmap <s-down>   <c-w>w
nmap <s-up>     <c-w>W
nmap <s-left>   <c-w>h
nmap <s-right>  <c-w>l

"
" Unmap arrow keys in normal mode
"
map <Left>  <Nop>
map <Right> <Nop>
map <Up>    <Nop>
map <Down>  <Nop>

"
" 2.8 - Highlight unwanted spaces
"       http://vim.wikia.com/wiki/Highlight_unwanted_spaces
"       http://stackoverflow.com/questions/4998582/show-whitespace-characters-in-gvim
"
" Highlight redundant spaces (spaces at the end of the line, spaces before
" or after tabs):
highlight RedundantSpaces term=standout ctermbg=Grey guibg=#ffddcc
call matchadd('RedundantSpaces', '\(\s\+$\| \+\ze\t\|\t\zs \+\)\(\%#\)\@!')

"
" 2.9 - Removes trailing spaces
"
" TODO: Add a mapping for it
"
"%s/\s\+$//e
