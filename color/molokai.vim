"============================================
" molokai
" https://github.com/tomasr/molokai
"============================================

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
	set termguicolors
"	hi LineNr ctermbg=NONE guibg=NONE
endif

colorscheme molokai

let g:airline_theme='molokai'

