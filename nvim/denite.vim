"=========================================
" 17 - Denite
"      https://github.com/Shougo/denite.nvim
"      https://github.com/sodiumjoe/dotfiles/blob/master/vimrc#L179
"=========================================
" The prefix key.
nnoremap [denite] <Nop>
nmap <space> [denite]

" disable devicons for denite because it's slow
let g:webdevicons_enable_denite = 0

" change default cursor
call denite#custom#option('_', 'prompt', '>>')

" General purpose - list all sources
nnoremap [denite]p :Denite file_rec line<cr>
nnoremap [denite]b :Denite buffer<cr>

" open menu
nnoremap [denite]m :Denite menu<cr>
nnoremap [denite]r :<C-u>Denite file_rec/async:!<CR>
nnoremap [denite]M :Denite colorscheme<CR>
nnoremap [denite]t :<C-u>Denite -buffer-name=buffer  buffer<cr>

" show document outline
nnoremap [denite]o :Denite  -auto-preview outline<CR>

nnoremap <silent> [denite]me :<C-u>Denite output:message<CR>

let s:menus = {}
let s:menus.settings = {'description': 'Configuration files (rafaelnp/rnpvim)'}
let s:menus.settings.file_candidates = [
	\   ['  Configuration Files                             │', ''],
	\   ['──────────────────────────────────────────────────┤', ''],
	\   ['▶ Abbreviations:              config/abbrev.vim   │', g:nvimdir.'/abbrev.vim'],
	\   ['▶ General settings:           config/config.vim   │', g:nvimdir.'/config.vim'],
	\   ['▶ Denite settings:            config/denite.vim   │', g:nvimdir.'/denite.vim'],
	\   ['▶ Global Key mappings:        config/mappings.vim │', g:nvimdir.'/mappings.vim'],
	\   ['▶ Installed plugins:          config/plugins.vim  │', g:nvimdir.'/plugins.vim'],
	\   ['▶ Plugin management settings: config/vim-plug.vim │', g:nvimdir.'/vim-plug.vim'],
	\   ['──────────────────────────────────────────────────┘', '']
\ ]
call denite#custom#var('menu', 'menus', s:menus)
