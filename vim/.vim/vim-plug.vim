
"if has('unix') || has('mac')
	"call plug#begin('~/.config/vim/plugged')
	"let g:vimdir=$HOME . '/.vim/'
"else " has("win32") || has("win64")
	"call plug#begin('C:\Users\rnp\AppData\Local\vim\plugged')
	"let g:vimdir=$HONE . '\.vim\'
"endif

"call plug#begin(g:vimdir . 'plugged')
call plug#begin('~/.vim/plugged')

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

" tag generator
Plug 'ludovicchabant/vim-gutentags'

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

Plug 'https://github.com/mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
"Plug 'benekastah/neomake'

Plug 'https://github.com/w0rp/ale'

Plug 'https://github.com/SirVer/ultisnips'
Plug 'https://github.com/oblitum/rainbow', {
\	'for':
\		[
\			'c',
\			'cpp',
\			'vim',
\			'sh',
\		],
\	}

Plug 'https://github.com/Raimondi/delimitMate', {
\	'for' : [
\			'c',
\			'cpp',
\			'vim',
\			'latex',
\			'python',
\			'sh',
\			'vhdl',
\			'verilog',
\		],
\	}

Plug 'honza/vim-snippets'
Plug 'nathanaelkane/vim-indent-guides', {
\	'for':
\		[   'c',
\			'cpp',
\			'vim',
\			'latex',
\			'python',
\			'sh',
\			'vhdl',
\			'verilog',
\		],
\	}

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

Plug 'https://github.com/WeiChungWu/vim-SystemVerilog', {
\	'for': 'verilog',
\	}

" gnupg integration
Plug 'jamessan/vim-gnupg'

" arm assembly highlighting
Plug 'https://github.com/vim-scripts/armasm'

"================
"6 - Miscelaneous
"================

" calculator
Plug 'sk1418/HowMuch'

" custom statusline
Plug 'https://github.com/bling/vim-airline'

" custom statusline theme
Plug 'https://github.com/vim-airline/vim-airline-themes'

" full tab file browser
Plug 'mbbill/VimExplorer', { 'on' : [ 'F7','VE' ] }

Plug 'myusuf3/numbers.vim'

" side pane file browser
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs', { 'on' : [ 'F9', 'NERDTreeTabsToggle' ] }

Plug 'https://github.com/itchyny/calendar.vim', { 'on': 'Calendar' }

Plug 'https://github.com/Lokaltog/vim-easymotion'

" hexadecimal viewer
Plug 'https://github.com/Shougo/vinarise.vim'

" startup screen configuration
Plug 'https://github.com/mhinz/vim-startify.git'

" 'in-buffer' file browser
Plug 'https://github.com/dhruvasagar/vim-vinegar'

Plug 'tpope/vim-git', {
\	'for': [
\			'gitcommit',
\			'gitconfig',
\			'gitsendemail',
\		]
\	}

Plug 'mbbill/undotree', { 'on': ['F6', 'UndotreeToggle'] }

Plug 'eugen0329/vim-esearch'

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
"NeoBundle 'https://github.com/chrisbra/csv.vim'
"Issue 18:
"NeoBundle 'https://github.com/jiangmiao/auto-pairs'
"Issue 21:
"NeoBundle 'https://github.com/Rykka/colorv.vim
"NeoBundle 'https://github.com/Rykka/galaxy.vim

"NeoBundle 'https://github.com/terryma/vim-multiple-cursors (multiple cursors)

"NeoBundle 'https://github.com/ujihisa/vim-rengbang'
"NeoBundle 'https://github.com/Shougo/vimfiler.vim'
" fugitive uses augroup fugitive.
" NeoBundle 'tpope/vim-fugitive', { 'augroup' : 'fugitive'}


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


