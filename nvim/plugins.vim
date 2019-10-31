"==================
" Installed plugins
"==================

"==========================================
" 1 - armasm
"     https://github.com/vim-scripts/armasm
"==========================================
" Syntax plugin, no config necessary

"============================================
" 2 - badwolf
"     https://github.com/sjl/badwolf
"============================================
" Colorscheme plugin, no config necessary

"============================================
" 3 - calendar.vim
"     https://github.com/itchyny/calendar.vim
"============================================
let g:calendar_date_endian     = "big"
let g:calendar_date_separator  = "."
let g:calendar_first_day       = "monday"
let g:calendar_week_number     = 1
let g:calendar_date_month_name = 1
let g:calendar_views           = ['year', 'month', 'week', 'clock']
let g:calendar_updatetime      = 900
nnoremap <F3>  :Calendar -position=tab<cr>

"========================================================
" 4 - colorsamplerpack
"     http://www.vim.org/scripts/script.php?script_id=625
"========================================================
" Colorscheme plugin, no config necessary

"=====================================================
" 5 - editorconfig
"     https://github.com/editorconfig/editorconfig-vim
"=====================================================

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

"============================================
" 6 - harlequin
"     https://github.com/nielsmadan/harlequin
"============================================
" Colorscheme plugin, no config necessary

"======================================
" 7 - howmuch
"     https://github.com/sk1418/HowMuch
"======================================

"The scale of the result:
let g:HowMuch_scale = 2
"the engine order for auto-calculation
let g:HowMuch_auto_engines = ['bc', 'vim', 'py']

"======================================
" 8 - man
"      runtime/ftplugin/man.vim
"======================================
nnoremap K :Man <cword><cr>

"======================================
" 9 - molokai
"     https://github.com/tomasr/molokai
"======================================
" Colorscheme plugin, no config necessary

"=====================================
" 10 - neomru
"      https://github.com/shougo/neomru
"=====================================
" Configured in unite

"================================================
" 11 - nerdtree
"      https://github.com/scrooloose/nerdtree.git
"================================================

let NERDTreeCaseSensitiveSort = 1
let NERDTreeChDirMode         = 1
let NERDTreeQuitOnOpen        = 0
let NERDTreeShowHidden        = 1
let NERDTreeShowLineNumbers   = 1

if has("win32") || has("win64")
	let NERDTreeIgnore = ['\.DAT$', '\.LOG1$', '\.LOG1$', '\c^ntuser\..*']
endif

"============================================
" 12 - numbers
"      https://github.com/myusuf3/numbers.vim
"============================================
let g:numbers_exclude = ['unite', 'startify', 'gundo', 'undo']

"==========================================
" 13 - tagbar
"      https://github.com/majutsushi/tagbar
"      http://majutsushi.github.io/tagbar/
"==========================================

" TODO: review config
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

let g:tagbar_type_armasm = {
	\ 'ctagsbin'  : 'ctags',
	\ 'ctagsargs' : '-f- --format=2 --excmd=pattern --fields=nksSa --extra= --sort=no --language-force=asm',
	\ 'kinds' : [
		\ 'm:macros:0:1',
		\ 't:types:0:1',
		\ 'd:defines:0:1',
		\ 'l:labels:0:1'
	\ ]
\}

"========================================
" 14 - undotree
"      https://github.com/mbbill/undotree
"========================================
nnoremap <silent> <F6> :UndotreeToggle<CR>
let g:undotree_WindowLayout = 2
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_SplitWidth = 40

"==================================================
" 15 - unite-colorscheme
"      https://github.com/ujihisa/unite-colorscheme
"==================================================
" Configured in unite

"===============================================
" 16 - unite-outline
"      https://github.com/h1mesuke/unite-outline
"===============================================
" Configured in unite

"===========================================
" 17 - denite
"      https://github.com/Shougo/denite.nvim
"===========================================

exec 'source ' . g:nvimdir . 'denite.vim'


"==========================================
" 18 - vim-airline
"      https://github.com/bling/vim-airline
"==========================================

" The powerline symbols need the powerline fonts:
" https://github.com/Lokaltog/powerline-fonts
"
" check whether a dictionary if it exists
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_extensions = ['branch', 'hunks', 'coc', 'tabline']

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Set airline theme manually
let g:airline_theme="papercolor"
" fix messed up symbols
"let g:airline_symbols.space = "\ua0"

" enable/disable enhanced tabline.
let g:airline#extensions#tabline#enabled = 1

" enable/disable displaying buffers with a single tab.
let g:airline#extensions#tabline#show_buffers = 1

" configure how numbers are calculated in tab mode.
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number

" enable paste detection
let g:airline_detect_paste=1

" enable/disable automatic population of the `g:airline_symbols` dictionarky
" with powerline symbols.
let g:airline_powerline_fonts=1

" enable/disable fugitive/lawrencium integration
let g:airline#extensions#branch#enabled=1

" change the text for when no branch is detected
let g:airline#extensions#branch#empty_message = ''

" enable/disable eclim integration, which works well with the
" |airline-syntastic| extension. >
let g:airline#extensions#eclim#enabled = 0

"=================================================
" 23 - vim-easymotion
"      https://gitthub.com/Lokaltog/vim-easymotion
"=================================================

let g:EasyMotion_smartcase = 1

map s <Plug>(easymotion-bd-w)

" JK motions: Line motions
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)

"=======================================================
" 19 - vim-flavoured-markdown
"      https://github.com/jtratner/vim-flavored-markdown
"=======================================================
if has("autocmd")
	augroup markdown
		au!
		au BufNewFile,BufRead,BufReadPost,FileReadPost *.md,*.markdown setlocal filetype=ghmarkdown
	augroup END
endif

"===========================================
" 20 - vim-fugitive
"      https://github.com/tpope/vim-fugitive
"===========================================

"===========================================
" 21 - vim-gnupg
"      https://github.com/jamessan/vim-gnupg
"===========================================
" No adicional config so far

"====================================================
" 21 - vim-nerdtree-tabs
"      https://github.com/jistr/vim-nerdtree-tabs.git
"====================================================

nnoremap <silent> <F9> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup     = 0
let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_no_startup_for_diff     = 0

"==========================================
" 22 - vim-signify
"      https://github.com/mhinz/vim-signify
"==========================================

let g:signify_vcs_list = [ 'git', 'svn', 'hg' ]
let g:signify_update_on_bufenter = 0
let g:signify_sign_change = '~'
let g:signify_sign_delete_first_line = '*'
let g:signify_update_on_focusgained = 0

nnoremap <leader>gj <plug>(signify-next-hunk)
nnoremap <leader>gk <plug>(signify-prev-hunk)

highlight SignifySignAdd    cterm=bold ctermfg=green
highlight SignifySignDelete cterm=bold ctermfg=red
highlight SignifySignChange cterm=bold ctermfg=blue

highlight SignifySignAdd    gui=bold  guifg=green
highlight SignifySignDelete gui=bold  guifg=red
highlight SignifySignChange gui=bold  guifg=darkorange

"===========================================
" 23 - vim-startify
"      https://github.com/mhinz/vim-startify
"===========================================

let g:startify_files_number = 5

highlight StartifyFooter  ctermfg=green
highlight StartifyFooter  guifg=green
highlight StartifyHeader  ctermfg=red
highlight StartifyHeader  guifg=red

let g:startify_skiplist = [
		\ 'COMMIT_EDITMSG',
		\ $VIMRUNTIME .'/doc',
		\ 'bundle/.*/doc',
		\ '\.DS_Store'
		\ ]

let g:startify_bookmarks = [
			\g:nvimdir . 'abbrev.vim',
			\g:nvimdir . 'augroup.vim',
			\g:nvimdir . 'config.vim',
			\g:nvimdir . 'denite.vim',
			\g:nvimdir . 'functions.vim',
			\g:nvimdir . 'init.vim',
			\g:nvimdir . 'mappings.vim',
			\g:nvimdir . 'plugins.vim',
			\g:nvimdir . 'vim-plug.vim'
			\]

" ascii text: http://patorjk.com/software/taag/
let g:startify_custom_header = [
			\'      _   _                 _            ',
			\'     | \ | | ___  _____   _(_)_ __ ___   ',
			\'     |  \| |/ _ \/ _ \ \ / / | ` _ ` _ \ ',
			\'     | |\  |  __/ (_) \ V /| | | | | | | ',
			\'     |_| \_|\___|\___/ \_/ |_|_| |_| |_| ',
			\'                                         ',
			\ '',
			\ ]

let g:startify_custom_footer = [
	\ '',
	\'   “It is not that I am so smart ,it is just that I stay with problems longer.”',
	\ '   Albert Einstein',
	\ '',
	\ ]

"if has('gui_running')
"	call SetWindowSize()
"endif

"===========================================
" 25 - vim-vhdl
"      https://github.com/Cognoscan/vim-vhdl
"===========================================
" Syntax plugin, no config necessary

"=============================================
" 26 - vividchalk
"      https://github.com/tpope/vim-vividchalk
"=============================================
" Colorscheme plugin, no config necessary

"===========================================
" 27 - vimexplorer
"      https://github.com/mbbill/VimExplorer
"===========================================

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

"============================================
" 28 - Vinarise
"      https://github.com/Shougo/vinarise.vim
"============================================

let g:vinarise_enable_auto_detect = 1
let g:vinarise_detect_large_file_size = 1000000
cabbrev vimhex  Vinarise -split -encoding=utf-8<CR>
nnoremap <leader>vv  :Vinarise -split -encoding=utf-8<CR>

"=====================================================
" 29 - Vim ESearch
"      https://github.com/eugen0329/vim-esearch
"=====================================================

let g:esearch = {
  \ 'adapter':    'ag',
  \ 'backend':    'nvim',
  \ 'out':        'qflist',
  \ 'batch_size': 1000,
  \ 'use':        ['visual', 'hlsearch', 'last'],
  \}


"=====================================================
" 30 - guterntag
"      https://github.com/ludovicchabant/vim-gutentags
"=====================================================

set statusline+=%{gutentags#statusline()}

"=====================================================
" 31 - far.vim
"      https://github.com/brooth/far.vim
"=====================================================


"=====================================================
" 32 - vim-filebeagle
"      https://github.com/jeetsukumaran/vim-filebeagle
"=====================================================
let g:filebeagle_show_hidden=1
let g:filebeagle_show_line_numbers=1


"=====================================================
" 33 - coc.nvim and related configuration
"=====================================================

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
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
autocmd CursorHold * silent call CocActionAsync('highlight')

" correct json comment highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+

nmap ce :CocCommand explorer<CR>

"=====================================================
" vim-devicons
"=====================================================

" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" Adding the custom source to denite
let g:webdevicons_enable_denite = 1

" set a byte character marker (BOM) utf-8 symbol when retrieving file encoding
" disabled by default with no value
let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = ''

" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1

" adding the column to vimfiler
let g:webdevicons_enable_vimfiler = 1

" adding to vim-startify screen
let g:webdevicons_enable_startify = 1

