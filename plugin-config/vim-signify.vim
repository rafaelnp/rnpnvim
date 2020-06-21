"==========================================
" vim-signify
" https://github.com/mhinz/vim-signify
"==========================================

try
	" TODO: review plugin config
	let g:signify_vcs_list = [ 'git', 'svn', 'hg' ]
	let g:signify_update_on_bufenter = 0
	let g:signify_sign_change = '~'
	let g:signify_sign_delete_first_line = '*'
	let g:signify_update_on_focusgained = 0

	nnoremap <leader>gj <plug>(signify-next-hunk)
	nnoremap <leader>gk <plug>(signify-prev-hunk)

	highlight SignifySignAdd    cterm=bold ctermfg=green
	highlight SignifySignDelete cterm=bold ctermfg=red
	highlight SignifySignChange cterm=bold ctermfg=blue

	highlight SignifySignAdd    gui=bold  guifg=green
	highlight SignifySignDelete gui=bold  guifg=red
	highlight SignifySignChange gui=bold  guifg=darkorange
catch
	echo 'vim-signify is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
