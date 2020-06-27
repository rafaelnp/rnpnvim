"=====================================================
" coc.nvim and related configuration
" https://github.com/neoclide/coc.nvim
"=====================================================

try
	" TODO: review plguin config

	" set explictly coc config and data directories. When using windows 10 +
	" user network share it points to it, instead of user home directory
	let g:coc_config_home  = g:nvimdir
	let g:coc_data_home  = g:nvimdir . 'coc'

	" install extensions
	let g:coc_global_extensions = [
		\ 'coc-actions',
		\ 'coc-diagnostic',
		\ 'coc-explorer',
		\ 'coc-json',
		\ 'coc-marketplace',
		\ 'coc-markdownlint',
		\ 'coc-texlab',
		\ 'coc-utils',
		\ 'coc-vimlsp',
		\ 'coc-xml',
		\ 'coc-yank',
		\ ]

	" 1 - suggested configuration from coc.nvim wiki
	" Use tab for trigger completion with characters ahead and navigate.
	" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
	" other plugin before putting this into your config.
	inoremap <silent><expr> <TAB>
		\ pumvisible() ? "\<C-n>" :
		\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
		\ <SID>check_back_space() ? "\<TAB>" :
		\ coc#refresh()

	inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

	function! s:check_back_space() abort
		let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

	" Use <c-space> to trigger completion.
	inoremap <silent><expr> <c-space> coc#refresh()

	" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
	" position. Coc only does snippet and additional edit on confirm.
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

	" Use `[c` and `]c` to navigate diagnostics
	nmap <silent> [c <Plug>(coc-diagnostic-prev)
	nmap <silent> ]c <Plug>(coc-diagnostic-next)

	" Remap keys for gotos
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	" Use K to show documentation in preview window
	nnoremap <silent> K :call <SID>show_documentation()<CR>

	function! s:show_documentation()
		if (index(['vim','help'], &filetype) >= 0)
			execute 'h '.expand('<cword>')
		else
			call CocAction('doHover')
		endif
	endfunction

	" Highlight symbol under cursor on CursorHold
	autocmd CursorHold  * silent call CocActionAsync('highlight')
	autocmd CursorHoldI * silent call CocActionAsync('showSignatureHelp')

	" Symbol renaming.
	nmap <leader>rn <Plug>(coc-rename)

	" Formatting selected code.
	xmap <leader>f  <Plug>(coc-format-selected)
	nmap <leader>f  <Plug>(coc-format-selected)

	augroup mygroup
	  autocmd!
	  " Setup formatexpr specified filetype(s).
	  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	  " Update signature help on jump placeholder.
	  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
	augroup end


	" Applying codeAction to the selected region.
	" Example: `<leader>aap` for current paragraph
	xmap <leader>a  <Plug>(coc-codeaction-selected)
	nmap <leader>a  <Plug>(coc-codeaction-selected)

	" Remap keys for applying codeAction to the current line.
	nmap <leader>ac  <Plug>(coc-codeaction)
	" Apply AutoFix to problem on the current line.
	nmap <leader>qf  <Plug>(coc-fix-current)

	" Introduce function text object
	" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
	xmap if <Plug>(coc-funcobj-i)
	xmap af <Plug>(coc-funcobj-a)
	omap if <Plug>(coc-funcobj-i)
	omap af <Plug>(coc-funcobj-a)

	" Use <TAB> for selections ranges.
	" NOTE: Requires 'textDocument/selectionRange' support from the language server.
	" coc-tsserver, coc-python are the examples of servers that support it.
	nmap <silent> <TAB> <Plug>(coc-range-select)
	xmap <silent> <TAB> <Plug>(coc-range-select)

	" Add `:Format` command to format current buffer.
	command! -nargs=0 Format :call CocAction('format')

	" Add `:Fold` command to fold current buffer.
	command! -nargs=? Fold :call     CocAction('fold', <f-args>)

	" Add `:OR` command for organize imports of the current buffer.
	command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

	" Add (Neo)Vim's native statusline support.
	" NOTE: Please see `:h coc-status` for integrations with external plugins that
	" provide custom statusline: lightline.vim, vim-airline.
	set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


	" 2 - coc extentions

	nnoremap <a-e> :CocCommand explorer<CR>

	"
	" 3 - coc-snippets
	"

	" Use <C-l> for trigger snippet expand.
	imap <C-l> <Plug>(coc-snippets-expand)

	" Use <C-j> for select text for visual placeholder of snippet.
	vmap <C-j> <Plug>(coc-snippets-select)
	"let g:coc_snippet_next = '<tab>'

	" Use <C-j> for both expand and jump (make expand higher priority.)
	imap <C-j> <Plug>(coc-snippets-expand-jump)
	" Remap for rename current word
	nmap <leader>rn <Plug>(coc-rename)


	"
	" 4 - ccls-config
	"
	" bases
	nn <silent> xb :call CocLocations('ccls','$ccls/inheritance')<cr>
	" bases of up to 3 levels
	nn <silent> xB :call CocLocations('ccls','$ccls/inheritance',{'levels':3})<cr>
	" derived
	nn <silent> xd :call CocLocations('ccls','$ccls/inheritance',{'derived':v:true})<cr>
	" derived of up to 3 levels
	nn <silent> xD :call CocLocations('ccls','$ccls/inheritance',{'derived':v:true,'levels':3})<cr>

	" caller
	nn <silent> xc :call CocLocations('ccls','$ccls/call')<cr>
	" callee
	nn <silent> xC :call CocLocations('ccls','$ccls/call',{'callee':v:true})<cr>

	" $ccls/member
	" member variables / variables in a namespace
	nn <silent> xm :call CocLocations('ccls','$ccls/member')<cr>
	" member functions / functions in a namespace
	nn <silent> xf :call CocLocations('ccls','$ccls/member',{'kind':3})<cr>
	" nested classes / types in a namespace
	nn <silent> xs :call CocLocations('ccls','$ccls/member',{'kind':2})<cr>

	nn <silent> xv :call CocLocations('ccls','$ccls/vars')<cr>
	nn <silent> xV :call CocLocations('ccls','$ccls/vars',{'kind':1})<cr> bases
	nn <silent> xb :call CocLocations('ccls','$ccls/inheritance')<cr>
	" bases of up to 3 levels
	nn <silent> xB :call CocLocations('ccls','$ccls/inheritance',{'levels':3})<cr>
	" derived
	nn <silent> xd :call CocLocations('ccls','$ccls/inheritance',{'derived':v:true})<cr>
	" derived of up to 3 levels
	nn <silent> xD :call CocLocations('ccls','$ccls/inheritance',{'derived':v:true,'levels':3})<cr>

	" caller
	nn <silent> xc :call CocLocations('ccls','$ccls/call')<cr>
	" callee
	nn <silent> xC :call CocLocations('ccls','$ccls/call',{'callee':v:true})<cr>

	" $ccls/member
	" member variables / variables in a namespace
	nn <silent> xm :call CocLocations('ccls','$ccls/member')<cr>
	" member functions / functions in a namespace
	nn <silent> xf :call CocLocations('ccls','$ccls/member',{'kind':3})<cr>
	" nested classes / types in a namespace
	nn <silent> xs :call CocLocations('ccls','$ccls/member',{'kind':2})<cr>

	"nmap <silent> xt <Plug>(coc-type-definition)<cr>
	nn <silent> xv :call CocLocations('ccls','$ccls/vars')<cr>
	nn <silent> xV :call CocLocations('ccls','$ccls/vars',{'kind':1})<cr>

	" navigate
	nn <silent><buffer> <C-l> :call CocLocations('ccls','$ccls/navigate',{'direction':'D'})<cr>
	nn <silent><buffer> <C-k> :call CocLocations('ccls','$ccls/navigate',{'direction':'L'})<cr>
	nn <silent><buffer> <C-j> :call CocLocations('ccls','$ccls/navigate',{'direction':'R'})<cr>
	nn <silent><buffer> <C-h> :call CocLocations('ccls','$ccls/navigate',{'direction':'U'})<cr>
catch
	echo 'coc.nvim is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry
