
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

function! SetWindowSize()
	"if line('$') == 1 && getline(1) == ''
	"	 return
	"else
		if has("gui_running")
			set lines=45 columns=90
		else
			" This is console Vim.
			if exists("+lines")
				set lines=45
			endif
			if exists("+columns")
				set columns=90
			endif
		endif
	"endif
endfunction
