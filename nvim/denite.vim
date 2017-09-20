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

"" General purpose - list all sources
nnoremap [denite]p :Denite file_rec line<cr>
"nnoremap [denite]/ :Denite grep:.<cr>
"nnoremap [denite]y :Denite history/yank<cr>
nnoremap [denite]b :Denite buffer<cr>
"nnoremap [denite]r :<C-u>Denite -start-insert file_rec/async:!<CR>
"nnoremap [denite]M :Denite -quick-match colorscheme<CR>
"nnoremap [denite]t :<C-u>Denite -buffer-name=buffer  buffer<cr>
"" show document outline
nnoremap [denite]o :Denite -no-split -auto-preview outline<CR>
"
"" line search
"nnoremap [denite]l :Denite -no-split -start-insert line<cr>
"
"nnoremap <silent> [denite]c  :<C-u>DeniteWithCurrentDir
"        \ -buffer-name=files buffer bookmark file<CR>
"
"" list mappings
"nnoremap <silent> [denite]ma :<C-u>Denite mapping<CR>
"
"nnoremap [denite]F :Denite -no-split buffer tab file_mru directory_mru<cr>
"" Quickly switch between recent things
"nnoremap <silent> [denite]m :Denite -buffer-name=recent -winheight=15 file_mru<cr>
"
"nnoremap <silent> [denite]f :<C-u>Denite -buffer-name=resume resume<CR>
"nnoremap <silent> [denite]me :<C-u>Denite output:message<CR>
