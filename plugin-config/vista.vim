"============================================
" vista.vim
" https://github.com/liuchengxu/vista.vim
" http://liuchengxu.org/vista.vim/
"============================================

try
	nnoremap <silent> <F11> :Vista!!<CR>

	" How each level is indented and what to prepend.
	" This could make the display more compact or more spacious.
	" e.g., more compact: ["▸ ", ""]
	" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
	let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

	" Set the executive for some filetypes explicitly. Use the explicit executive
	" instead of the default one for these filetypes when using `:Vista` without
	" specifying the executive.
	let g:vista_executive_for = {
		\ 'c': 'coc',
		\ 'cpp': 'coc',
		\ 'python': 'coc',
		\ 'tex': 'coc',
		\ 'vim': 'coc',
		\ 'yaml': 'coc',
		\ }

	"let g:vista#finders = ['fzf', 'skim']
	"let g:vista#renderer#ctags = 'kind'

	" Ensure you have installed some decent font to show these pretty symbols,
	" then you can enable icon for the kind.
	let g:vista#renderer#enable_icon = 1

	let g:vista#renderer#icons = {
		\ 'augroup': 'פּ',
		\ 'class': '',
		\ 'const': '',
		\ 'constant': '',
		\ 'default': '',
		\ 'enum': '',
		\ 'enumerator': '',
		\ 'field': '',
		\ 'fields': '',
		\ 'func': '',
		\ 'function': '',
		\ 'functions': '',
		\ 'implementation': '',
		\ 'interface': '',
		\ 'macro': '',
		\ 'macros': '',
		\ 'map': 'פּ',
		\ 'member': '',
		\ 'method': '',
		\ 'module': '',
		\ 'modules': '',
		\ 'namespace': '',
		\ 'package': '',
		\ 'packages': '',
		\ 'property': '襁',
		\ 'struct': '',
		\ 'subroutine': '羚',
		\ 'target': '',
		\ 'type': '',
		\ 'typeParameter': '',
		\ 'typedef': '',
		\ 'types': '',
		\ 'union': '鬒',
		\ 'var': '',
		\ 'variable': '',
		\ 'variables': '',
		\ }

	let g:vista#renderer#kind_default_icon = ['╰─▸ ', '├─▸ ']

	" How to show the detailed formation of current cursor symbol
	let g:vista_echo_cursor_strategy = 'scroll'

	" Executive used when opening vista sidebar without specifying it.
	" See all the avaliable executives via `:echo g:vista#executives`.
	let g:vista_default_executive = 'ctags'

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
