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
highlight ExtraSpaces term=standout ctermbg=Grey guibg=#8fddcc

" highlight the firstcolumn" greater than textwidth
highlight ColorColumn ctermbg=magenta guibg=lightred

augroup redundant_whitespace
	au!
	autocmd BufWinEnter * call matchadd('ExtraSpaces','\(\s\+$\| \+\ze\t\|^\t*\zs \+\)\(\%#\)\@!')
	autocmd BufWinEnter * call matchadd('ColorColumn','\%81v')
	autocmd BufWinLeave * call clearmatches()
augroup END

augroup help
	au!
	autocmd BufWinEnter FileType help call clearmatches()
augroup END

augroup ccpp
	au!
	autocmd BufWinEnter *.c,*.cpp,*.h  setlocal shiftwidth=8 tabstop=8 softtabstop=8
	autocmd BufWinEnter *.c,*.cpp,*.h  setlocal listchars=tab:▸\ ,
	autocmd BufWinEnter *.c,*.cpp,*.h  setlocal list
	autocmd BufWinEnter *.c,*.cpp,*.h  setlocal noexpandtab
	autocmd BufWinEnter *.c,*.cpp,*.h  setlocal cindent
	autocmd BufWinEnter *.c,*.cpp,*.h  setlocal makeprg=scons
	if !filereadable(expand("%:p:h")."/SConstruct")
		autocmd FileType c setlocal makeprg=clang\ -Wall\ -Wextra\ -o\ %<\ %
	endif
	"autocmd BufWinEnter *.c   match RedundantSpaces /^\t*\zs \+/
augroup END

augroup python
	autocmd BufWinEnter *.py setlocal listchars=tab:▸\ ,
	autocmd BufWinEnter *.py setlocal list
	autocmd BufWinEnter *.py setlocal noexpandtab
	"autocmd BufWinEnter *.py match    RedundantSpaces /^\t*\zs \+/
augroup END

augroup sh
	autocmd BufWinEnter *.sh setlocal listchars=tab:▸\ ,
	autocmd BufWinEnter *.sh setlocal list
	autocmd BufWinEnter *.sh setlocal noexpandtab
	"autocmd BufWinEnter *.sh match    RedundantSpaces /^\t*\zs \+/
augroup END

augroup vim
	autocmd BufWinEnter *.vim setlocal listchars=tab:▸\ ,
	autocmd BufWinEnter *.vim setlocal list
	autocmd BufWinEnter *.vim setlocal noexpandtab
augroup end
