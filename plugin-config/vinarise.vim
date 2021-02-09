"============================================
" Vinarise
" https://github.com/Shougo/vinarise.vim
"============================================

try
	" TODO: review plugin config
	let g:vinarise_enable_auto_detect = 1
	let g:vinarise_detect_large_file_size = 1000000
	cabbrev vimhex  Vinarise -split -encoding=utf-8<CR>
	nnoremap <leader>vv  :Vinarise -split -encoding=utf-8<CR>
catch
	echo 'vinarise is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
