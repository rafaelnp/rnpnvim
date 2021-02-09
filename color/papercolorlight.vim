"============================================
" papercolor
" https://github.com/NLKNguyen/papercolor-theme
"============================================

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
	set termguicolors
"	hi LineNr ctermbg=NONE guibg=NONE
endif

syntax on
set bg=light
colorscheme PaperColor

let g:airline_theme='papercolor'

