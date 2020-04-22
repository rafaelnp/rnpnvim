"
" Minimal neovim setup, used to reproduce bugs
"
" plug - plugin manager

call plug#begin('~/.config/nvim/plugged')

Plug 'kaicataldo/material.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'myusuf3/numbers.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bling/vim-airline'

call plug#end()

" neovim + neovim-qt configuration

filetype plugin indent on
syntax enable

set cpoptions=BceF
set bg=dark

if (has("termguicolors"))
	set termguicolors
endif

let g:material_theme_style = 'darker'
let g:material_terminal_italics = 1
colorscheme material

set noshowmode
set cursorline

if  has('nvim')
	if exists('g:GuiLoaded')
		Guifont! DejaVuSansMono\ Nerd\ Font\ Mono:h8
		GuiTabline 0
		GuiPopupmenu 0
		GuiTabline 0
	endif
endif

let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'

" Plugin settings
" airline
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_extensions = ['branch', 'coc', 'tabline']
let g:airline_theme="murmur"
let g:airline_powerline_fonts=1
