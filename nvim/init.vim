
if has('unix') || has('mac')
	let g:homedir=$HOME
	let g:nvimdir=g:homedir . '/.config/nvim/'
elseif (has("win32") || has("win64"))
	let g:nvimdir=$LOCALAPPDATA.'\nvim\'
else
	echoerr "unsupported platform"
endif

exec 'source ' . g:nvimdir . 'vim-plug.vim'

"==============
" config
"==============
filetype plugin indent on    " required!

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
