"=====================================================
" vim-devicons
"=====================================================

try
	" TODO: review plugin config
	" Force extra padding in NERDTree so that the filetype icons line up vertically
	let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

	" Adding the custom source to denite
	let g:webdevicons_enable_denite = 1

	" set a byte character marker (BOM) utf-8 symbol when retrieving file encoding
	" disabled by default with no value
	let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = ''

	" enable folder/directory glyph flag (disabled by default with 0)
	let g:WebDevIconsUnicodeDecorateFolderNodes = 1

	" enable open and close folder/directory glyph flags (disabled by default with 0)
	let g:DevIconsEnableFoldersOpenClose = 1

	" adding the column to vimfiler
	let g:webdevicons_enable_vimfiler = 1

	" adding to vim-startify screen
	let g:webdevicons_enable_startify = 1
catch
	echo ' is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
