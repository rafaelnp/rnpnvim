"===========================================
" vim-startify
" https://github.com/mhinz/vim-startify
"===========================================

try
	" TODO: review plugin config
	let g:startify_files_number = 10

	let g:startify_session_dir = g:nvimdir . 'session'

	let g:startify_fortune_use_unicode = 1

	let g:startify_session_persistence = 1

	let g:startify_enable_special = 0

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

	let g:startify_lists = [
			\ {'type': 'sessions' , 'header': ['  Sessions'] },
			\ {'type': 'files'    , 'header': ['  Files'] },
			\ {'type': 'bookmarks', 'header': ['  Bookmarks'] },
			\ {'type': 'dir'      , 'header': ['  MRU'. getcwd()] },
			\ { 'type': 'commands',  'header': ['   Commands']       },
			\ ]


	let g:startify_bookmarks = [
				\g:nvimdir . 'abbrev.vim',
				\g:nvimdir . 'coc-settings.json',
				\g:nvimdir . 'config.vim',
				\g:nvimdir . 'functions.vim',
				\g:nvimdir . 'ginit.vim',
				\g:nvimdir . 'init.vim',
				\g:nvimdir . 'mappings.vim',
				\g:nvimdir . 'minimal.vim',
				\g:nvimdir . 'plugins.vim',
				\g:nvimdir . 'vim-plug.vim',
				\g:nvimdir . 'plugin-config'
				\]

	" ascii text: http://patorjk.com/software/taag/
	"let g:startify_custom_header = [
	"			\'      _   _                 _            ',
	"			\'     | \ | | ___  _____   _(_)_ __ ___   ',
	"			\'     |  \| |/ _ \/ _ \ \ / / | ` _ ` _ \ ',
	"			\'     | |\  |  __/ (_) \ V /| | | | | | | ',
	"			\'     |_| \_|\___|\___/ \_/ |_|_| |_| |_| ',
	"			\'                                         ',
	"			\ '',
	"			\ ]

	let g:startify_custom_header = [
	\ '',
	\ '    ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
	\ '    ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
	\ '    ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
	\ '    ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
	\ '    ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
	\ '    ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
	\ '',
	\]

	let g:startify_custom_footer = [
		\ '',
		\'   “It is not that I am so smart ,it is just that I stay with problems longer.”',
		\ '   Albert Einstein',
		\ '',
		\ ]

catch
	echo 'error: either is vim-startify not installed, or there is a configuration error.'
	echo 'check its configuration or add it to vim-plug plugin list and run :PlugInstall'
endtry
