"=========================================
" fzf.vim
" https://github.com/junegunn/fzf.vim
"=========================================

try
	" An action can be a reference to a function that processes selected lines
	function! s:build_quickfix_list(lines)
		call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
		copen
		cc
	endfunction

	let g:fzf_action = {
		\ 'ctrl-q': function('s:build_quickfix_list'),
		\ 'ctrl-t': 'tab split',
		\ 'ctrl-x': 'split',
		\ 'ctrl-v': 'vsplit',
		\ 'ctrl-c': 'q'
		\ }

	" Default fzf layout
	" - Popup window
	let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.9, 'height': 0.6 } }
	let $FZF_DEFAULT_OPTS = '-e --layout=reverse --info=inline'

	let g:fzf_tags_command = 'ctags -R'
	" Customize fzf colors to match your color scheme
	" - fzf#wrap translates this to a set of `--color` options
	let g:fzf_colors = {
		\ 'fg':      ['fg', 'Normal'],
		\ 'bg':      ['bg', 'Normal'],
		\ 'hl':      ['fg', 'Comment'],
		\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
		\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
		\ 'hl+':     ['fg', 'Statement'],
		\ 'info':    ['fg', 'PreProc'],
		\ 'border':  ['fg', 'Ignore'],
		\ 'prompt':  ['fg', 'Conditional'],
		\ 'pointer': ['fg', 'Exception'],
		\ 'marker':  ['fg', 'Keyword'],
		\ 'spinner': ['fg', 'Label'],
		\ 'header':  ['fg', 'Comment']
		\ }

	" Enable per-command history
	" - History files will be stored in the specified directory
	" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
	"   'previous-history' instead of 'down' and 'up'.
	let g:fzf_history_dir = '~/.local/share/fzf-history'

	" Mappings
	nnoremap <silent> <space>a  :Ag<CR>
	nnoremap <silent> <space>b  :Buffers<CR>
	nnoremap <silent> <space>bl :BLines<CR>
	nnoremap <silent> <space>c  :Commands<CR>
	nnoremap <silent> <space>co :Colors<CR>
	nnoremap <silent> <space>f  :Files<CR>
	" run git status in curent project
	nnoremap <silent> <space>gs :GFiles?<CR>
	" command history
	nnoremap <silent> <space>h  :History:<CR>
	" MRU files
	nnoremap <silent> <space>m  :History<CR>
	" search history
	nnoremap <silent> <space>s  :History/<CR>
	nnoremap <silent> <space>l  :Lines<CR>

	inoremap <expr> <c-x><c-f>  fzf#vim#complete#path('rg --files')

	nnoremap <silent> <space>gl :call fzf#run({'source': 'git log --pretty=oneline --abbrev-commit',
								\ 'options': '--multi --margin 15%,0',
								\ 'window': { 'width': 0.9, 'height': 0.7 },
								\ 'sink': 'tabedit' })<CR>

	"nnoremap <silent> <space>pu :call fzf#run({'source': ':PlugStatus',
	"							\ 'options': '--multi --margin 15%,0',
	"							\ 'window': { 'width': 0.9, 'height': 0.7 },
	"							\ 'sink': 'tabedit' })<CR>

	" delete buffer based on:
	" https://github.com/junegunn/fzf.vim/pull/733#issuecomment-559720813
	function! s:list_buffers()
		redir => list
		silent ls
		redir END
		return split(list, "\n")
	endfunction

	function! s:delete_buffers(lines)
		execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
	endfunction

	command! BD call fzf#run(fzf#wrap({
				\ 'source': s:list_buffers(),
				\ 'sink*': { lines -> s:delete_buffers(lines) },
				\ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
				\ }))

	nnoremap <silent> <space>bd :BD<CR>

catch
	echo 'fzf.vim is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
