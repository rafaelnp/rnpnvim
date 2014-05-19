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
		autocmd FileType help match none
	augroup END

	augroup ccpp
		au!
		autocmd BufWinEnter *.c,*.cpp,*.h call matchadd('ExtraSpaces','\(\s\+$\| \+\ze\t\|^\t*\zs \+\)\(\%#\)\@!')
		autocmd BufWinEnter *.c,*.cpp,*.h,*.hpp setlocal shiftwidth=8 tabstop=8 softtabstop=8
		autocmd BufWinEnter *.c,*.cpp,*.h,*.hpp setlocal listchars=tab:▸\ ,
		autocmd BufWinEnter *.c,*.cpp,*.h,*.hpp setlocal list
		autocmd BufWinEnter *.c,*.cpp,*.h,*.hpp setlocal noexpandtab
		autocmd BufWinEnter *.c,*.cpp,*.h,*.hpp setlocal cindent
		autocmd BufWinEnter *.c,*.cpp,*.h,*.hpp setlocal makeprg=scons
		"autocmd BufWinEnter *.c,*.cpp,*.h,*.hpp let g:ycm_min_num_of_chars_for_completion = 99
		autocmd BufWinEnter *.c,*.h if !Ycmconf_exist() | let g:ycm_global_ycm_extra_conf='~/.vim/c/.ycm_extra_conf.py' | endif
		autocmd BufWinEnter *.cpp,*.hpp if !Ycmconf_exist() | let g:ycm_global_ycm_extra_conf='~/.vim/cpp/.ycm_extra_conf.py' | endif
		if !filereadable(expand("%:p:h")."/SConstruct")
			autocmd FileType c setlocal makeprg=clang\ -Wall\ -Wextra\ -o\ %<\ %
		endif
		autocmd BufWinLeave *.c,*.cpp,*.h call clearmatches()
	augroup END

	augroup markdown
		au!
		autocmd BufWinEnter *.md setlocal textwidth=0
	augroup END

	augroup python
		au!
		autocmd BufWinEnter *.py,SConstruct setlocal shiftwidth=4 tabstop=4 softtabstop=4
		autocmd BufWinEnter *.py,SConstruct call matchadd('ExtraSpaces','\(\s\+$\| \+\ze\t\|^\t*\zs \+\)\(\%#\)\@!')
		autocmd BufWinEnter *.py,SConstruct setlocal listchars=tab:▸\ ,
		autocmd BufWinEnter *.py,SConstruct setlocal list
		autocmd BufWinEnter *.py,SConstruct setlocal noexpandtab
		autocmd BufWinLeave *.py,SConstruct call clearmatches()
	augroup END

	augroup sh
		au!
		autocmd BufWinEnter *.sh call matchadd('ExtraSpaces','\(\s\+$\| \+\ze\t\|^\t*\zs \+\)\(\%#\)\@!')
		autocmd BufWinEnter *.sh setlocal listchars=tab:▸\ ,
		autocmd BufWinEnter *.sh setlocal list
		autocmd BufWinEnter *.sh setlocal noexpandtab
		autocmd BufWinLeave *.sh call clearmatches()
	augroup END

	augroup vim
		au!
		autocmd BufWinEnter *.vim call matchadd('ExtraSpaces','\(\s\+$\| \+\ze\t\|^\t*\zs \+\)\(\%#\)\@!')
		autocmd BufWinEnter *.vim setlocal listchars=tab:▸\ ,
		autocmd BufWinEnter *.vim setlocal list
		autocmd BufWinEnter *.vim setlocal noexpandtab
		autocmd BufWinLeave *.vim call clearmatches()
	augroup END

	" FIXME: Not working with unite. But trhe same config works with help
	" filetype
	augroup unite
		au!
		autocmd BufWinEnter FileType unite call clearmatches()
		"autocmd BufWinEnter,BufRead,BufNewFile FileType unite call clearmatches()
		autocmd FileType unite match none
		"autocmd BufWinEnter FileType Unite call clearmatches()
		"if &ft == 'Unite'
		"	autocmd BufWinEnter * call clearmatches()
		"endif
	augroup END
endif
