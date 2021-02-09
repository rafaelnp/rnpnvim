"============================================
" rnvimr
" https://github.com/kevinhwang91/rnvimr
" https://www.chrisatmachine.com/Neovim/07-ranger/
"============================================

try
	" Make Ranger replace netrw and be the file explorer
	let g:rnvimr_ex_enable = 1
	" close ranger when a file is open
	let g:rnvimr_enable_picker = 1
	" map ranger to dash
	nmap - :RnvimrToggle<CR>
catch
	echo 'rnvimr is not installed, or there is an error in the configuration . Add it to vim-plug plugin list and run :PlugInstall, or check its configuration'
endtry

