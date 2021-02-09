"===========================================
" vimexplorer
" https://github.com/mbbill/VimExplorer
"===========================================

try
	" TODO: review plugin config
	nnoremap <silent> <F7> :VE ~<CR>
	let g:VEConf_treePanelWidth = 40
	if has('unix')
		let g:VEConf_externalExplorer = "dolphin"
		let g:VEConf_showHiddenFiles  = 0
		let g:VEConf_usingGnome       = 0
		let g:VEConf_usingKDE         = 1
		let g:VEConf_systemEncoding   = 'utf-8'
	elseif has('win32' || 'win64')
		let g:VEConf_externalExplorer = "explorer.exe"
		let g:VEConf_systemEncoding   = 'utf-16'
	endif

catch
	echo ' is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry

