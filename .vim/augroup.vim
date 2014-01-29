:" Highlight unwanted spaces
" Reference:
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
" http://stackoverflow.com/questions/4998582/show-whitespace-characters-in-gvim
"
" Highlight redundant spaces (spaces at the end of the line, spaces before
" or after tabs):
highlight RedundantSpaces term=standout ctermbg=Grey guibg=#ffddcc
highlight TrailingSpaces  term=standout ctermbg=Grey guibg=#5fddcc
highlight LeadingSpaces   term=standout ctermbg=Grey guibg=#ffddcc

call matchadd('RedundantSpaces', '\(\s\+$\| \+\ze\t\|\t\zs \+\)\(\%#\)\@!')
call matchadd('TrailingSpaces', '/^\t*\zs \+/')
call matchadd('LeadingSpaces', '/^ \+/')
" match ExtraWhitespace /\s\+$/

" highlight the firstcolumn" greater than textwidth
highlight ColorColumn ctermbg=magenta guibg=lightred
call matchadd('ColorColumn', '\%81v', 100)

"augroup redundant_whitespace
"	autocmd!
"	autocmd BufWinEnter * match RedundantSpaces \(\s\+$\| \+\ze\t\|\t\zs \+\)\(\%#\)\@!
"	autocmd BufWinEnter * match ColorColumn '\%81v'
"	autocmd BufWinLeave * call clearmatches()
"	autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
"	autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"augroup END

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
