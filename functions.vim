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

" this function turns on space highlight for 3 groups:
" 1 - trailing spaces
" 2 - spaces after tabs
" 3 - spaces at the line start (indentation)
"
" if the userconfig.vim exists and the specified indenation type is "spaces",
" then the group (3) is disabled
"
function! HLightExtraSpaces()
	if exists("g:indenttype") && g:indenttype ==? "spaces"
		call matchadd('ExtraSpaces','\(\s\+$\| \+\ze\t\ \+\)\(\%#\)\@!')
	elseif exists("g:indenttype") && g:indenttype ==? "tabs"
		call matchadd('ExtraSpaces','\(\s\+$\| \+\ze\t\|^\t*\zs \+\)\(\%#\)\@!')
	else
		call matchadd('ExtraSpaces','\(\s\+$\| \+\ze\t\|^\t*\zs \+\)\(\%#\)\@!')
	endif
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
	"	return
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

