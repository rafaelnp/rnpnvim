
"=====================================================
" editorconfig
" https://github.com/editorconfig/editorconfig-vim
"=====================================================

try
	" TODO: review plguin config
	let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
catch
	echo 'editorconfig is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry

