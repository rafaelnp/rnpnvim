
if has('unix') || has('mac')
	let g:homedir=$HOME
	let g:nvimdir=g:homedir . '/.config/nvim/'
	let g:nvimcolordir=g:homedir . '/.config/nvim/color/'
elseif (has("win32") || has("win64"))
	let g:nvimdir=$LOCALAPPDATA.'\nvim\'
	let g:nvimcolordir=$LOCALAPPDATA.'\nvim\color\'
else
	echoerr "unsupported platform"
endif

exec 'source ' . g:nvimdir . 'vim-plug.vim'

"==============
" config
"==============
filetype plugin indent on    " required!

exec 'source ' . g:nvimdir . 'config.vim'

exec 'source ' . g:nvimdir . 'color/papercolorlight.vim'

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
