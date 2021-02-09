"================================================
" nerdtree
" https://github.com/scrooloose/nerdtree.git
"================================================

try
	let NERDTreeCaseSensitiveSort = 1
	let NERDTreeChDirMode         = 1
	let NERDTreeQuitOnOpen        = 0
	let NERDTreeShowHidden        = 1
	let NERDTreeShowLineNumbers   = 1

	if has("win32") || has("win64")
		let NERDTreeIgnore = ['\.DAT$', '\.LOG1$', '\.LOG1$', '\c^ntuser\..*']
	endif
catch
	echo 'nerdtree is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry

