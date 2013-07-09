"===============================================================================
" Rafael do Nascimento Pereira (rnp) <rnp@25ghz.net>
" OpenPGP key fingerprint: 146D C355 A1BB 9A04 04F2 1C69 E371 BBBA 74B1 CAA3 
"
" Description:   vim configuraton file
" Creation date: 1998.02.12
" Last update:   2013.07.09 (Mo) 16:31:48
"===============================================================================
"
"TODO:
"   fix tag generation
"   install autocomplete funcionality 
"   configure powerline
"   http://vim.spf13.com/
"   configure clang_indexer/clang_complete
"   Supertab
"   c.vim
"
"===============================================================================
" 1 - useful commands
"===============================================================================
"
"   Vim quick and advanced reference card
"   http://tnerual.eriogerg.free.fr/vimqrc.html
"
"    Navigation:
"    $                       end of line
"    ^                       first character in current line
"    w                       next word
"    b                       preview word
"    <C-o>                   jumps to previous location 
"    <C-i>                   jumps to next location 
"    CTRL-]                  jump to link/tag under the cursor
"    CTRL-T or CTRL-O        jump back to previous postion
"    %                       match brackets open/closing
"    [TAB                    goes to definition
"
"    Sessions:
"    mksession <file>        saves session to a file
"                            (Ex:  mksession session.vim)
"    source <file>           recovers a vim session
"                            (Ex:  source session.vim)
"                            (Ex:  vim -S session.vim)
"
"   Completion:
"    CTRL-P                 completes a parcially typed word searching
"                           backward
"    CTRL-N                 completes a parcially typed word searching
"                           forward
"
"   Editing:
"    VU                      uppercase the whole current line
"    mark <n>                create a new mark `n`
"    `<n>                    go to mark `n` 
"    ^E e ^Y                 less-like page navigation
"    gg=G                    reidenta o codigo todo
"    CTRL+D (insert mode)    retira um `tab` de identacao
"    %retab                  replaces TABs by spaces
"    gq (visual selected)    ajusta texto em textwidth
"    CTRL+F (insert mode)    indent line
"    normal <key-cmd>        execute a sequence of keys
"    execute <command>       execute a :command
"    yaw                     copies word to yank register
"    '.                      goto position where last change was made
"    K                       executes man page for the word under the cursor
"    split                   horizontal split
"    vsplit                  vertical split
"    q:                      show command line window
"    ce                      change to end of word (a complete change command)
"    C or c$                 change to end of wine
"    s or cl                 erase character under the cursosr and enters in insert mode
"    S or ^C                 erase the whole line 
"    I or ^i                 goes to the line begin and enters in insert mode
"    A or $a                 goes to the line end and enters in edit mode
"    o or A<CR>              adds new line bellow 
"    O or ko                 adds new line above
"    c-w =                   makes windows have the same size
"    Ctrl+a                  increment number under the cursor
"    Ctrl+x                  decrement number under cursor
"    bdi                     buffer delete
"    <C-a>                   increments the number under the cursor
"    <C-x>                   decrements the number under the cursor
"
"   Mapping:
"
"   Here is an overview of map commands and in which mode they work:
"    :map                    Normal, Visual and Operator-pending
"    :vmap                   Visual
"    :nmap                   Normal
"    :omap                   Operator-pending
"    :map!                   Insert and Command-line
"    :imap                   Insert
"    :cmap                   Command-line
"
"    Search:  
"    /^\(.*pattern\)\@!.*$  for lines not containing pattern:
"    or
"    /\v^(.*Warning)@!.*$
"
"   :%s/search/replace/gc        search and replace (c=confirm) thru the whole buffer
"   :%s/search/replace/g         search and replace thru the whole buffer
"   :50,100s/search/replace/g    search and replace between the lines 50 and 100

"   Misc:
"    so ~/.vimrc             reloads .vimrc

"   Easter Eggs:
"    :help 42
"    :help holy-grail
"    :help!
"    :help map-modes (see comment below the table about :nunmap)
"    :help UserGettingBored 

"================================================================================
" Vundle
"================================================================================
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'vundle'
Bundle 'genutils'
Bundle 'SelectBuf'
Bundle 'VimExplorer'
Bundle 'Color-Sampler-Pack'
Bundle 'Tagbar'
Bundle 'Syntastic'
Bundle 'https://github.com/altercation/vim-colors-solarized'
Bundle 'https://github.com/godlygeek/tabular.git'
Bundle 'ctrlp.vim'
Bundle 'moria'
Bundle 'https://github.com/oinksoft/proj.vim.git'
Bundle 'https://github.com/myusuf3/numbers.vim.git'
Bundle 'https://github.com/jistr/vim-nerdtree-tabs.git'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'https://github.com/tpope/vim-vividchalk.git'
if has('gui_running')
	Bundle 'Lokaltog/powerline'
	set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
endif
let g:vundle_default_git_proto = 'https'
filetype plugin indent on     " required!

"===============================================================================
" 2 - VIM setup and costumization
"===============================================================================
"===============================================================================
" 2.1 - General Options
"===============================================================================

set nocompatible                        " no vi-compatibility
set autochdir                           " always switch to the current file directory
set autowriteall                        " automatically save all buffers
set backspace=indent,eol,start          " see :help bs
set helplang=de,en                      " help language
set history=100                         " command history
set printoptions=paper:a4               " printer options
set ruler                               " Show cursor line and column number position
set wildignore=*.o,*.obj,*.bak,*.exe,*~ " wildmenu: ignore these extensions
set updatetime=4000                     " update every 4000 ms
set visualbell t_vb=                    " disable the fucking annoyng visual
                                        " and sound bell :)
set noerrorbells                        " no fucking noise
tab all                                 " open a new tab instead of launching a new
                                        " vim instance
set fileencodings=ucs-bom,utf-8,latin1  " Encodings
set spelllang=de,pt_br,en,es
set browsedir=buffer                    " defaults to the current file's directory

if has("multi_byte_encoding")
	set encoding=utf-8                  " charcter encoding used in vim
else 
	set encoding=latin1                 " fallback   
endif

"===============================================================================
" 2.2 - Text Formatting/Layout
"===============================================================================

syntax enable                     " syntax highlight on and keep your settings
filetype on                       " enable file type detection 
filetype plugin on                " enable filetxype plugins
filetype indent on

" system dependent configuration
if has('unix')
	set termencoding=utf-8                 " terminal encoding
	set fileformat=unix                    " unix rocks :)
	set fileformats=unix                   " unix rocks :)

	"
	" TODO: set up a mapping for dictionary
	"
	set dictionary+=/usr/share/dict/ogerman
	set dictionary+=/usr/share/dict/brazilian
	set dictionary+=/usr/share/dict/british-english
	set path+=~/projekte
else
	set fileformats=unix,dos                   " unix rocks :)
endif
set fo=tcrqn                      " See Help (:help fo-table)
set ai                            " autoindent
set si                            " smartindent
set cindent                       " do c-style indenting

" tabs are for indenting and aligning text.
" spaces are for separating keywords.
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
set cpoptions=BceFs               " compatible options 

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"===============================================================================
" 2.3 - GUI Options
"===============================================================================

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
		set guifont=Monospace\ 9
		" Other good fonts:
		"set guifont=Anonymous\ Pro\ Minus\ 11      
		"set guifont=Anonymous\ Pro\ 11             
		"set guifont=Inconsolata\ 11                
		"set guifont=DejaVu\ Sans\ Mono\ 9          
	elseif has ('win32') || ('win64')
		set guifont=Lucida_Sans_Typewriter:h9
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
	if &term == 'xterm' || &term == 'screen'
		set t_Co=256            " Enable 256 colors to stop the CSApprox warning
		                        " and make xterm vim shine
	endif
	set term=builtin_ansi       " Make arrow and other keys work
	set statusline=%t%m%r%h%w\                " options
	set statusline+=[%{&ff}]\                 " system
	set statusline+=%y\                       " file type
	set statusline+=[ASCII=%03.3b,0x%02.2B]\  " ascii
	set statusline+=[OFFSET=%o,0x%O]          " offset
	set statusline+=[LN=%l,C=%v]              " line and column
	set statusline+=[%p%%]\                   " percentage 
	set statusline+=[LN=%L]                   " total lines 
endif

syntax enable                          " syntax highlight on and keep your settings

"===============================================================================
" 2.4 - mappings
"===============================================================================

map <a-t> :tabnew<CR>                  " opens a new table
map <a-n> :bn<CR>
map <a-p> :bp<CR>
nmap <C-s> :wa<CR>                     " save all buffers
nmap ,d :call Reloadconfig()<CR>       " maps reload config

function! Reloadconfig()
	wa
	source $MYVIMRC
endfunction

" Insert current date and time
nnoremap <F5> "=strftime("%Y.%m.%d (%a) %H:%M:%S")<CR>P
inoremap <F5> <C-R>=strftime("%Y.%m.%d (%a) %H:%M:%S")<CR>

"Very useful :)
map <buffer> <a-m> :%s///g<CR>     " remove ^M in current file
map <a-q> :ccl<CR>                " closes quickfix

" CTRL+F1 to toggle the menu bar
nmap <silent> <A-1> :if &guioptions=~'m' \| set guioptions-=m \| else \| set guioptions+=m \| endif<cr><ESC>

" CTRL+F2 to toggle the menu bar
nmap <silent> <A-2> :if &guioptions=~'T' \| set guioptions-=T \| else \| set guioptions+=T \| endif<cr><ESC>

" CTRL+F3 to toggle the right scroll bars
nmap <silent> <A-3> :if &guioptions=~'r' \| set guioptions-=r \| else \| set guioptions+=r \| endif<cr><ESC>

" CTRL+F4 to toggle left the scroll bars
nmap <silent> <A-4> :if &guioptions=~'l' \| set guioptions-=l \| else \| set guioptions+=l \| endif<cr><ESC>

"===============================================================================
" 2.5 - Mapping commands for window changing
"===============================================================================
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

"===============================================================================
" 2.6 - Colorscheme for defined filetypes
"===============================================================================

"autocmd FileType c   colorscheme wombat
"autocmd FileType c++ colorscheme desert

"===============================================================================
" 2.7 - Unmap arrow keys in normal mode
"===============================================================================

map <Left>  <Nop>
map <Right> <Nop>
map <Up>    <Nop>
map <Down>  <Nop>

"===============================================================================
" 3 - Plugins
"===============================================================================
" Here can be found the plugins settings and other relevant informations
" 
"===============================================================================
" 3.1 - Plugins Settings
"===============================================================================

"===============================================================================
" 3.1.1 - Vundle
"===============================================================================
" Configured in the beginning of the file

"===============================================================================
" 3.1.2 - genutils
"         http://www.vim.org/scripts/script.php?script_id=197
"===============================================================================
" genutils General utility functions
"
"===============================================================================
" 3.1.3 - SelectBuf
"         http://www.vim.org/scripts/script.php?script_id=107
"===============================================================================
nmap <silent> <F3> <Plug>SelectBuf
let g:selBufDefaultSortOrder  = "name"
let g:selBufDisableMRUlisting = 0
let g:selBufAlwaysShowDetails = 1


"===============================================================================
" 3.1.4 - vimexplorer
"         http://www.vim.org/scripts/script.php?script_id=1950
"===============================================================================
nnoremap <silent> <F7> :VE ~<CR>
let g:VEConf_treePanelWidth = 40           " Width of tree panel. Default: 30

if has('unix')
	let g:VEConf_externalExplorer = "dolphin"
	let g:VEConf_showHiddenFiles  = 0
	let g:VEConf_usingGnome       = 0
	let g:VEConf_usingKDE         = 1
	let g:VEConf_systemEncoding   = 'utf-8'
elseif has('win32' || 'win64')
	let g:VEConf_externalExplorer = "explorer.exe"
	let g:VEConf_systemEncoding   = 'utf-16'
endif

"===============================================================================
" 3.1.5 - ColorSamplerPack
"         http://www.vim.org/scripts/script.php?script_id=625
"===============================================================================

"===============================================================================
" 3.1.6 - Tagbar
"===============================================================================

nnoremap <silent> <F8> :TagbarToggle<CR>
let g:tagbar_autoclose   = 0
let g:tagbar_autofocus   = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_left        = 0
let g:tagbar_expand      = 0
let g:tagbar_autoshowtag = 1

"===============================================================================
" 3.1.7 - Syntastic
"===============================================================================

let g:syntastic_auto_loc_list = 1
"let g:easytags_updatetime_min

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['c', 'cpp','vim'],
                           \ 'passive_filetypes': [] }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"===============================================================================
" 3.1.8 - vim-colors-solarized
"===============================================================================

" Already configure on SetupGui()

"===============================================================================
" 3.1.9 - Tabular
"===============================================================================

"===============================================================================
" 3.1.10 - ctrlp
"===============================================================================

" TODO: not yet complete

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                          \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']

let g:ctrlp_match_window_bottom = 1
let g:ctrlp_show_hidden         = 1

"===============================================================================
" 3.1.11 - nerdtree
"===============================================================================

let NERDTreeCaseSensitiveSort = 1
let NERDTreeShowHidden        = 1
let NERDTreeShowLineNumbers   = 0

"===============================================================================
" 3.1.12 - nerdtree-tabs
"===============================================================================
"
" TODO: setup nerdtreewidth
"
map <F9>  :NERDTreeTabsToggle<CR>

let g:nerdtree_tabs_open_on_gui_startup     = 0
let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_no_startup_for_diff     = 0

"===============================================================================
" 3.1.13 - proj
"          http://www.vim.org/scripts/script.php?script_id=2719
"          https://github.com/oinksoft/proj.vim
"===============================================================================

" change this variable to customize the project file
let g:ProjFile = "~/.vimproj"

"===============================================================================
" 3.1.14 - supertab
"===============================================================================

let g:SuperTabDefaultCompletionType = "context"

"===============================================================================
" 3.1.15 - numbers
"===============================================================================

nnoremap <A-3> :NumbersToggle<CR>
nnoremap <A-4> :NumbersOnOff<CR>

