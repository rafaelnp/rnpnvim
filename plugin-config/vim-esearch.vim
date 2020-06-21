"=====================================================
" Vim ESearch
" https://github.com/eugen0329/vim-esearch
"=====================================================

try
	" TODO: review plugin config
	let g:esearch = {
		\ 'adapter':    'ag',
		\ 'backend':    'nvim',
		\ 'out':        'qflist',
		\ 'batch_size': 1000,
		\ 'use':        ['visual', 'hlsearch', 'last'],
		\}
catch
	echo 'vim-easearch is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
