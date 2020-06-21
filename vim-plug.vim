if has('unix') || has('mac')
	" auto-install vim-plug
	if empty(glob('~/.config/nvim/autoload/plug.vim'))
		silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
			\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		autocmd VimEnter * PlugInstall | source $MYVIMRC
	endif
elseif (has("win32") || has("win64"))
	" auto-install vim-plug
	if empty(glob('~\.config\nvim\autoload\plug.vim'))
		message "Install it manually!"
	endif
else
	echoerr "unsupported platform"
endif

call plug#begin(g:nvimdir . 'plugged')

"===============
"1 - Colorscheme
"===============

Plug 'tpope/vim-vividchalk'
Plug 'sjl/badwolf'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'rakr/vim-one'
Plug 'kaicataldo/material.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'KeitaNakamura/neodark.vim'
Plug 'joshdick/onedark.vim'

"================
"2 -  Programming
"================

" conquer of completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'davidhalter/jedi-vim'

Plug 'editorconfig/editorconfig-vim'

" tag generator
"Plug 'ludovicchabant/vim-gutentags', {
"\	'for' : [
"\			'c',
"\			'cpp',
"\			'vim',
"\			'latex',
"\			'make',
"\			'python',
"\			'sh',
"\			'vhdl',
"\			'verilog',
"\			'lua',
"\		],
"\	}

"View and search LSP symbols, tags in Vim/NeoVim.
Plug 'liuchengxu/vista.vim'

"Plug 'majutsushi/tagbar', {
"\	'for' : [
"\			'c',
"\			'cpp',
"\			'vim',
"\			'latex',
"\			'make',
"\			'python',
"\			'sh',
"\			'vhdl',
"\			'verilog',
"\			'lua',
"\		],
"\	}


Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

Plug 'honza/vim-snippets'

" better syntax highlight
Plug 'sheerun/vim-polyglot'

" find and replace
 Plug 'brooth/far.vim'

"==========
"4 - Denite
"==========

Plug 'Shougo/denite.nvim'
Plug 'ujihisa/unite-colorscheme'
Plug 'ujihisa/unite-outline'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neoyank.vim'

"================
"5 - Filetypes
"================

" gnupg integration
Plug 'jamessan/vim-gnupg'

" arm assembly highlighting
Plug 'vim-scripts/armasm'

" markdown syntax highlight and extras
Plug 'SidOfc/mkdx'

" xilinx constraint files syntax
Plug 'amal-khailtash/vim-xdc-syntax'
"================
"6 - Miscelaneous
"================

" floating terminal integration
Plug 'voldikss/vim-floaterm'

" Vim plugin that shows keybindings in popup
Plug 'liuchengxu/vim-which-key'

""Insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" calculator
Plug 'sk1418/HowMuch'

" custom statusline
Plug 'bling/vim-airline'

" custom statusline theme
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-airline-colornum'
" airline extension to show clock
Plug 'enricobacis/vim-airline-clock'

" full tab file browser
Plug 'mbbill/VimExplorer', { 'on' : [ 'F7','VE' ] }


" side pane file browser
Plug 'scrooloose/nerdtree'

" Does not work with loading on demand
"Plug 'jistr/vim-nerdtree-tabs', { 'on' : [ 'F9', 'NERDTreeTabsToggle' ] }
Plug 'jistr/vim-nerdtree-tabs'

Plug 'itchyny/calendar.vim', { 'on': 'Calendar' }

Plug 'Lokaltog/vim-easymotion'

" hexadecimal viewer
Plug 'Shougo/vinarise.vim'

" startup screen configuration
Plug 'https://github.com/mhinz/vim-startify.git'

" 'in-buffer' file browser
Plug 'jeetsukumaran/vim-filebeagle'

Plug 'mbbill/undotree', { 'on': ['F6', 'UndotreeToggle'] }

Plug 'eugen0329/vim-esearch'

" Underline the word under cursor
Plug 'itchyny/vim-cursorword'

Plug 'yuttie/comfortable-motion.vim'

" Devicons have nerdfonts as dependency https://www.nerdfonts.com/
Plug 'ryanoasis/vim-devicons'

" markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'godlygeek/tabular'

"=========================
"7 - Vim built-in plugins
"=========================

" BUG: causing problems at start, loading an empty buffer instead of the given
"      filename
"runtime! ftplugin/man.vim

"===========================
"8 - Under test/to be tested
"===========================

call plug#end()

