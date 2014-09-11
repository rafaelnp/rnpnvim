
"1 - Neobunble config
"====================

if has('vim_starting')
	set nocompatible               " Be iMproved

	"Required
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
NeoBundle 'Shougo/vimproc', {
 \ 'build' : {
 \     'windows' : 'make -f make_mingw32.mak',
 \     'cygwin' : 'make -f make_cygwin.mak',
 \     'mac' : 'make -f make_mac.mak',
 \     'unix' : 'make -f make_unix.mak',
 \    },
 \ }

"2 - Colorscheme
"===============

NeoBundle 'vim-scripts/Colour-Sampler-Pack'
NeoBundle 'https://github.com/tomasr/molokai'
NeoBundle 'https://github.com/tpope/vim-vividchalk.git'

"3 -  Programming
NeoBundle 'Tagbar', {
\	'lazy' : 1,
\   'autoload' : {
\		'filetypes' : [
\			'c',
\			'cpp',
\			'vim',
\			'latex',
\			'python',
\			'sh',
\			'vhdl',
\			'verilog',
\		],
\	},
\}
NeoBundle 'Valloric/YouCompleteMe', {
\	'lazy' : 1,
\   'autoload' : {
\		'filetypes' : [
\			'c',
\			'cpp',
\			'lua',
\			'python',
\			'sh',
\			'tex',
\			'verilog',
\			'vhdl',
\			'vim',
\			'zsh',
\		],
\	},
\}
NeoBundle 'https://github.com/mhinz/vim-signify'
"NeoBundle 'https://github.com/tpope/vim-fugitive'
"NeoBundle 'https://github.com/SirVer/ultisnips'
NeoBundle 'https://github.com/oblitum/rainbow', {
\	'lazy' : 1,
\   'autoload' : {
\		'filetypes' : [
\			'c',
\			'cpp',
\			'vim',
\			'sh',
\		],
\	},
\}
"NeoBundle 'honza/vim-snippets'
NeoBundle 'https://github.com/WeiChungWu/vim-SystemVerilog', {
\	'lazy' : 1,
\   'autoload' : {
\		'filetypes' : "verilog",
\	},
\}
NeoBundle 'https://github.com/Cognoscan/vim-vhdl', {
\	'lazy' : 1,
\   'autoload' : {
\		'filetypes' : "vhdl",
\	},
\}
NeoBundle 'kergoth/aftersyntaxc.vim', {
\	'lazy' : 1,
\	'autoload' : {
\		'filetypes' : "c",
\	},
\}

"4 - Unite
"=========

NeoBundle "Shougo/unite.vim", {
\	'lazy' : 1,
\   'autoload' : {
\       'commands' : [ "Unite" ]
\   }
\}
NeoBundle 'ujihisa/unite-colorscheme', {
\	'lazy' : 1,
\   'autoload' : {
\       'commands' : [ "Unite" ]
\   }
\}
" quickfix for unite
" NeoBundle 'sgur/unite-qf', {

"5 - Miscelaneous
"================

NeoBundle 'https://github.com/bling/vim-airline'
NeoBundle 'https://github.com/jtratner/vim-flavored-markdown', {
\	'lazy' : 1,
\   'autoload' : {
\		'filetypes' : "markdown",
\	},
\}
NeoBundle 'SelectBuf', {
\	'depends' : 'genutils'
\}
NeoBundle 'VimExplorer', {
\	'lazy' : 1,
\   'autoload' : {
\		'mappings' : 'F7',
\		'commands' : 'VE',
\	},
\}
NeoBundle 'myusuf3/numbers.vim'
 " mapping does not work when set to 1
NeoBundle 'jistr/vim-nerdtree-tabs', {
\	'depends': 'https://github.com/scrooloose/nerdtree.git',
\	'lazy' : 0,
\   'autoload' : {
\		'mappings' : 'F9',
\		'commands' : 'NERDTreeTabsToggle',
\	},
\}
NeoBundle 'https://github.com/itchyny/calendar.vim', {
\	'lazy' : 1,
\   'autoload' : {
\       'commands' : 'Calendar',
\   }
\}
NeoBundle 'https://github.com/Lokaltog/vim-easymotion'
NeoBundle 'https://github.com/Shougo/vinarise.vim'
NeoBundle 'https://github.com/mhinz/vim-startify.git'
NeoBundle 'https://github.com/jcf/vim-latex', {
\	'lazy' : 1,
\   'autoload' : {
\		'filetypes' : [
\			'tex',
\			'latex',
\		]
\	}
\}
NeoBundle 'https://github.com/dhruvasagar/vim-vinegar', {
\	'lazy' : 1,
\   'autoload' : {
\		'mappings' : '-'
\	}
\}
NeoBundle 'tpope/vim-git', {
\	'lazy' : 1,
\   'autoload' : {
\		'filetypes' : [
\			'gitcommit',
\			'gitconfig',
\			'gitsendemail',
\		]
\	}
\}

"5 - Under test/to be tested
"NeoBundle 'https://github.com/junegunn/vim-easy-align'
"NeoBundle 'https://github.com/vim-scripts/armasm'
"NeoBundle 'https://github.com/jamessan/vim-gnupg'
"NeoBundle 'https://github.com/dhruvasagar/vim-table-mode/'
"Issue 29:
"NeoBundle 'https://github.com/chrisbra/csv.vim'
"Issue 22:
"NeoBundle 'https://github.com/sk1418/HowMuch'
"Issue 18:
"NeoBundle 'https://github.com/jiangmiao/auto-pairs'
"NeoBundle 'https://github.com/Raimondi/delimitMate'
"Issue 21:
"NeoBundle 'https://github.com/Rykka/colorv.vim
"NeoBundle 'https://github.com/Rykka/galaxy.vim
"NeoBundle 'https://github.com/mbbill/undotree
"NeoBundle 'https://github.com/benmills/vimux
"NeoBundle 'https://github.com/terryma/vim-multiple-cursors (multiple cursors)

"NeoBundle 'https://github.com/ujihisa/vim-rengbang'
"NeoBundle 'https://github.com/Shougo/vimfiler.vim'
"

"6 - NeoBundle post config
let g:neobundle#types#git#default_protocol = "https"

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

call neobundle#end()

filetype plugin indent on     " required!

