" mappings
"
" :nmap - Display normal mode maps
" :imap - Display insert mode maps
" :vmap - Display visual and select mode maps
" :smap - Display select mode maps
" :xmap - Display visual mode maps
" :cmap - Display command-line mode maps
" :omap - Display operator pending mode maps

" removes carriage return
nmap <a-r> :%s/\r//g<CR>

" opens a new table
nmap <a-t> :tabnew<CR>

" go to next buffer
nmap <a-n> :bn<CR>

" go to previous buffer
nmap <a-p> :bp<CR>

" saves all buffers
nmap <a-s> :wa<CR>

" maps reload config
nmap ,d    :call Reloadconfig()<CR>

" save all current mappings on a text file
nmap <silent> <a-d> :call DumpMaps()<CR>

" Insert current date and time
nnoremap <F5> "=strftime("%Y.%m.%d (%a) %H:%M:%S")<CR>
inoremap <F5> <C-R>=strftime("%Y.%m.%d (%a) %H:%M:%S")<CR>

" remove ^M in current file
map <buffer> <a-m> :%s///g<CR>

" closes quickfix
map <a-q> :ccl<CR>

" CTRL+F1 to toggle the menu bar
nmap <silent> <A-1> :if &guioptions=~'m' \| set guioptions-=m \| else \| set guioptions+=m \| endif<CR><ESC>

" CTRL+F2 to toggle the menu bar
nmap <silent> <A-2> :if &guioptions=~'T' \| set guioptions-=T \| else \| set guioptions+=T \| endif<CR><ESC>

" CTRL+F3 to toggle the right scroll bars
nmap <silent> <A-3> :if &guioptions=~'r' \| set guioptions-=r \| else \| set guioptions+=r \| endif<CR><ESC>

" CTRL+F4 to toggle left the scroll bars
nmap <silent> <A-4> :if &guioptions=~'l' \| set guioptions-=l \| else \| set guioptions+=l \| endif<CR><ESC>

" Moving cursor to other windows
"
" shift down   : change window focus to lower one (cyclic)
" shift up     : change window focus to upper one (cyclic)
" shift left   : change window focus to one on left
" shift right  : change window focus to one on right
nmap <s-down>   <c-w>w
nmap <s-up>     <c-w>W
nmap <s-left>   <c-w>h
nmap <s-right>  <c-w>l

" Disable arrow keys in normal mode
map <Left>  <Nop>
map <Right> <Nop>
map <Up>    <Nop>
map <Down>  <Nop>

"
"  Highlight unwanted spaces
"  http://vim.wikia.com/wiki/Highlight_unwanted_spaces
"  http://stackoverflow.com/questions/4998582/show-whitespace-characters-in-gvim
"
"  Highlight redundant spaces (spaces at the end of the line, spaces before
"  or after tabs):
highlight RedundantSpaces term=standout ctermbg=Grey guibg=#ffddcc
call matchadd('RedundantSpaces', '\(\s\+$\| \+\ze\t\|\t\zs \+\)\(\%#\)\@!')

"
" Removes trailing spaces
nmap <a-x> :%s/\s\+$//e<CR>
