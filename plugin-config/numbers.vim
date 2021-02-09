"============================================
" numbers
" https://github.com/myusuf3/numbers.vim
"============================================

try
	let g:numbers_exclude = ['startify', 'gundo', 'undo']
catch
	echo 'numbers is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
