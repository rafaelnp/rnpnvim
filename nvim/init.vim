
if has('unix') || has('mac')
	"call plug#begin('~/.config/nvim/plugged') 
	let g:nvimdir=$HOME . '/.config/nvim/'
else " has("win32") || has("win64")
	"call plug#begin('C:\Users\rnp\AppData\Local\nvim\plugged')
	let g:nvimdir=$LOCALAPPDATA.'\nvim\'
endif

call plug#begin(g:nvimdir . 'plugged')

"===============
"1 - Colorscheme
"===============

Plug 'vim-scripts/Colour-Sampler-Pack'
Plug 'https://github.com/tomasr/molokai'
Plug 'https://github.com/tpope/vim-vividchalk.git'
Plug 'https://github.com/nielsmadan/harlequin'
Plug 'https://github.com/sjl/badwolf'

"================
"2 -  Programming
"================

Plug 'majutsushi/tagbar', {
\	'for' : [
\			'c',
\			'cpp',
\			'vim',
\			'latex',
\			'make',
\			'python',
\			'sh',
\			'vhdl',
\			'verilog',
\		],
\	}

"Plug 'Valloric/YouCompleteMe', {
"\	'on' :
"\		[
"\			'c',
"\			'cpp',
"\			'lua',
"\			'python',
"\			'sh',
"\			'tex',
"\			'verilog',
"\			'vhdl',
"\			'vim',
"\			'zsh',
"\		],
"\	},
"\}

Plug 'https://github.com/mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

"Plug 'https://github.com/SirVer/ultisnips'
"Plug 'https://github.com/oblitum/rainbow', {
"\	'lazy' : 1,
"\	'autoload' : {
"\		'filetypes' : [
"\			'c',
"\			'cpp',
"\			'vim',
"\			'sh',
"\		],
"\	},
"\}
"Plug 'https://github.com/Raimondi/delimitMate', {
"\	'lazy' : 1,
"\	'autoload' : {
"\		'filetypes' : [
"\			'c',
"\			'cpp',
"\			'vim',
"\			'latex',
"\			'python',
"\			'sh',
"\			'vhdl',
"\			'verilog',
"\		],
"\	},
"\}
"Plug 'honza/vim-snippets'
"Plug 'nathanaelkane/vim-indent-guides', {
"\	'lazy' : 1,
"\	'autoload' : {
"\		'filetypes' : [
"\			'c',
"\			'cpp',
"\			'vim',
"\			'latex',
"\			'python',
"\			'sh',
"\			'vhdl',
"\			'verilog',
"\		],
"\	},
"\}

"Plug 'editorconfig/editorconfig-vim'

Plug 'benekastah/neomake'

"=========
"4 - Unite
"=========

Plug 'Shougo/unite.vim'
Plug 'ujihisa/unite-colorscheme'
Plug 'ujihisa/unite-outline'
Plug 'Shougo/neomru.vim'

"================
"5 - Filetypes
"================

"Plug 'https://github.com/WeiChungWu/vim-SystemVerilog', {
"\	'lazy' : 1,
"\	'autoload' : {
"\		'filetypes' : "verilog",
"\	},
"\}
"Plug 'https://github.com/Cognoscan/vim-vhdl', {
"\	'lazy' : 1,
"\	'autoload' : {
"\		'filetypes' : "vhdl",
"\	},
"\}
"Plug 'kergoth/aftersyntaxc.vim', {
"\	'lazy' : 1,
"\	'autoload' : {
"\		'filetypes' : "c",
"\	},
"\}
"Plug 'https://github.com/jtratner/vim-flavored-markdown', {
"\	'lazy' : 1,
"\   'autoload' : {
"\		'filetypes' : "markdown",
"\	},
"\}
"Plug 'https://github.com/jcf/vim-latex', {
"\	'lazy' : 1,
"\	'autoload' : {
"\		'filetypes' : [
"\			'tex',
"\			'latex',
"\		],
"\	},
"\}

Plug 'jamessan/vim-gnupg'
Plug 'https://github.com/vim-scripts/armasm'

"================
"6 - Miscelaneous
"================

Plug 'sk1418/HowMuch'
Plug 'https://github.com/bling/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'mbbill/VimExplorer', { 'on' : [ 'F7','VE' ] }

Plug 'myusuf3/numbers.vim'

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs', { 'on' : [ 'F9', 'NERDTreeTabsToggle' ] }

Plug 'https://github.com/itchyny/calendar.vim', { 'on': 'Calendar' }

Plug 'https://github.com/Lokaltog/vim-easymotion'
Plug 'https://github.com/Shougo/vinarise.vim'
Plug 'https://github.com/mhinz/vim-startify.git'
Plug 'https://github.com/dhruvasagar/vim-vinegar',

"Plug 'tpope/vim-git', {
"\	'lazy' : 1,
"\	'autoload' : {
"\		'filetypes' : [
"\			'gitcommit',
"\			'gitconfig',
"\			'gitsendemail',
"\		]
"\	}
"\}

Plug 'mbbill/undotree', { 'on': ['F6', 'UndotreeToggle'] }

"=========================
"7 - Vim built-in plugins
"=========================

" BUG: causing problems at start, loading an empty buffer instead of the given
"      filename
"runtime! ftplugin/man.vim

"===========================
"8 - Under test/to be tested
"===========================

"Plug 'https://github.com/junegunn/vim-easy-align'
"Plug 'https://github.com/dhruvasagar/vim-table-mode/'
"Issue 29:
"Plug 'https://github.com/chrisbra/csv.vim'
"Issue 18:
"Plug 'https://github.com/jiangmiao/auto-pairs'
"Issue 21:
"Plug 'https://github.com/Rykka/colorv.vim
"Plug 'https://github.com/Rykka/galaxy.vim
"Plug 'https://github.com/benmills/vimux
"Plug 'https://github.com/terryma/vim-multiple-cursors (multiple cursors)

"Plug 'https://github.com/ujihisa/vim-rengbang'
"Plug 'https://github.com/Shougo/vimfiler.vim'
" fugitive uses augroup fugitive.
" Plug 'tpope/vim-fugitive', { 'augroup' : 'fugitive'}


"=========================
"9 - Plug post config
"=========================
"

" Add plugins to &runtimepath
call plug#end()

"==============
" config
"==============
filetype plugin indent on    " required!

exec 'source ' . g:nvimdir . 'config.vim'
"source C:\Users\rnp\AppData\Local\nvim\config.vim
"source ~/.config/nvim/config.vim

"==============
" Mappings
"==============

exec 'source ' . g:nvimdir . 'mappings.vim'
"source C:\Users\rnp\AppData\Local\nvim\mappings.vim
"source ~/.config/nvim/mappings.vim

"==============
" Plugins
"==============
exec 'source ' . g:nvimdir . 'plugins.vim'
"source C:\Users\rnp\AppData\Local\nvim\plugins.vim
"source ~/.config/nvim/plugins.vim

