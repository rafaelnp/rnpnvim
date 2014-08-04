" Plugins

" 1 - neobundle.vim
"     Configured in the ~/.vim/bundle.vim file

" 2 - genutils
"     http://www.vim.org/scripts/script.php?script_id=197
"
" genutils General utility functions
"
"
" 3 - SelectBuf
"     http://www.vim.org/scripts/script.php?script_id=107
"nmap <silent> <F3> <Plug>SelectBuf
"let g:selBufDefaultSortOrder  = "name"
"let g:selBufDisableMRUlisting = 0
"let g:selBufAlwaysShowDetails = 1
"let g:selBufAlwaysShowHidden  = 1
"
" 4 - vimexplorer
"     https://github.com/mbbill/VimExplorer
"
"nnoremap <silent> <F7> :VE ~<CR>
"let g:VEConf_treePanelWidth = 40
"if has('unix')
"	let g:VEConf_externalExplorer = "dolphin"
"	let g:VEConf_showHiddenFiles  = 0
"	let g:VEConf_usingGnome       = 0
"	let g:VEConf_usingKDE         = 1
"	let g:VEConf_systemEncoding   = 'utf-8'
"elseif has('win32' || 'win64')
"	let g:VEConf_externalExplorer = "explorer.exe"
"	let g:VEConf_systemEncoding   = 'utf-16'
"endif

" 5 - ColorSamplerPack
"     http://www.vim.org/scripts/script.php?script_id=625

" 6 - Tagbar
"     https://github.com/majutsushi/tagbar
"     http://majutsushi.github.io/tagbar/
"nnoremap <silent> <F8> :TagbarToggle<CR>
"let g:tagbar_autoclose   = 1
"let g:tagbar_autofocus   = 1
"let g:tagbar_sort        = 0
"let g:tagbar_iconchars   = ['▾', '▸']
"let g:tagbar_autoshowtag = 1

" more examples: https://github.com/majutsushi/tagbar/wiki
"let g:tagbar_type_vhdl = {
"							\ 'ctagstype': 'vhdl',
"							\ 'kinds' : [
"							\'d:prototypes',
"							\'b:package bodies',
"							\'e:entities',
"							\'a:architectures',
"							\'t:types',
"							\'p:processes',
"							\'f:functions',
"							\'r:procedures',
"							\'c:constants',
"							\'T:subtypes',
"							\'r:records',
"							\'C:components',
"							\'P:packages',
"							\'l:locals'
"							\]
"						\}

" 8 - numbers
"let g:numbers_exclude = ['unite', 'startify', 'gundo', 'vimshell', 'w3m']

" 9 - vim-nerdtree-tabs
"map <F9> :NERDTreeTabsToggle<CR>
"let g:nerdtree_tabs_open_on_gui_startup     = 0
"let g:nerdtree_tabs_open_on_console_startup = 0
"let g:nerdtree_tabs_no_startup_for_diff     = 0

" 10 - nerdtree
"let NERDTreeCaseSensitiveSort = 1
"let NERDTreeShowHidden        = 1
"let NERDTreeShowLineNumbers   = 1

" 11 - Vividchalk


" 12 - YouCompleteMe
"let g:ycm_min_num_of_chars_for_completion = 3
"let g:ycm_min_num_identifier_candidate_chars = 2
"let g:ycm_filetype_whitelist = {
"								\'lua': 1,
"								\'verilog': 1,
"								\'vhdl': 1,
"								\'vim': 1,
"								\'python': 1,
"								\'c': 1,
"								\'cpp': 1,
"								\'matlab': 1,
"								\'maple': 1,
"								\'git': 1,
"								\'sh': 1,
"								\'tex': 1,
"								\'txt': 1,
"								\'zsh': 1,
"								\}
"let g:ycm_filetype_blacklist = {
"      \ 'tagbar' : 1,
"      \ 'qf' : 1,
"      \ 'notes' : 1,
"      \ 'markdown' : 1,
"      \ 'unite' : 1,
"      \ 'vimwiki' : 1,
"      \}

"let g:ycm_enable_diagnostic_signs = 0
"let g:ycm_open_loclist_on_ycm_diags = 0
"let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<Enter>']
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_semantic_triggers =  {
"  \   'c' : ['->', '.'],
"  \   'objc' : ['->', '.'],
"  \   'ocaml' : ['.', '#'],
"  \   'cpp,objcpp' : ['->', '.', '::'],
"  \   'perl' : ['->'],
"  \   'php' : ['->', '::'],
"  \   'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
"  \   'ruby' : ['.', '::'],
"  \   'lua' : ['.', ':'],
"  \   'erlang' : [':'],
"  \   'latex' : ['\'],
"  \ }

"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>

" 13 - Vim-flavoured.markdown
"      https://github.com/jtratner/vim-flavored-markdown
"if has("autocmd")
"	augroup markdown
"		au!
"		au BufNewFile,BufRead,BufReadPost,FileReadPost *.md,*.markdown setlocal filetype=ghmarkdown
"	augroup END
"endif

" 14 - vim-indent-guides
""      https://github.com/nathanaelkane/vim-indent-guides
"" don't consider spaces as indentation
"let g:indent_guides_space_guides = 0
"
"" enable at startup
"let g:indent_guides_enable_on_vim_startup = 1
"
"let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'tagbar']
"
"
" 14 - vim-signify
"      https://github.com/mhinz/vim-signify
let g:signify_vcs_list = [ 'git', 'svn', 'hg' ]
let g:signify_update_on_bufenter = 1
let g:signify_sign_change = '~'
let g:signify_sign_delete_first_line = '*'
let g:signify_update_on_focusgained = 1

highlight SignifySignAdd    cterm=bold ctermfg=green
highlight SignifySignDelete cterm=bold ctermfg=red
highlight SignifySignChange cterm=bold ctermfg=blue

highlight SignifySignAdd    gui=bold  guifg=green
highlight SignifySignDelete gui=bold  guifg=red
highlight SignifySignChange gui=bold  guifg=darkorange

" 16 - vim-airline
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

" 17 - fugitive
"      https://github.com/tpope/vim-fugitive
" TODO: Configure fugitive

" 18 - ultisnips
"      https://github.com/SirVer/ultisnips
" TODO: Finish configuration
"let g:UltiSnipsExpandTrigger="<c-l>"
"let g:UltiSnipsListSnippets="<c-h>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetsDir="~/.vim/ultisnips"
"let g:UltiSnipsSnippetDirectories=["UltiSnips", "ultisnips"]

" 19 - Vimproc
"      https://github.com/Shougo/vimproc.vim
"      Configured in ~/.vim/bundle.vim

" 20 - vimshell.vim
"      https://github.com/Shougo/vimshell.vim
"let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
"let g:vimshell_vimshrc_path = "expand('~/.vim/.vimshrc')"
"let g:vimshell_force_overwrite_statusline = 0
"let g:vimshell_temporary_directory = "expand('~/.vim/.vimshell')"

" 21 - Calender.vim
"      https://github.com/itchyny/calendar.vim
" TODO: FInish configuration

" 22 - vim-SystemVerilog
"      https://github.com/WeiChungWu/vim-SystemVerilog
" TODO: FInish configuration

" 23 - vim-vhdl
"      https://github.com/Cognoscan/vim-vhdl
" TODO: FInish configuration

" 24 - vim-easy-align
"      https://github.com/junegunn/vim-easy-align
" TODO: FInish configuration

" 25 - vim-latex
"      https://github.com/jcf/vim-latex
" TODO: FInish configuration

" 26 - vim-easymotion
"      https://gitthub.com/Lokaltog/vim-easymotion
" TODO: FInish configuration

" 27 - Vinarise
"      https://github.com/Shougo/vinarise.vim
let g:vinarise_detect_large_file_size = 1000000
cabbrev vimhex  Vinarise -split<CR>

" 28  - Rainbow Parenthesis Improved
"       https://github.com/oblitum/rainbow
au FileType c,cpp,objc,objcpp call rainbow#load()
" let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.c' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

" 29 - Unite
"      https://github.com/Shougo/unite.vim
nnoremap <C-p> :Unite file_rec/async<cr>
nnoremap <Leader>/ :Unite grep:.<cr>
let g:unite_source_history_yank_enable = 1
nnoremap <Leader>y :Unite history/yank<cr>
nnoremap <Leader>s :Unite -quick-match -auto-preview buffer<cr>
nnoremap <leader>r :<C-u>Unite -start-insert file_rec/async:!<CR>

" The prefix key.
"nnoremap    [unite]   <Nop>
"nmap    f [unite]
"
"nnoremap <silent> [unite]c  :<C-u>UniteWithCurrentDir
"        \ -buffer-name=files buffer bookmark file<CR>
"nnoremap <silent> [unite]b  :<C-u>UniteWithBufferDir
"        \ -buffer-name=files -prompt=%\  buffer bookmark file<CR>
"nnoremap <silent> [unite]r  :<C-u>Unite
"        \ -buffer-name=register register<CR>
"nnoremap <silent> [unite]o  :<C-u>Unite outline<CR>
"nnoremap <silent> [unite]f
"        \ :<C-u>Unite -buffer-name=resume resume<CR>
"nnoremap <silent> [unite]ma
"        \ :<C-u>Unite mapping<CR>
"nnoremap <silent> [unite]me
"        \ :<C-u>Unite output:message<CR>
"nnoremap  [unite]f  :<C-u>Unite source<CR>
"
"nnoremap <silent> [unite]s
"        \ :<C-u>Unite -buffer-name=files -no-split
"        \ jump_point file_point buffer_tab
"        \ file_rec:! file file/new<CR>
"
"" Start insert.
"let g:unite_enable_start_insert = 1
"let g:unite_enable_short_source_names = 1
"
"" Prompt choices.
"let g:unite_prompt = '❫ '
"let g:unite_prompt = '» '
"
"autocmd FileType unite call s:unite_my_settings()
"function! s:unite_my_settings()"{{{
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
"endfunction"}}}
"
"let g:unite_cursor_line_highlight = 'TabLineSel'
"let g:unite_abbr_highlight = 'TabLine'


" 30 - Startify
"      https://github.com/mhinz/vim-startify
"let g:startify_files_number = 5
"
"let g:startify_bookmarks = [
"			\'~/.vimrc',
"			\'~/.vim/abbrev.vim',
"			\'~/.vim/augroup.vim',
"			\'~/.vim/config.vim',
"			\'~/.vim/mappings.vim',
"			\'~/.vim/neobundle.vim',
"			\'~/.vim/plugins.vim'
"			\]
"
"let g:startify_custom_header = [
"			\'     __      ___             ______ _  _',
"			\'     \ \    / (_)           |____  | || |',
"			\'      \ \  / / _ _ __ ___       / /| || |_',
"			\'       \ \/ / | | `_ ` _ \     / / |__   _|',
"			\'        \  /  | | | | | | |   / / _   | |',
"			\'         \/   |_|_| |_| |_|  /_/ (_)  |_|',
"			\ '',
"			\ ]
"
"let g:startify_custom_footer = [
"	\ '',
"	\'   “It is not that I am so smart ,it is just that I stay with problems longer.”',
"	\ '   Albert Einstein',
"	\ '',
"	\ ]
"
"highlight StartifyFooter  ctermfg=yellow
"highlight StartifyFooter  guifg=yellow
"highlight StartifyHeader  ctermfg=red
"highlight StartifyHeader  guifg=red
"
"let g:startify_skiplist = [
"		\ 'COMMIT_EDITMSG',
"		\ $VIMRUNTIME .'/doc',
"		\ 'bundle/.*/doc',
"		\ '\.DS_Store'
"		\ ]
"
"call SetWindowSize()
