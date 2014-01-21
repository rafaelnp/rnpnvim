" Highlight unwanted spaces
" Reference:
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
" http://stackoverflow.com/questions/4998582/show-whitespace-characters-in-gvim
"
" Highlight redundant spaces (spaces at the end of the line, spaces before
" or after tabs):
highlight RedundantSpaces term=standout ctermbg=Grey guibg=#ffddcc
"call matchadd('RedundantSpaces', '\(\s\+$\| \+\ze\t\|\t\zs \+\)\(\%#\)\@!')

augroup redundant_whitespace
	autocmd!
	autocmd BufWinEnter * match RedundantSpaces '\(\s\+$\| \+\ze\t\|\t\zs \+\)\(\%#\)\@!'
	autocmd BufWinLeave * call clearmatches()
augroup END

" Highlight trailing whitespace (but not in insert mode).
" See http://vim.wikia.com/wiki/Highlight_unwanted_spaces
" highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/
" augroup extra_whitespace
"   autocmd!
"   autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
"   autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"   autocmd InsertLeave * match ExtraWhitespace /\s\+$/
"   autocmd BufWinLeave * call clearmatches()
" augroup END

augroup c
	au!
	autocmd FileType c   setlocal shiftwidth=8 tabstop=8 softtabstop=8
	autocmd FileType c   setlocal listchars=tab:▸\ ,
	autocmd FileType c   setlocal list
	autocmd FileType c   setlocal noexpandtab
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
	autocmd FileType cpp   setlocal noexpandtab
augroup END

augroup python
	autocmd FileType python   setlocal listchars=tab:▸\ ,
	autocmd FileType python   setlocal list
	autocmd FileType python   setlocal noexpandtab
augroup END
