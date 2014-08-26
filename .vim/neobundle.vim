
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


" Colorscheme
NeoBundleLazy 'Color-Sampler-Pack'
NeoBundleLazy 'https://github.com/tomasr/molokai'
NeoBundle     'https://github.com/tpope/vim-vividchalk.git'

" Programming
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

" not yet classified
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
"NeoBundle 'VimExplorer'
NeoBundle 'myusuf3/numbers.vim'
"NeoBundle 'https://github.com/jistr/vim-nerdtree-tabs.git'
NeoBundle 'https://github.com/scrooloose/nerdtree.git'
"NeoBundle 'https://github.com/itchyny/calendar.vim'
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
NeoBundle "Shougo/unite.vim", {
\	'lazy' : 1,
\   'autoload' : {
\       'commands' : [ "Unite" ]
\   }
\}
NeoBundle 'https://github.com/dhruvasagar/vim-vinegar', {
\	'lazy' : 1,
\   'autoload' : {
\		'mappings' : '-'
\	}
\}

" Under test
"NeoBundle 'https://github.com/junegunn/vim-easy-align'
"NeoBundle 'https://github.com/vim-scripts/armasm'
"NeoBundle 'https://github.com/jamessan/vim-gnupg'
"NeoBundle 'https://github.com/dhruvasagar/vim-table-mode/'

let g:neobundle#types#git#default_protocol = "https"

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

call neobundle#end()

filetype plugin indent on     " required!

