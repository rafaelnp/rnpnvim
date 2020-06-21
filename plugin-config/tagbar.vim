"==========================================
" tagbar
" https://github.com/majutsushi/tagbar
" http://majutsushi.github.io/tagbar/
"==========================================

try
	" TODO: review plugin config
	nnoremap <silent> <F8> :TagbarToggle<CR>
	let g:tagbar_autoclose   = 1
	let g:tagbar_autofocus   = 1
	let g:tagbar_sort        = 0
	let g:tagbar_iconchars   = ['▾', '▸']
	let g:tagbar_autoshowtag = 1

	" more examples: https://github.com/majutsushi/tagbar/wiki
	let g:tagbar_type_vhdl = {
								\ 'ctagstype': 'vhdl',
								\ 'kinds' : [
								\'d:prototypes',
								\'b:package bodies',
								\'e:entities',
								\'a:architectures',
								\'t:types',
								\'p:processes',
								\'f:functions',
								\'r:procedures',
								\'c:constants',
								\'T:subtypes',
								\'r:records',
								\'C:components',
								\'P:packages',
								\'l:locals'
								\]
							\}

	let g:tagbar_type_armasm = {
		\ 'ctagsbin'  : 'ctags',
		\ 'ctagsargs' : '-f- --format=2 --excmd=pattern --fields=nksSa --extra= --sort=no --language-force=asm',
		\ 'kinds' : [
			\ 'm:macros:0:1',
			\ 't:types:0:1',
			\ 'd:defines:0:1',
			\ 'l:labels:0:1'
		\ ]
	\}

catch
	echo ' is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
