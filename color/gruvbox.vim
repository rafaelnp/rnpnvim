"============================================
" gruvbox
" https://github.com/morhetz/gruvbox
"============================================

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
	set termguicolors
"	hi LineNr ctermbg=NONE guibg=NONE
endif

colorscheme gruvbox

let g:airline_theme='gruvbox'

