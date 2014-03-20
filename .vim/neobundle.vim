
if has('vim_starting')
	set nocompatible               " Be iMproved
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

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
NeoBundle 'Color-Sampler-Pack'
NeoBundle 'https://github.com/tomasr/molokai'
NeoBundle 'https://github.com/tpope/vim-vividchalk.git'

" Programming
NeoBundle 'Tagbar'
"NeoBundle 'Syntastic'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'https://github.com/mhinz/vim-signify'
NeoBundle 'https://github.com/tpope/vim-fugitive'
NeoBundle 'https://github.com/SirVer/ultisnips'
NeoBundle 'https://github.com/oblitum/rainbow'

" not yet classified
NeoBundle 'https://github.com/Shougo/vimshell.vim'
NeoBundle 'https://github.com/WeiChungWu/vim-SystemVerilog'
NeoBundle 'https://github.com/Cognoscan/vim-vhdl'
NeoBundle 'https://github.com/bling/vim-airline'
NeoBundle 'https://github.com/jtratner/vim-flavored-markdown'
NeoBundle 'genutils'
NeoBundle 'SelectBuf'
NeoBundle 'VimExplorer'
NeoBundle 'myusuf3/numbers.vim'
NeoBundle 'https://github.com/jistr/vim-nerdtree-tabs.git'
NeoBundle 'https://github.com/scrooloose/nerdtree.git'
NeoBundle 'https://github.com/itchyny/calendar.vim'
NeoBundle 'https://github.com/Lokaltog/vim-easymotion'
NeoBundle 'https://github.com/Shougo/vinarise.vim'

" Under test
NeoBundle 'https://github.com/junegunn/vim-easy-align'
NeoBundle 'https://github.com/vim-scripts/armasm'
NeoBundle 'https://github.com/jcf/vim-latex'
NeoBundle 'https://github.com/Shougo/unite.vim'
NeoBundle 'https://github.com/jamessan/vim-gnupg'

" To remove

let g:neobundle#types#git#default_protocol = "https"

filetype plugin indent on     " required!
