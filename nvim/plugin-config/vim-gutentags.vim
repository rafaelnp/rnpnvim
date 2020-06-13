"=====================================================
" 29 - guterntag
"      https://github.com/ludovicchabant/vim-gutentags
"=====================================================

try
	" TODO: review plugin configuration
	set statusline+=%{gutentags#statusline()}
catch
	echo 'vim-gutentags is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry

