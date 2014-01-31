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

if has("autocmd")
	highlight ExtraSpaces term=standout ctermbg=Grey guibg=#8fddcc
	highlight TrailingSpaces term=standout ctermbg=Grey guibg=#8fddcc

	" highlight the firstcolumn" greater than textwidth
	highlight ColorColumn ctermbg=magenta guibg=lightred

	augroup generalformating
		au!
		autocmd BufWinEnter * call matchadd('TrailingSpaces','\s\+$')
		autocmd BufWinEnter * call matchadd('ColorColumn','\%81v')
		autocmd BufWinLeave * call clearmatches()
	augroup END

	augroup help
		au!
		autocmd BufWinEnter FileType help call clearmatches()
	augroup END

	augroup ccpp
		au!
		autocmd BufWinEnter *.c,*.cpp,*.h call matchadd('ExtraSpaces','\(\s\+$\| \+\ze\t\|^\t*\zs \+\)\(\%#\)\@!')
		autocmd BufWinEnter *.c,*.cpp,*.h setlocal shiftwidth=8 tabstop=8 softtabstop=8
		autocmd BufWinEnter *.c,*.cpp,*.h setlocal listchars=tab:▸\ ,
		autocmd BufWinEnter *.c,*.cpp,*.h setlocal list
		autocmd BufWinEnter *.c,*.cpp,*.h setlocal noexpandtab
		autocmd BufWinEnter *.c,*.cpp,*.h setlocal cindent
		autocmd BufWinEnter *.c,*.cpp,*.h setlocal makeprg=scons
		"autcomd BufWinEnter *.cpp,*.hpp   exec let  g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf_cpp.py'
		"autcomd BufWinEnter *.c,*.h       exec let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf_c.py'
		if !filereadable(expand("%:p:h")."/SConstruct")
			autocmd FileType c setlocal makeprg=clang\ -Wall\ -Wextra\ -o\ %<\ %
		endif
	augroup END

	augroup python
		autocmd BufWinEnter *.py call matchadd('ExtraSpaces','\(\s\+$\| \+\ze\t\|^\t*\zs \+\)\(\%#\)\@!')
		autocmd BufWinEnter *.py setlocal listchars=tab:▸\ ,
		autocmd BufWinEnter *.py setlocal list
		autocmd BufWinEnter *.py setlocal noexpandtab
	augroup END

	augroup sh
		autocmd BufWinEnter *.sh call matchadd('ExtraSpaces','\(\s\+$\| \+\ze\t\|^\t*\zs \+\)\(\%#\)\@!')
		autocmd BufWinEnter *.sh setlocal listchars=tab:▸\ ,
		autocmd BufWinEnter *.sh setlocal list
		autocmd BufWinEnter *.sh setlocal noexpandtab
	augroup END

	augroup vim
		autocmd BufWinEnter *.vim call matchadd('ExtraSpaces','\(\s\+$\| \+\ze\t\|^\t*\zs \+\)\(\%#\)\@!')
		autocmd BufWinEnter *.vim setlocal listchars=tab:▸\ ,
		autocmd BufWinEnter *.vim setlocal list
		autocmd BufWinEnter *.vim setlocal noexpandtab
	augroup end
endif
