"=================================================
" 19 - vim-easymotion
"      https://gitthub.com/Lokaltog/vim-easymotion
"=================================================

try
	" TODO: review plugin config
	let g:EasyMotion_smartcase = 1

	map s <Plug>(easymotion-bd-w)

	" JK motions: Line motions
	nmap <Leader>j <Plug>(easymotion-j)
	nmap <Leader>k <Plug>(easymotion-k)
catch
	echo 'vim-easymotion is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry

