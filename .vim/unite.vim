"=========================================
" 17 - Unite
"      https://github.com/Shougo/unite.vim
"=========================================
" TODO: Finish configuration

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

let g:unite_prompt = '» '
let g:unite_source_history_yank_enable = 1

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
"  " Overwrite settings.
"
"  imap <buffer> jj      <Plug>(unite_insert_leave)
"  "imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)
"
"  imap <buffer><expr> j unite#smart_map('j', '')
"  imap <buffer> <TAB>   <Plug>(unite_select_next_line)
"  imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)
"  imap <buffer> '     <Plug>(unite_quick_match_default_action)
"  nmap <buffer> '     <Plug>(unite_quick_match_default_action)
"  imap <buffer><expr> x
"          \ unite#smart_map('x', "\<Plug>(unite_quick_match_choose_action)")
"  nmap <buffer> x     <Plug>(unite_quick_match_choose_action)
"  nmap <buffer> <C-z>     <Plug>(unite_toggle_transpose_window)
"  imap <buffer> <C-z>     <Plug>(unite_toggle_transpose_window)
"  imap <buffer> <C-y>     <Plug>(unite_narrowing_path)
"  nmap <buffer> <C-y>     <Plug>(unite_narrowing_path)
"  nmap <buffer> <C-j>     <Plug>(unite_toggle_auto_preview)
"  nmap <buffer> <C-r>     <Plug>(unite_narrowing_input_history)
"  imap <buffer> <C-r>     <Plug>(unite_narrowing_input_history)
"  nnoremap <silent><buffer><expr> l
"          \ unite#smart_map('l', unite#do_action('default'))
"
"  let unite = unite#get_current_unite()
"  if unite.profile_name ==# 'search'
"    nnoremap <silent><buffer><expr> r     unite#do_action('replace')
"  else
"    nnoremap <silent><buffer><expr> r     unite#do_action('rename')
"  endif
"
"  nnoremap <silent><buffer><expr> cd     unite#do_action('lcd')
"  nnoremap <buffer><expr> S      unite#mappings#set_current_filters(
"          \ empty(unite#mappings#get_current_filters()) ?
"          \ ['sorter_reverse'] : [])
"
"  " Runs "split" action by <C-s>.
"  imap <silent><buffer><expr> <C-s>     unite#do_action('split')
	imap <buffer> <C-j> <Plug>(unite_select_next_line)
	imap <buffer> <C-k> <Plug>(unite_select_previous_line)
	imap <buffer> <c-a> <Plug>(unite_choose_action)

	nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction

" The prefix key.
nnoremap [unite] <Nop>
nmap <space> [unite]
"
" General purpose - list all sources
nnoremap [unite]<space> :Unite -no-split -start-insert source<cr>

nnoremap [unite]p :Unite file_rec/async<cr>
nnoremap [unite]/ :Unite grep:.<cr>
nnoremap [unite]y :Unite history/yank<cr>
nnoremap [unite]b :Unite buffer<cr>
nnoremap [unite]r :<C-u>Unite -start-insert file_rec/async:!<CR>
nnoremap [unite]M :Unite -quick-match colorscheme<CR>
nnoremap [unite]t :<C-u>Unite -buffer-name=buffer  buffer<cr>

" show document outline
map [unite]o :Unite -no-split -auto-preview outline<CR>

" line search
nnoremap [unite]l :Unite -no-split -start-insert line<cr>

nnoremap <silent> [unite]c  :<C-u>UniteWithCurrentDir
        \ -buffer-name=files buffer bookmark file<CR>

" list mappings
nnoremap <silent> [unite]ma :<C-u>Unite mapping<CR>

nnoremap [unite]F :Unite -no-split buffer tab file_mru directory_mru<cr>
" Quickly switch between recent things
nnoremap <silent> [unite]m :Unite -buffer-name=recent -winheight=15 file_mru<cr>

"nnoremap <silent> [unite]b  :<C-u>UniteWithBufferDir
"        \ -buffer-name=files -prompt=%\  buffer bookmark file<CR>
"nnoremap <silent> [unite]r  :<C-u>Unite
"        \ -buffer-name=register register<CR>
"nnoremap <silent> [unite]f :<C-u>Unite -buffer-name=resume resume<CR>
"nnoremap <silent> [unite]me :<C-u>Unite output:message<CR>
"
"" Start insert.
"let g:unite_enable_start_insert = 1
"let g:unite_enable_short_source_names = 1
"
"let g:unite_cursor_line_highlight = 'TabLineSel'
"let g:unite_abbr_highlight = 'TabLine'
