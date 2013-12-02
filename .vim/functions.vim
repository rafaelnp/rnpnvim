
function! Reloadconfig()
	wa
	source $MYVIMRC
endfunction

function! DumpMaps()
	redir! > ~/vim_maps.txt
	map
	map!
	redir END
endfunction

function! SetupGUI()
	set ea                             " make all windows the same size when
                                       " adding/removing windows
	set ead=both                       "set in which direction 'equalalways'
                                       " works: "ver", "hor" or "both"
	set wildmenu                       "
	set noshowmode                       " display current mode
	set cursorline                     " sets cursor line highlight. cool :)
	set display=uhex

	" TODO: Which is the best font (proportional) for programming ??
	if has('unix')
		"Default font
		"set guifont=Monospace\ 9
		" Other good fonts:
		"set guifont=Anonymous\ Pro\ Minus\ 11
		"set guifont=Anonymous\ Pro\ 9
		set guifont=Inconsolata\ 9
		"set guifont=DejaVu\ Sans\ Mono\ 9
	elseif has ('win32') || ('win64')
		set guifont=Lucida_Sans_Typewriter:h9
	elseif has ('mac')
		set guifont=Monospace\ 9
	endif

	colorscheme vividchalk
	set guioptions=aAgi                       " see: help guioptions

	"Pop-up menu color setteings
	highlight Pmenu guibg=brown gui=bold      "gui
	highlight Pmenu ctermbg=238 gui=bold      "terminal
	set mousemodel=popup
endfunction
