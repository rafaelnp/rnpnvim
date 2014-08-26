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

if has("autocmd")
	augroup generalformating
		au!
		autocmd BufCreate,BufLeave,BufWinLeave * call clearmatches()
		autocmd BufWritePre * call RmTrailSpaces()
	augroup END

"	augroup help
"		au!
"		autocmd BufEnter FileType help call clearmatches()
"		autocmd BufWinEnter FileType help call clearmatches()
"		autocmd FileType help match none
"	augroup END

	augroup ccpp
		au!
"		autocmd BufEnter,BufWinEnter *.c,*.cpp,*.h,*.hpp call HLighteColorColumn()
"		autocmd BufEnter,BufWinEnter *.c,*.cpp,*.h,*.hpp call HLightExtraSpaces()
		autocmd BufEnter,BufWinEnter *.c,*.cpp,*.h,*.hpp setlocal shiftwidth=8 tabstop=8 softtabstop=8
		autocmd BufEnter,BufWinEnter *.c,*.cpp,*.h,*.hpp setlocal listchars=tab:▸\ ,
		autocmd BufEnter,BufWinEnter *.c,*.cpp,*.h,*.hpp setlocal list
		autocmd BufEnter,BufWinEnter *.c,*.cpp,*.h,*.hpp setlocal noexpandtab
		autocmd BufEnter,BufWinEnter *.c,*.cpp,*.h,*.hpp setlocal cindent
"		autocmd BufEnter,BufWinEnter *.c,*.cpp,*.h,*.hpp setlocal makeprg=scons
		autocmd BufEnter,BufWinEnter *.c,*.h if !Ycmconf_exist() | let g:ycm_global_ycm_extra_conf='~/.vim/c/.ycm_extra_conf.py' | endif
		autocmd BufEnter,BufWinEnter *.cpp,*.hpp if !Ycmconf_exist() | let g:ycm_global_ycm_extra_conf='~/.vim/cpp/.ycm_extra_conf.py' | endif
"		if !filereadable(expand("%:p:h")."/SConstruct")
"			autocmd FileType c setlocal makeprg=clang\ -Wall\ -Wextra\ -o\ %<\ %
"		endif
"		autocmd BufLeave,BufWinLeave *.c,*.cpp,*.h,*.hpp call clearmatches()
	augroup END

"	augroup markdown
"		au!
"		autocmd BufEnter,BufWinEnter *.md setlocal textwidth=0
"	augroup END

"	augroup python
"		au!
"		autocmd BufEnter,BufWinEnter *.py,SConstruct call HLighteColorColumn()
"		autocmd BufEnter,BufWinEnter *.py,SConstruct setlocal shiftwidth=4 tabstop=4 softtabstop=4
"		autocmd BufEnter,BufWinEnter *.py,SConstruct call HLightExtraSpaces()
"		autocmd BufEnter,BufWinEnter *.py,SConstruct setlocal listchars=tab:▸\ ,
"		autocmd BufEnter,BufWinEnter *.py,SConstruct setlocal list
"		autocmd BufEnter,BufWinEnter *.py,SConstruct setlocal noexpandtab
"		autocmd BufLeave,BufWinLeave *.py,SConstruct call clearmatches()
"	augroup END

"	augroup sh
"		au!
"		autocmd BufEnter,BufWinEnter *.sh call HLighteColorColumn()
"		autocmd BufEnter,BufWinEnter *.sh call HLightExtraSpaces()
"		autocmd BufEnter,BufWinEnter *.sh setlocal listchars=tab:▸\ ,
"		autocmd BufEnter,BufWinEnter *.sh setlocal list
"		autocmd BufEnter,BufWinEnter *.sh setlocal noexpandtab
"		autocmd BufLeave,BufWinLeave *.sh call clearmatches()
"	augroup END

"	augroup vim
"		au!
"		autocmd BufEnter,BufWinEnter *.vim call HLighteColorColumn()
"		autocmd BufEnter,BufWinEnter *.vim call HLightExtraSpaces()
"		autocmd BufEnter,BufWinEnter *.vim setlocal listchars=tab:▸\ ,
"		autocmd BufEnter,BufWinEnter *.vim setlocal list
"		autocmd BufEnter,BufWinEnter *.vim setlocal noexpandtab
"		autocmd BufLeave,BufWinLeave *.vim call clearmatches()
"	augroup END

"	augroup unite
"		au!
"		autocmd BufWinEnter,BufCreate,BufEnter FileType unite call clearmatches()
"		autocmd BufWinEnter,BufRead,BufNewFile FileType unite call clearmatches()
"	augroup END
endif
