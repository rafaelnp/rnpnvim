"============================================
" ALE.vim
" https://github.com/dense-analysis/ale
" https://github.com/desmap/ale-sensible
"============================================
" avoid errors if plugin is not available


try
	" using LSP from coc.nvim
	let g:ale_disable_lsp = 1

	let g:ale_fixers = {
	\ 'cpp': ['astyle'],
	\ }
	" using ale-sensisble, no additional configuration is needed
catch
	echo 'ale.vim is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
