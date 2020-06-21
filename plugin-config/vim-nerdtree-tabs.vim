"====================================================
" vim-nerdtree-tabs
" https://github.com/jistr/vim-nerdtree-tabs.git
"====================================================

try
	" TODO: review plugin config
	nnoremap <silent> <F9> :NERDTreeTabsToggle<CR>
	let g:nerdtree_tabs_open_on_gui_startup     = 0
	let g:nerdtree_tabs_open_on_console_startup = 0
	let g:nerdtree_tabs_no_startup_for_diff     = 0
catch
	echo 'vim-nerdtree-tabs is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
