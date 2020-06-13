"=====================================================
" markdown-preview.nvim
" https://github.com/iamcco/markdown-preview.nvim
"=====================================================

try
	nmap <F2> <Plug>MarkdownPreview
catch
	echo 'markdown-preview is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry

