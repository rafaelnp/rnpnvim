"==========================================
" vim-airline
" https://github.com/bling/vim-airline
"==========================================

try
	" TODO: review plugin config
	" The powerline symbols need the powerline fonts:
	" https://github.com/Lokaltog/powerline-fonts
	"
	" check whether a dictionary if it exists
	if !exists('g:airline_symbols')
		let g:airline_symbols = {}
	endif

	let g:airline_extensions = ['branch', 'hunks', 'coc', 'tabline']

	" unicode symbols
	let g:airline_left_sep = '»'
	let g:airline_left_sep = '▶'
	let g:airline_right_sep = '«'
	let g:airline_right_sep = '◀'
	let g:airline_symbols.linenr = '␊'
	let g:airline_symbols.linenr = '␤'
	let g:airline_symbols.linenr = '¶'
	let g:airline_symbols.branch = '⎇'
	let g:airline_symbols.paste = 'ρ'
	let g:airline_symbols.paste = 'Þ'
	let g:airline_symbols.paste = '∥'
	let g:airline_symbols.whitespace = 'Ξ'

	" powerline symbols
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
	let g:airline_symbols.branch = ''
	let g:airline_symbols.readonly = ''
	let g:airline_symbols.linenr = ''

	" Set airline theme manually
	"let g:airline_theme="murmur"
	" fix messed up symbols
	"let g:airline_symbols.space = "\ua0"

	" enable/disable enhanced tabline.
	let g:airline#extensions#tabline#enabled = 1

	" enable/disable displaying buffers with a single tab.
	let g:airline#extensions#tabline#show_buffers = 1

	" configure how numbers are calculated in tab mode.
	let g:airline#extensions#tabline#tab_nr_type = 1 " tab number

	" enable paste detection
	let g:airline_detect_paste=1

	" enable/disable automatic population of the `g:airline_symbols` dictionarky
	" with powerline symbols.
	let g:airline_powerline_fonts=1

	" enable/disable fugitive/lawrencium integration
	let g:airline#extensions#branch#enabled=1

	" change the text for when no branch is detected
	let g:airline#extensions#branch#empty_message = ''

	" enable/disable eclim integration, which works well with the
	" |airline-syntastic| extension. >
	let g:airline#extensions#eclim#enabled = 0
catch
	echo 'vim-airline is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
