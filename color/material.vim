"============================================
" material.vim
" https://github.com/kaicataldo/material.vim
"============================================

if (has("termguicolors"))
	set termguicolors
endif

"let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker'
let g:material_theme_style = 'palelight'
let g:material_terminal_italics = 1
colorscheme material

let g:airline_theme = 'material'
