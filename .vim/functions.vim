""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight unwanted spaces
" Reference:
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
" http://stackoverflow.com/questions/4998582/show-whitespace-characters-in-gvim
"
" The '\(\s\+$\| \+\ze\t\|^\t*\zs \+\)\(\%#\)\@!' highlights:
" 1 - trailing spaces
" 2 - leading spaces
" 3 - spaces before tabs
" 4 - spaces after tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight ExtraSpaces term=standout ctermbg=Grey guibg=#8fddcc
highlight TrailingSpaces term=standout ctermbg=Grey guibg=#8fddcc
highlight ColorColumn ctermbg=magenta guibg=lightred

function! RmTrailSpaces()
	:%s/\s\+$//e
endfunction

function! HLightTrailSpaces()
	call matchadd('TrailingSpaces','\s\+$')
endfunction

function! HLightExtraSpaces()
	call matchadd('ExtraSpaces','\(\s\+$\| \+\ze\t\|^\t*\zs \+\)\(\%#\)\@!')
endfunction

function! HLighteColorColumn()
	call matchadd('ColorColumn','\%81v')
endfunction

function! ShowTabs()
		setlocal listchars=tab:▸\ ,eol:¬
		setlocal list
endfunction

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

function! Ycmconf_exist()
	if !filereadable("~/.vim/bundle/YouCompleteMe/install.sh")
		return 0
	endif

	let foo=getcwd().".ycm_extra_conf.py"

	if filereadable(foo)
		return 1
	else
		return 0
	endif
endfunction


function! Config_cindent()

if exists("g:cindent")
	let &l:tabstop=g:cindent
	let &l:softtabstop=g:cindent
	let &l:shiftwidth=g:cindent
else
	setlocal shiftwidth=8 tabstop=8 softtabstop=8
endif

if exists("g:cindenttype")
	if g:cindenttype ==? "tabs"
		setlocal noexpandtab
	elseif g:cindenttype ==? "spaces"
		setlocal expandtab
	else
		setlocal noexpandtab
	endif
else
	setlocal noexpandtab
endif

retab
endfunction

