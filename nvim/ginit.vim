"
" Config file used for GUI config (nvim-qt)
"

if exists('g:GuiLoaded')
	set bg=dark
	"Guifont DejaVu\ Sans\ Mono\ for\ Powerline:h8
	Guifont! DejaVuSansMono\ Nerd\ Font\ Mono:h8
	GuiTabline 0
	GuiPopupmenu 0
	GuiTabline 0

	nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
	inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
	vnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
endif

