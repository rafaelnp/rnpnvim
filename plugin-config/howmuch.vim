"======================================
" howmuch
" https://github.com/sk1418/HowMuch
"======================================

try
	" TODO: review this plugin
	"The scale of the result:
	let g:HowMuch_scale = 2
	"the engine order for auto-calculation
	let g:HowMuch_auto_engines = ['bc', 'vim', 'py']
catch
	echo 'howmuch.vim  is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry

