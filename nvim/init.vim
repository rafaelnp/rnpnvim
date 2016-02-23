call plug#begin('~/.config/nvim/plugged')

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

"Plug 'Tagbar', {
"\	'lazy' : 1,
"\	'autoload' : {
"\		'filetypes' : [
"\			'c',
"\			'cpp',
"\			'vim',
"\			'latex',
"\			'make',
"\			'python',
"\			'sh',
"\			'vhdl',
"\			'verilog',
"\		],
"\	},
"\}
"Plug 'Valloric/YouCompleteMe', {
"\	'lazy' : 1,
"\	'autoload' : {
"\		'filetypes' : [
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

Plug 'editorconfig/editorconfig-vim'

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
"Plug 'VimExplorer', {
"\	'lazy' : 1,
"\	'autoload' : {
"\		'mappings' : 'F7',
"\		'commands' : 'VE',
"\	},

Plug 'myusuf3/numbers.vim'

 " mapping does not work when set to 1
"Plug 'jistr/vim-nerdtree-tabs', {
"\	'depends': 'https://github.com/scrooloose/nerdtree.git',
"\	'lazy' : 0,
"\	'autoload' : {
"\		'mappings' : 'F9',
"\		'commands' : 'NERDTreeTabsToggle',
"\	},
"\}
Plug 'https://github.com/itchyny/calendar.vim', { 'on': 'Calendar' }

Plug 'https://github.com/Lokaltog/vim-easymotion'
Plug 'https://github.com/Shougo/vinarise.vim'
Plug 'https://github.com/mhinz/vim-startify.git'
Plug 'https://github.com/dhruvasagar/vim-vinegar', { 'on': '<Plug>-' }

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

runtime! ftplugin/man.vim

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

source ~/.config/nvim/config.vim

"==============
" Mappings
"==============

source ~/.config/nvim/mappings.vim

"==============
" Plugins
"==============

source ~/.config/nvim/plugins.vim

