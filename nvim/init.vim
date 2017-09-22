
if has('unix') || has('mac')
	"call plug#begin('~/.config/nvim/plugged')
	let g:nvimdir=$HOME . '/.config/nvim/'
else " has("win32") || has("win64")
	"call plug#begin('C:\Users\rnp\AppData\Local\nvim\plugged')
	let g:nvimdir=$LOCALAPPDATA.'\nvim\'
endif

exec 'source ' . g:nvimdir . 'vim-plug.vim'

"==============
" config
"==============
filetype plugin indent on    " required!

exec 'source ' . g:nvimdir . 'ginit.vim'

exec 'source ' . g:nvimdir . 'config.vim'

exec 'source ' . g:nvimdir . 'functions.vim'
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

