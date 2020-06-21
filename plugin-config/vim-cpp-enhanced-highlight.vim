"=====================================================
" vim-cpp-enhanced-highlight
" https://github.com/octol/vim-cpp-enhanced-highlight
"=====================================================

try
	" TODO: review plugin config
	let g:cpp_class_scope_highlight = 1
	let g:cpp_member_variable_highlight = 1
	let g:cpp_class_decl_highlight = 1
	let g:cpp_posix_standard = 1
catch
	echo 'vim-cpp-enhanced-highlight is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
