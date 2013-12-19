" mappings
"
" :nmap - Display normal mode maps
" :imap - Display insert mode maps
" :vmap - Display visual and select mode maps
" :smap - Display select mode maps
" :xmap - Display visual mode maps
" :cmap - Display command-line mode maps
" :omap - Display operator pending mode maps

" remap leader
nnoremap <space> <Nop>
let mapleader = ","

" removes carriage return
nnoremap <a-r> :%s/\r//g<CR>

" opens a new table
nnoremap <a-t> :tabnew<CR>

" go to next buffer
nnoremap <a-n> :bn<CR>

" go to previous buffer
nnoremap <a-p> :bp<CR>

" saves all buffers
nnoremap <a-s> :wa<CR>

" maps reload config
nnoremap ,d    :call Reloadconfig()<CR>

" save all current mappings on a text file
nnoremap <silent> <a-d> :call DumpMaps()<CR>

" Insert current date and time
nnoremap <F5> "=strftime("%Y.%m.%d (%a) %H:%M:%S")<CR>
inoremap <F5> <C-R>=strftime("%Y.%m.%d (%a) %H:%M:%S")<CR>

" remove ^M in current file
noremap <buffer> <a-m> :%s///g<CR>

" closes quickfix
noremap <a-q> :ccl<CR>

" CTRL+F1 to toggle the menu bar
nnoremap <silent> <A-1> :if &guioptions=~'m' \| set guioptions-=m \| else \| set guioptions+=m \| endif<CR><ESC>

" CTRL+F2 to toggle the menu bar
nnoremap <silent> <A-2> :if &guioptions=~'T' \| set guioptions-=T \| else \| set guioptions+=T \| endif<CR><ESC>

" CTRL+F3 to toggle the right scroll bars
nnoremap <silent> <A-3> :if &guioptions=~'r' \| set guioptions-=r \| else \| set guioptions+=r \| endif<CR><ESC>

" CTRL+F4 to toggle left the scroll bars
nnoremap <silent> <A-4> :if &guioptions=~'l' \| set guioptions-=l \| else \| set guioptions+=l \| endif<CR><ESC>

" Moving cursor to other windows
"
" shift down : change window focus to lower one (cyclic)
" shift up   : change window focus to upper one (cyclic)
" shift left : change window focus to one on left
" shift right: change window focus to one on right
nnoremap <s-down>   <c-w>w
nnoremap <s-up>     <c-w>W
nnoremap <s-left>   <c-w>h
nnoremap <s-right>  <c-w>l

" Disable arrow keys in normal mode
noremap <Left>  <Nop>
noremap <Right> <Nop>
noremap <Up>    <Nop>
noremap <Down>  <Nop>

" Highlight unwanted spaces
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
" http://stackoverflow.com/questions/4998582/show-whitespace-characters-in-gvim
"
" Highlight redundant spaces (spaces at the end of the line, spaces before
" or after tabs):
highlight RedundantSpaces term=standout ctermbg=Grey guibg=#ffddcc
call matchadd('RedundantSpaces', '\(\s\+$\| \+\ze\t\|\t\zs \+\)\(\%#\)\@!')

" Removes trailing spaces
nnoremap <a-x> :%s/\s\+$//e<CR>

" shortcut for commands
nnoremap <silent> - :

" Use Q for formatting the current paragraph (or selection)
vnoremap Q gq
nnoremap Q gqap

" If long lines with line wrapping enabled, this solves the problem that pressing down
" jumpes your cursor “over” the current line to the next line.  It changes behaviour so
" that it jumps to the next row in the editor (much more natural).
nnoremap j gj
nnoremap k gk

" Tired of clearing highlighted searches by searching for “ldsfhjkhgakjks”? Use this
nnoremap <silent> <a-c> :nohlsearch<CR>

" disable <F1>
inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>

" opens .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"==============
" Abbreviations
"==============

" global

" name
iabbrev Rnp   Rafael do Nascimento Pereira
"e-mail
iabbrev rnp@  rnp@25ghz.net

" command line
cabbrev help    tab help
cabbrev mapping ~/.vim/mappings.vim
cabbrev bundle  ~/.vim/neobundle.vim
cabbrev plugin  ~/.vim/plugins.vim
cabbrev config  ~/.vim/config.vim
cabbrev func    ~/.vim/functions.vim

" english
iabbrev adn  and
iabbrev waht what

