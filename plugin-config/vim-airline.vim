"==========================================
" vim-airline
" https://github.com/bling/vim-airline
"==========================================

try
	" check whether a dictionary if it exists
	if !exists('g:airline_symbols')
		let g:airline_symbols = {}
	endif

	"===================
	" enabled extensions
	"===================

	let g:airline_extensions = [
		\ 'branch',
		\ 'coc',
		\ 'clock',
		\ 'fugitiveline',
		\ 'hunks',
		\ 'keymap',
		\ 'tabline',
		\ 'vista'
		\ ]

	"========
	" symbols
	"========

	let g:airline_symbols.paste = 'ρ'
	let g:airline_symbols.whitespace = 'Ξ'
"	let g:airline_left_sep = ''
"	let g:airline_left_alt_sep = ''
"	let g:airline_right_sep = ''
"	let g:airline_right_alt_sep = ''
	let g:airline_symbols.branch = ''
	let g:airline_symbols.readonly = ''
	let g:airline_symbols.linenr = ''
	let g:airline_symbols.dirty='⚡'

	"========
	" options
	"========

	" prevent preview windows from having its statusbar
	let g:airline_exclude_preview = 0

	"enable modified detection >
	let g:airline_detect_modified=1

	"enable crypt detection >
	let g:airline_detect_crypt=1

	"enable spell detection >
	let g:airline_detect_spell=1

	"display spelling language when spell detection is enabled
	"(if enough space is available) >
	let g:airline_detect_spelllang=1

	"determine whether inactive windows should have the left section collapsed
	"to only the filename of that buffer.
	let g:airline_inactive_collapse=1

	"Use alternative seperators for the statusline of inactive windows >
	let g:airline_inactive_alt_sep=1

	" enable paste detection
	let g:airline_detect_paste=1

	" enable/disable automatic population of the `g:airline_symbols` dictionarky
	" with powerline symbols.
	let g:airline_powerline_fonts=1

	"===========
	" Extensions
	"===========

	" enable/disable enhanced tabline.
	let g:airline#extensions#tabline#enabled = 1

	" enable/disable displaying buffers with a single tab.
	let g:airline#extensions#tabline#show_buffers = 1

	" configure how numbers are calculated in tab mode.
	let g:airline#extensions#tabline#tab_nr_type = 1 " tab number


	" enable/disable fugitive/lawrencium integration
	let g:airline#extensions#branch#enabled=1

	" change the text for when no branch is detected
	let g:airline#extensions#branch#empty_message = ''

	" enable/disable eclim integration, which works well with the
	" |airline-syntastic| extension. >
	let g:airline#extensions#eclim#enabled = 0

	" add time to statusline
	let g:airline#extensions#clock#format = '%H:%M:%S'
	let g:airline#extensions#clock#updatetime = 1000

	"enable/disable vim-keymap extension >
	let g:airline#extensions#keymap#enabled = 1
catch
	echo 'vim-airline is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
