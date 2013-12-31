
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


" NeoBundle 'gmarik/vundle'
NeoBundle 'genutils'
NeoBundle 'SelectBuf'
NeoBundle 'VimExplorer'
NeoBundle 'Color-Sampler-Pack'
NeoBundle 'Tagbar'
NeoBundle 'Syntastic'
NeoBundle 'https://github.com/godlygeek/tabular.git'
NeoBundle 'ctrlp.vim'
NeoBundle 'myusuf3/numbers.vim'
NeoBundle 'https://github.com/jistr/vim-nerdtree-tabs.git'
NeoBundle 'https://github.com/scrooloose/nerdtree.git'
NeoBundle 'https://github.com/tpope/vim-vividchalk.git'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'https://github.com/jtratner/vim-flavored-markdown'
NeoBundle 'https://github.com/mhinz/vim-signify'
NeoBundle 'https://github.com/nathanaelkane/vim-indent-guides'
NeoBundle 'https://github.com/bling/vim-airline'
NeoBundle 'https://github.com/tpope/vim-fugitive'
NeoBundle 'https://github.com/Shougo/vimshell.vim'
NeoBundle 'https://github.com/SirVer/ultisnips'

let g:neobundle#types#git#default_protocol = "https"
filetype plugin indent on     " required!
