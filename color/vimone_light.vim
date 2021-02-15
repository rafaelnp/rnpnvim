"============================================
" vim-one
" https://github.com/rakr/vim-one"
" ============================================

syntax on
colorscheme one
set bg=light

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
	set termguicolors
	hi LineNr ctermbg=NONE guibg=NONE
endif

let g:airline_theme='one'
