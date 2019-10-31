"=========================================
" 17 - Denite
"      https://github.com/Shougo/denite.nvim
"      https://github.com/sodiumjoe/dotfiles/blob/master/vimrc#L179
"      https://github.com/rafi/vim-config/blob/master/config/plugins/all.vim
"=========================================

"================================================================================
" 17.1 - general options
"================================================================================
"
" avoid errors if plugin is not available
try

" disable devicons for denite because it's slow
let g:webdevicons_enable_denite = 1

" change default cursor
call denite#custom#option('_', 'prompt', '>>')

call denite#custom#option('_', {
	\ 'split': 'horizontal',
	\ 'start_filter': 0,
	\ 'winheight': 16,
	\ 'empty': 0,
	\ 'short_source_names': 1,
	\ 'vertical_preview': 1,
\ })

" FIND and GREP COMMANDS
if executable('ag')
	" The Silver Searcher
	call denite#custom#var('file_rec', 'command',
		\ ['ag', '-U', '--hidden', '--follow', '--nocolor', '--nogroup', '-g', ''])

	" Setup ignore patterns in your .agignore file!
	" https://github.com/ggreer/the_silver_searcher/wiki/Advanced-Usage

	call denite#custom#var('grep', 'command', ['ag'])
	call denite#custom#var('grep', 'recursive_opts', [])
	call denite#custom#var('grep', 'pattern_opt', [])
	call denite#custom#var('grep', 'separator', ['--'])
	call denite#custom#var('grep', 'final_opts', [])
	call denite#custom#var('grep', 'default_opts',
			\ [ '--vimgrep', '--smart-case', '--hidden' ])
endif


"================================================================================
" 17.2 - key mapping
"================================================================================

" The prefix key.
nnoremap [denite] <Nop>
nmap <space> [denite]

" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
	nnoremap <silent><buffer><expr> <CR>  denite#do_map('do_action')
	nnoremap <silent><buffer><expr> d     denite#do_map('do_action', 'delete')
	nnoremap <silent><buffer><expr> p     denite#do_map('do_action', 'preview')
	nnoremap <silent><buffer><expr> <ESC> denite#do_map('quit')
	nnoremap <silent><buffer><expr> q     denite#do_map('quit')
	nnoremap <silent><buffer><expr> i     denite#do_map('open_filter_buffer')
	nnoremap <silent><buffer><expr> <Space>  denite#do_map('toggle_select')
	nnoremap <silent><buffer><expr> t     denite#do_map('do_action', 'tabopen')
	nnoremap <silent><buffer><expr> v     denite#do_map('do_action', 'vsplit')
	nnoremap <silent><buffer><expr> s     denite#do_map('do_action', 'split')
	nnoremap <silent><buffer><expr> V     denite#do_map('toggle_select').'j'
	nnoremap <silent><buffer><expr> y     denite#do_map('do_action', 'yank')
endfunction

autocmd FileType denite-filter call s:denite_filter_settings()
function! s:denite_filter_settings() abort
	imap     <silent><buffer> <tab> <Plug> (denite_filter_quit)
	inoremap <silent><buffer><expr> <CR>   denite#do_map('do_action')
	inoremap <silent><buffer><expr> <Esc>  denite#do_map('quit')
	inoremap <silent><buffer><expr> q      denite#do_map('quit')
	inoremap <silent><buffer><expr> <C-c>  denite#do_map('denite_filter_quit')
	inoremap <silent><buffer><expr> <c-t>  denite#do_map('do_action', 'tabopen')
	inoremap <silent><buffer><expr> <c-v>  denite#do_map('do_action', 'vsplit')
	inoremap <silent><buffer><expr> <c-x>  denite#do_map('do_action', 'split')
    inoremap <silent><buffer> <C-j>
                \ <Esc><C-w>p:call cursor(line('.')+1,0)<CR><C-w>pA
    inoremap <silent><buffer> <C-k>
                \ <Esc><C-w>p:call cursor(line('.')-1,0)<CR><C-w>pA
	"inoremap <silent><buffer>       kk     <Esc><C-w>p
	"nnoremap <silent><buffer>       kk     <C-w>p
	"inoremap <silent><buffer>       jj     <Esc><C-w>p
	"nnoremap <silent><buffer>       jj     <C-w>p
endfunction

call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')


" General purpose - list all sources
nnoremap [denite]r :Denite file/rec line<cr>

" list all buffers
nnoremap [denite]b :Denite buffer<cr>

" open user custom menu
nnoremap [denite]m :Denite menu<cr>

" search list file recursively
nnoremap [denite]fr :<C-u>Denite file/rec<CR>

" search list file in the current directory
nnoremap [denite]f :<C-u>Denite file<CR>

" show installed colorschemes
nnoremap [denite]M :Denite colorscheme<CR>

" search for patern in the current buffer lines
nnoremap [denite]l :Denite line<CR>

" search for patern under the cursor in the current buffer lines
nnoremap [denite]L :DeniteCursorWord line<CR>

" execute grep in the current directory
nnoremap [denite]g :Denite grep<CR>

" execute grep the word under the cursor in the current directory
nnoremap [denite]G :DeniteCursorWord grep<CR>

" show document outline
nnoremap [denite]o :Denite outline<CR>

" show output messages
nnoremap <silent> [denite]me :<C-u>Denite output:message<CR>

" show yank history
nnoremap <silent> [denite]Y :<C-u>Denite neoyank<CR>

"================================================================================
" 17.3 - Menus
"================================================================================
"
"TODO: Add menu for vim-plug. git, zsh

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
	\]

let s:menus.vimplug = {'description': 'Plugin management (vim-plug)'}
let s:menus.vimplug.command_candidates = [
	\   ['  Configuration Files                             │', ''],
	\   ['──────────────────────────────────────────────────┤', ''],
	\   ['▶ Install:                    PlugInstall         │', 'PlugInstall'],
	\   ['▶ Update plugins:             PlugUpdate          │', 'PlugUpdate'],
	\   ['▶ Update vim-plug:            PlugUPgrade         │', 'PlugUpgrade'],
	\   ['▶ Status:                     PlugStatus          │', 'PlugUpgrade'],
	\   ['──────────────────────────────────────────────────┘', '']
	\ ]

call denite#custom#var('menu', 'menus', s:menus)

catch
	echo 'denite is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry

