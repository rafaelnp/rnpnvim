
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

" asynchronous linter
Plug 'https://github.com/w0rp/ale'

"=========
"4 - Unite
"=========

Plug 'Shougo/denite.nvim'
Plug 'ujihisa/unite-colorscheme'
Plug 'ujihisa/unite-outline'
Plug 'Shougo/neomru.vim'

"================
"5 - Filetypes
"================

" gnupg integration
Plug 'jamessan/vim-gnupg'

" arm assembly highlighting
Plug 'https://github.com/vim-scripts/armasm'

" Github Flavoured Markdown
https://github.com/rhysd/vim-gfm-syntax

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
Plug 'https://github.com/dhruvasagar/vim-vinegar',

Plug 'mbbill/undotree', { 'on': ['F6', 'UndotreeToggle'] }

Plug 'eugen0329/vim-esearch'

" Underline the word under cursor
Plug 'https://github.com/itchyny/vim-cursorword'

"=========================
"7 - Vim built-in plugins
"=========================

" BUG: causing problems at start, loading an empty buffer instead of the given
"      filename
"runtime! ftplugin/man.vim

"===========================
"8 - Under test/to be tested
"===========================

"=========================
"9 - Plug post config
"=========================
"

" Add plugins to &runtimepath
call plug#end()

