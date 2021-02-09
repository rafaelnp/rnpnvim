"========================================
" undotree
" https://github.com/mbbill/undotree
"========================================

try
	nnoremap <silent> <F6> :UndotreeToggle<CR>
	let g:undotree_WindowLayout = 2
	let g:undotree_SetFocusWhenToggle = 1
	let g:undotree_SplitWidth = 40

catch
	echo ' is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
