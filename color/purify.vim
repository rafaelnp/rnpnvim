"============================================
" purify
" https://github.com/kyoz/pufiry
"============================================

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
	set termguicolors
"	hi LineNr ctermbg=NONE guibg=NONE
endif

colorscheme purify

let g:airline_theme='purify'

