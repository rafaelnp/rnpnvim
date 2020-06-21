
"======================================
" man
" runtime/ftplugin/man.vim
"======================================

try
	nnoremap K :Man <cword><cr>
catch
	echo 'man.vim is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry

