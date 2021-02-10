"============================================
" papercolor
" https://github.com/NLKNguyen/papercolor-theme
"============================================

syntax on
set bg=dark
colorscheme palenight

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
	set termguicolors
endif

let g:airline_theme = "palenight"
