"============================================
" vista.vim
" https://github.com/liuchengxu/vista.vim
" http://liuchengxu.org/vista.vim/
"============================================

try
	" TODO: review plugin config
	nnoremap <silent> <F11> :Vista!!<CR>
	" How each level is indented and what to prepend.
	" This could make the display more compact or more spacious.
	" e.g., more compact: ["▸ ", ""]
	" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
	let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

	" Executive used when opening vista sidebar without specifying it.
	" See all the avaliable executives via `:echo g:vista#executives`.
	let g:vista_default_executive = 'coc'
	"let g:vista_default_executive = 'ctags'

	" Ensure you have installed some decent font to show these pretty symbols,
	" then you can enable icon for the kind.
	let g:vista#renderer#enable_icon = 1

	" width of vista sidebar
	let g:vista_sidebar_width = 50

	" Set this option to `1` to close the vista window automatically close when you jump to a symbol
	let g:vista_close_on_jump = 1

	let g:vista#renderer#icons = {
	\   "function": "\uf794",
	\   "variable": "\uf71b",
	\  }
catch
	echo ' vista.vim is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
