
" Vundle
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'genutils'
Bundle 'SelectBuf'
Bundle 'VimExplorer'
Bundle 'Color-Sampler-Pack'
Bundle 'Tagbar'
Bundle 'Syntastic'
Bundle 'https://github.com/godlygeek/tabular.git'
Bundle 'ctrlp.vim'
Bundle 'myusuf3/numbers.vim'
Bundle 'https://github.com/jistr/vim-nerdtree-tabs.git'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'https://github.com/tpope/vim-vividchalk.git'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Lokaltog/powerline'
Bundle 'https://github.com/jtratner/vim-flavored-markdown'
Bundle 'https://github.com/mhinz/vim-signify'

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:vundle_default_git_proto = 'https'
filetype plugin indent on     " required!

