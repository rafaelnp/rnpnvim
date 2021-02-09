"=====================================================
" mkdx
" https://github.com/SidOfc/mkdx
" https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md
" Markdownlint configuration file: $HOME/.config/markdownlint.json
"=====================================================

try
	" TODO: review plugin configuration
	let g:mkdx#settings = {
		\'highlight': { 'enable': 1 },
		\ 'enter': { 'shift': 1 },
		\ 'links': { 'external': { 'enable': 1 } },
		\ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
		\ 'fold': { 'enable': 1 } }
catch
	echo 'mkdx is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
