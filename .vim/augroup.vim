augroup c
	au!
	autocmd FileType c   setlocal shiftwidth=8 tabstop=8 softtabstop=8
	autocmd FileType c   setlocal listchars=tab:▸\ ,
	autocmd FileType c   setlocal list
	autocmd FileType c   setlocal makeprg=scons
	if !filereadable(expand("%:p:h")."/SConstruct")
		autocmd FileType c setlocal makeprg=clang\ -Wall\ -Wextra\ -o\ %<\ %
	endif
augroup END

augroup cpp
	au!
	autocmd FileType cpp setlocal shiftwidth=8 tabstop=8 softtabstop=8
	autocmd FileType cpp setlocal listchars=tab:▸\ ,
	autocmd FileType cpp setlocal list
augroup END

augroup python
	autocmd FileType python   setlocal listchars=tab:▸\ ,
	autocmd FileType python   setlocal list
augroup END
