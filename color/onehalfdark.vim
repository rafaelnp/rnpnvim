"============================================
" onehalf
" https://github.com/sonph/onehalf/tree/master/vim
"============================================

syntax on
set bg=dark
colorscheme onehalldark


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
	set termguicolors
"	hi LineNr ctermbg=NONE guibg=NONE
endif

let g:airline_theme='onehalfdark'

