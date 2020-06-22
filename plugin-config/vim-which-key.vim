"============================================
" vim-whick-key
" https://github.com/liuchengxu/vim-which-key
" http://liuchengxu.org/vim-which-key
"============================================

try
	" Create map to add keys to
	let g:which_key_map =  {}
	" Define a separator
	let g:which_key_sep = '→'

	" By default timeoutlen is 1000 ms
	set timeoutlen=500

	" Hide status line
	"autocmd! FileType which_key
	"autocmd  FileType which_key set laststatus=0 noshowmode noruler
	"	\| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

	" Single mappings
	let g:which_key_map['/'] = [ ':Commentary'  , 'comment' ]
	let g:which_key_map['.'] = [ ':e $MYVIMRC'                , 'open init' ]
	let g:which_key_map['='] = [ '<C-W>='                     , 'balance windows' ]
	let g:which_key_map[','] = [ 'Startify'                   , 'start screen' ]
	let g:which_key_map['d'] = [ ':bd'                        , 'delete buffer']
	let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
	let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
	let g:which_key_map['q'] = [ 'q'                          , 'quit' ]
	let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
	let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
	let g:which_key_map['W'] = [ 'w'                          , 'write' ]
	let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]


" c is for language server protocol
	let g:which_key_map.c = {
		\ 'name' : '+coc.nvim' ,
		\ '.' : [':CocConfig'                          , 'config'],
		\ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
		\ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
		\ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
		\ 'b' : [':CocNext'                            , 'next action'],
		\ 'B' : [':CocPrev'                            , 'prev action'],
		\ 'c' : [':CocList commands'                   , 'commands'],
		\ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
		\ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
		\ 'e' : [':CocList extensions'                 , 'extensions'],
		\ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
		\ 'F' : ['<Plug>(coc-format)'                  , 'format'],
		\ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
		\ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
		\ 'I' : [':CocList diagnostics'                , 'diagnostics'],
		\ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
		\ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
		\ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
		\ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
		\ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],
		\ 'O' : [':CocList outline'                    , 'outline'],
		\ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
		\ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
		\ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
		\ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
		\ 'R' : ['<Plug>(coc-references)'              , 'references'],
		\ 's' : [':CocList -I symbols'                 , 'references'],
		\ 'S' : [':CocList snippets'                   , 'snippets'],
		\ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
		\ 'u' : [':CocListResume'                      , 'resume list'],
		\ 'U' : [':CocUpdate'                          , 'update CoC'],
		\ 'v' : [':Vista!!'                            , 'tag viewer'],
		\ 'z' : [':CocDisable'                         , 'disable CoC'],
		\ 'Z' : [':CocEnable'                          , 'enable CoC'],
		\ }

	" TODO: add g:which_key_map.d for denite
	let g:which_key_map.d = {
		\ 'name' : '+denite' ,
		\ 'b' : [':Denite buffer'                        , 'buffers'],
		\}

	" g is for git
	let g:which_key_map.g = {
		\ 'name' : '+git' ,
		\ 'a' : [':Git add .'                        , 'add all'],
		\ 'A' : [':Git add %'                        , 'add current'],
		\ 'b' : [':Git blame'                        , 'blame'],
		\ 'B' : [':GBrowse'                          , 'browse'],
		\ 'c' : [':Git commit'                       , 'commit'],
		\ 'd' : [':Git diff'                         , 'diff'],
		\ 'D' : [':Gdiffsplit'                       , 'diff split'],
		\ 'g' : [':GGrep'                            , 'git grep'],
		\ 'G' : [':Gstatus'                          , 'status'],
		\ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
		\ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
		\ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
		\ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
		\ 'l' : [':Git log'                          , 'log'],
		\ 'p' : [':Git push'                         , 'push'],
		\ 'P' : [':Git pull'                         , 'pull'],
		\ 'r' : [':GRemove'                          , 'remove'],
		\ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
		\ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
		\ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
		\ 'v' : [':GV'                               , 'view commits'],
		\ 'V' : [':GV!'                              , 'view buffer commits'],
		\ }

	" TODO: add g:which_key_map.m for mdxk (markdown)

	" rnpvim config files
	let g:which_key_map.r = {
		\ 'name' : '+rnpvim' ,
		\ 'G' : [':tabedit ' . g:nvimdir . '.gitignore'    , 'gitignore'],
		\ 'E' : [':tabedit ' . g:nvimdir . '.editorconfig' , 'editorconfig'],
		\ 'a' : [':tabedit ' . g:nvimdir . 'abbrev.vim'    , 'abbreviations'],
		\ 'i' : [':tabedit ' . g:nvimdir . 'init.vim'      , 'init.vim'],
		\ 'c' : [':tabedit ' . g:nvimdir . 'config.vim'    , 'config.vim'],
		\ 'f' : [':tabedit ' . g:nvimdir . 'functions.vim' , 'functions'],
		\ 'g' : [':tabedit ' . g:nvimdir . 'ginit.vim'     , 'gui neovim'],
		\ 'm' : [':tabedit ' . g:nvimdir . 'mappings.vim'  , 'mappings'],
		\ 'M' : [':tabedit ' . g:nvimdir . 'minimal.vim'   , 'minimal config'],
		\ 'P' : [':tabedit ' . g:nvimdir . 'plugins.vim'   , 'plugin list'],
		\ 'r' : [':tabedit ' . g:nvimdir . 'README.md'     , 'README'],
		\ 'v' : [':tabedit ' . g:nvimdir . 'vim-plug.vim'  , 'vim-plug'],
		\ }

	" rnpvim config files
	" TODO: use floaterm to list files in the plugin-config directory
	let g:which_key_map.r.p = {
		\ 'name' : '+plugin config' ,
		\ 'w' : [':tabedit ' . g:nvimdir . 'plugin-config/vim-which-key.vim'      , 'vim-which-key'],
		\ }
	" terminal group
	let g:which_key_map.t = {
		\ 'name' : '+terminal' ,
		\ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
		\ 'f' : [':FloatermNew fzf'                               , 'fzf'],
		\ 'g' : [':FloatermNew lazygit'                           , 'git'],
		\ 'p' : [':FloatermNew python'                            , 'python'],
		\ 'r' : [':FloatermNew ranger'                            , 'ranger'],
		\ 't' : [':FloatermToggle'                                , 'toggle'],
		\ 'y' : [':FloatermNew ytop'                              , 'ytop'],
		\ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
		\ }

	" Register which key map
	call which_key#register(',', "g:which_key_map")

	nnoremap <silent> <leader>      :<c-u>WhichKey ','<CR>
	vnoremap <silent> <localleader> :<c-u>hichKeyVisual '´'<CR>
catch
	echo ' vim-whick-key is not installed. Add it to vim-plug plugin list and run :PlugInstall'
endtry

