
if has('unix') || has('mac')
	let g:nvimdir=$HOME . '/.config/nvim/'
else " has("win32") || has("win64")
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

"==============
" Mappings
"==============

exec 'source ' . g:nvimdir . 'mappings.vim'

"==============
" Plugins
"==============
exec 'source ' . g:nvimdir . 'plugins.vim'

exec 'source ' . g:nvimdir . 'abbrev.vim'
