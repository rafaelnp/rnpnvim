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
nnoremap [denite]r :<C-u>Denite file_rec/async:!<CR>
nnoremap [denite]M :Denite colorscheme<CR>
nnoremap [denite]t :<C-u>Denite -buffer-name=buffer  buffer<cr>

" show document outline
nnoremap [denite]o :Denite  -auto-preview outline<CR>

nnoremap <silent> [denite]me :<C-u>Denite output:message<CR>
