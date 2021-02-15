
if has('unix') || has('mac')
	let g:homedir=$HOME
	let g:nvimdir=g:homedir . '/.config/nvim/'
	let g:nvimcolordir=g:homedir . '/.config/nvim/color/'
elseif (has("win32") || has("win64"))
	let g:homedir=$LOCALAPPDATA
	let g:nvimdir=$LOCALAPPDATA.'\nvim\'
	let g:nvimcolordir=$LOCALAPPDATA.'\nvim\color\'
else
	echoerr "unsupported platform"
endif

exec 'source ' . g:nvimdir . 'vim-plug.vim'

"==============
" config
"==============
filetype plugin indent on    " required!

exec 'source ' . g:nvimdir . 'config.vim'

" color themes: https://www.dunebook.com/best-vim-themes/
exec 'source ' . g:nvimdir . 'color/vimone_light.vim'

exec 'source ' . g:nvimdir . 'functions.vim'

"==============
" Mappings
"==============

exec 'source ' . g:nvimdir . 'mappings.vim'

"==============
" Plugins
"==============
exec 'source ' . g:nvimdir . 'plugins.vim'

exec 'source ' . g:nvimdir . 'abbrev.vim'


function! CreateCenteredFloatingWindow() abort
    let width = min([&columns - 4, max([80, &columns - 20])])
    let height = min([&lines - 4, max([20, &lines - 10])])
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    let l:textbuf = nvim_create_buf(v:false, v:true)
    call nvim_open_win(l:textbuf, v:true, opts)
    au BufWipeout <buffer> exe 'bw '.s:buf
    return l:textbuf
endfunction

function! FloatingWindowHelp(query) abort
    let l:buf = CreateCenteredFloatingWindow()
    call nvim_set_current_buf(l:buf)
    setlocal filetype=help
    setlocal buftype=help
    execute 'help ' . a:query
endfunction

