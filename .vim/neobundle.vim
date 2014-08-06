
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
\		],
\	},
\}
"NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'https://github.com/mhinz/vim-signify'
"NeoBundle 'https://github.com/tpope/vim-fugitive'
"NeoBundle 'https://github.com/SirVer/ultisnips'
"NeoBundle 'https://github.com/oblitum/rainbow'
"NeoBundle 'honza/vim-snippets'
"NeoBundle 'https://github.com/WeiChungWu/vim-SystemVerilog'
"NeoBundle 'https://github.com/Cognoscan/vim-vhdl'

" not yet classified
NeoBundle 'https://github.com/bling/vim-airline'
"NeoBundle 'https://github.com/jtratner/vim-flavored-markdown'
NeoBundle 'genutils'    " Needed by SelectBuf
NeoBundle 'SelectBuf'
"NeoBundle 'VimExplorer'

NeoBundle 'myusuf3/numbers.vim'
"NeoBundle 'https://github.com/jistr/vim-nerdtree-tabs.git'
NeoBundle 'https://github.com/scrooloose/nerdtree.git'
"NeoBundle 'https://github.com/itchyny/calendar.vim'
NeoBundle 'https://github.com/Lokaltog/vim-easymotion'
NeoBundle 'https://github.com/Shougo/vinarise.vim'
NeoBundle 'https://github.com/mhinz/vim-startify.git'

" Under test
"NeoBundle 'https://github.com/junegunn/vim-easy-align'
"NeoBundle 'https://github.com/vim-scripts/armasm'
"NeoBundle 'https://github.com/jcf/vim-latex'
NeoBundle "Shougo/unite.vim", {
\	'lazy' : 1,
\   'autoload' : {
\       'commands' : [ "Unite" ]
\   }
\}
"NeoBundle 'https://github.com/jamessan/vim-gnupg'
NeoBundle 'https://github.com/dhruvasagar/vim-vinegar', {
\	'lazy' : 1,
\   'autoload' : {
\		'mappings' : '-'
\	}
\}


" To remove

let g:neobundle#types#git#default_protocol = "https"

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

call neobundle#end()

filetype plugin indent on     " required!

