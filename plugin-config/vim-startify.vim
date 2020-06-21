"===========================================
" vim-startify
" https://github.com/mhinz/vim-startify
"===========================================

try
	" TODO: review plugin config
	let g:startify_files_number = 5

	highlight StartifyFooter  ctermfg=green
	highlight StartifyFooter  guifg=green
	highlight StartifyHeader  ctermfg=red
	highlight StartifyHeader  guifg=red

	let g:startify_skiplist = [
			\ 'COMMIT_EDITMSG',
			\ $VIMRUNTIME .'/doc',
			\ 'bundle/.*/doc',
			\ '\.DS_Store'
			\ ]

	let g:startify_bookmarks = [
				\g:nvimdir . 'abbrev.vim',
				\g:nvimdir . 'augroup.vim',
				\g:nvimdir . 'config.vim',
				\g:nvimdir . 'denite.vim',
				\g:nvimdir . 'functions.vim',
				\g:nvimdir . 'init.vim',
				\g:nvimdir . 'mappings.vim',
				\g:nvimdir . 'plugins.vim',
				\g:nvimdir . 'vim-plug.vim'
				\]

	" ascii text: http://patorjk.com/software/taag/
	let g:startify_custom_header = [
				\'      _   _                 _            ',
				\'     | \ | | ___  _____   _(_)_ __ ___   ',
				\'     |  \| |/ _ \/ _ \ \ / / | ` _ ` _ \ ',
				\'     | |\  |  __/ (_) \ V /| | | | | | | ',
				\'     |_| \_|\___|\___/ \_/ |_|_| |_| |_| ',
				\'                                         ',
				\ '',
				\ ]

	let g:startify_custom_footer = [
		\ '',
		\'   “It is not that I am so smart ,it is just that I stay with problems longer.”',
		\ '   Albert Einstein',
		\ '',
		\ ]

	"if has('gui_running')
	"	call SetWindowSize()
	"endif
catch
	echo 'vim-startify is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
