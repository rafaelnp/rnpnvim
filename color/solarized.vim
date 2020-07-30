"============================================
" onedark
" https://github.com/altercation/vim-colors-solarized
"============================================

let g:solarized_termcolors=256

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
	set termguicolors
"	hi LineNr ctermbg=NONE guibg=NONE
endif

syntax enable
set background=light
colorscheme solarized

let g:airline_theme='solarized'

