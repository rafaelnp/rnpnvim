" Plugins

" 1 - neobundle.vim
" Configured in the ~/.vim/bundle.vim file

" 2 - genutils
"     http://www.vim.org/scripts/script.php?script_id=197
"
" genutils General utility functions
"
"
" 3 - SelectBuf
"     http://www.vim.org/scripts/script.php?script_id=107
nmap <silent> <F3> <Plug>SelectBuf
let g:selBufDefaultSortOrder  = "name"
let g:selBufDisableMRUlisting = 0
let g:selBufAlwaysShowDetails = 1
let g:selBufAlwaysShowHidden  = 1

" 4 - vimexplorer
"     https://github.com/mbbill/VimExplorer
"
nnoremap <silent> <F7> :VE ~<CR>
let g:VEConf_treePanelWidth = 40
if has('unix')
	let g:VEConf_externalExplorer = "dolphin"
	let g:VEConf_showHiddenFiles  = 0
	let g:VEConf_usingGnome       = 0
	let g:VEConf_usingKDE         = 1
	let g:VEConf_systemEncoding   = 'utf-8'
elseif has('win32' || 'win64')
	let g:VEConf_externalExplorer = "explorer.exe"
	let g:VEConf_systemEncoding   = 'utf-16'
endif

" 5 - ColorSamplerPack
"     http://www.vim.org/scripts/script.php?script_id=625

" 6 - Tagbar
"     https://github.com/majutsushi/tagbar
"     http://majutsushi.github.io/tagbar/
nnoremap <silent> <F8> :TagbarToggle<CR>
let g:tagbar_autoclose   = 1
let g:tagbar_autofocus   = 1
let g:tagbar_sort        = 0
let g:tagbar_iconchars   = ['▾', '▸']
let g:tagbar_autoshowtag = 1

" more examples: https://github.com/majutsushi/tagbar/wiki
let g:tagbar_type_vhdl = {
							\ 'ctagstype': 'vhdl',
							\ 'kinds' : [
							\'d:prototypes',
							\'b:package bodies',
							\'e:entities',
							\'a:architectures',
							\'t:types',
							\'p:processes',
							\'f:functions',
							\'r:procedures',
							\'c:constants',
							\'T:subtypes',
							\'r:records',
							\'C:components',
							\'P:packages',
							\'l:locals'
							\]
						\}

" 7 - Syntastic

let g:syntastic_auto_loc_list = 1
let g:syntastic_mode_map = { 'mode': 'active',
							\ 'active_filetypes':['c',
												\'cpp',
												\'vim',
												\'python',
												\'d',
												\'lua',
												\'matlab',
												\'vhdl',
												\'zsh',
												\'html'],
							\ 'passive_filetypes': [] }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" 8 - Tabular
" TODO: setup config

" 9 - ctrlp
let g:ctrlp_match_window = 'top,order:ttb,min:2,max:10'
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
							\ 'dir':  '\v[\/]\.(git|hg|svn)$',
							\ 'file': '\v\.(exe|so|dll)$',
							\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
							\ }
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
							\ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_user_command = 'find %s -type f'
" open a new file on a tab
let g:ctrlp_open_new_file = 't'

" 10 - numbers
let g:numbers_exclude = ['unite', 'startify', 'gundo', 'vimshell', 'w3m']

" 11 - vim-nerdtree-tabs
map <F9> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup     = 0
let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_no_startup_for_diff     = 0

" 12 - nerdtree
let NERDTreeCaseSensitiveSort = 1
let NERDTreeShowHidden        = 1
let NERDTreeShowLineNumbers   = 1

" 13 - Vividchalk


" 14 - YouCompleteMe
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_filetype_whitelist = {
								\'lua': 1,
								\'verilog': 1,
								\'vhdl': 1,
								\'vim': 1,
								\'python': 1,
								\'c': 1,
								\'cpp': 1,
								\'matlab': 1,
								\'maple': 1,
								\'git': 1,
								\'sh': 1,
								\'tex': 1,
								\'txt': 1,
								\'zsh': 1,
								\}
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'vimwiki' : 1,
      \}
let g:ycm_error_symbol = 'ee'
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
" Configured on .vim/augroup.vim
" let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>

" 15 - Vim-flavoured.markdown
"      https://github.com/jtratner/vim-flavored-markdown
if has("autocmd")
	augroup markdown
		au!
		au BufNewFile,BufRead,BufReadPost,FileReadPost *.md,*.markdown setlocal filetype=ghmarkdown
	augroup END
endif

" 16 - vim-indent-guides
"      https://github.com/nathanaelkane/vim-indent-guides
" don't consider spaces as indentation
let g:indent_guides_space_guides = 0

" enable at startup
let g:indent_guides_enable_on_vim_startup = 1

let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'tagbar']

" 17 - vim-signify
"      https://github.com/mhinz/vim-signify
let g:signify_vcs_list = [ 'git', 'svn', 'hg' ]
let g:signify_update_on_bufenter = 1
let g:signify_sign_change = '~'
let g:signify_sign_delete_first_line = '*'

highlight SignifySignAdd    cterm=bold ctermfg=green
highlight SignifySignDelete cterm=bold ctermfg=red
highlight SignifySignChange cterm=bold ctermfg=blue

highlight SignifySignAdd    gui=bold  guifg=green
highlight SignifySignDelete gui=bold  guifg=red
highlight SignifySignChange gui=bold  guifg=darkorange

" 18 - vim-airline
"      https://github.com/bling/vim-airline
" The powerline symbols need the powerline fonts:
" https://github.com/Lokaltog/powerline-fonts
"
" check whether a dictionary if it exists
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" fix messed up symbols
let g:airline_symbols.space = "\ua0"

" enable/disable enhanced tabline.
let g:airline#extensions#tabline#enabled = 1

" enable/disable displaying buffers with a single tab.
let g:airline#extensions#tabline#show_buffers = 1

" configure how numbers are calculated in tab mode.
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number

" enable paste detection
let g:airline_detect_paste=1

" enable/disable automatic population of the `g:airline_symbols` dictionary
" with powerline symbols.
let g:airline_powerline_fonts=1

" enable/disable fugitive/lawrencium integration
let g:airline#extensions#branch#enabled=1

" change the text for when no branch is detected
let g:airline#extensions#branch#empty_message = ''

" enable/disable eclim integration, which works well with the
" |airline-syntastic| extension. >
let g:airline#extensions#eclim#enabled = 0

" 19 - fugitive
"      https://github.com/tpope/vim-fugitive
" TODO: Configure fugitive

" 20 - ultisnips
"      https://github.com/SirVer/ultisnips
" TODO: FInish configuration

let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"

" 21 - Vimproc
"      https://github.com/Shougo/vimproc.vim
"      Configured in ~/.vim/bundle.vim

" 22 - vimshell.vim
"      https://github.com/Shougo/vimshell.vim
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_vimshrc_path = "expand('~/.vim/.vimshrc')"
let g:vimshell_force_overwrite_statusline = 0
let g:vimshell_temporary_directory = "expand('~/.vim/.vimshell')"

" 23 - Calender.vim
"      https://github.com/itchyny/calendar.vim
" TODO: FInish configuration

" 24 - vim-SystemVerilog
"      https://github.com/WeiChungWu/vim-SystemVerilog
" TODO: FInish configuration

" 25 - vim-vhdl
"      https://github.com/Cognoscan/vim-vhdl
" TODO: FInish configuration

" 26 - vim-easy-align
"      https://github.com/junegunn/vim-easy-align
" TODO: FInish configuration

" 27 - vim-latex
"      https://github.com/jcf/vim-latex
" TODO: FInish configuration

" 28 - vim-easymotion
"      thub.com/Lokaltog/vim-easymotion
" TODO: FInish configuration

