"============================================
" ayu
" https://github.com/ayu-theme/ayu-vim
"============================================

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
	set termguicolors
"	hi LineNr ctermbg=NONE guibg=NONE
endif

"let ayucolor="dark"   " for dark version of theme
let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme


colorscheme ayu

"let g:airline_theme='ayu_dark'
"let g:airline_theme='ayu_mirage'
let g:airline_theme='ayu_light'

