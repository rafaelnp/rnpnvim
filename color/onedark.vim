"============================================
" onedark
" https://github.com/joshdick/onedark.vim
"============================================

syntax on
colorscheme onedark

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
	set termguicolors
	hi LineNr ctermbg=NONE guibg=NONE
endif

let g:airline_theme='violet'
