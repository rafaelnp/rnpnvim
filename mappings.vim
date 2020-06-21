"=========
" mappings
"=========

" some useful mapping related information:
" :nmap - Display normal mode maps
" :imap - Display insert mode maps
" :vmap - Display visual and select mode maps
" :smap - Display select mode maps
" :xmap - Display visual mode maps
" :cmap - Display command-line mode maps
" :omap - Display operator pending mode maps
"
" <a-x> = Alt + x
" <c-x> = Ctrl + x
" <s-x> = Shift + x
" <CR>  = Enter
"
" Tipp: Always use no recursive mapping (noremap). It'll save you time and
" annoyances.

" 1 - Leader related mappings
" remap leader
let mapleader = ","
let maplocalleader = "´"

"nnoremap <leader>c    :call Reloadconfig()<CR>

" maps jumping tags
"nnoremap <leader>j  <c-]>

" opens .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" 2 - Alt related mappings
" removes carriage return
nnoremap <buffer> <a-r> :%s/\r//g<CR>

" go/jump to the link under the cursor
nnoremap <a-g> <c-]><CR>
" opens a new table
nnoremap <a-t> :tabnew<CR>

" go to next tab
nnoremap <a-j> :tabnext<CR>

" go to previous tab
nnoremap <a-k> :tabprevious<CR>

" Tired of clearing highlighted searches by searching for “ldsfhjkhgakjks”?
" Use this
nnoremap <silent> <a-c> :nohlsearch<CR>

" go to next buffer
nnoremap <a-n> :bn<CR>

" go to previous buffer
nnoremap <a-p> :bp<CR>

" saves all buffers
nnoremap <a-s> :wa<CR>

" save all current mappings on a text file
nnoremap <silent> <a-d> :call DumpMaps()<CR>

" closes quickfix
noremap <a-q> :ccl<CR>

" remove ^M in current file
noremap <buffer> <a-m> :%s///g<CR>

" Removes trailing spaces
nnoremap <a-x> :%s/\s\+$//e<CR>

" 3 - Shift related mappings
"
" Moving cursor to other windows
"
" change window focus to lower one (cyclic)
" change window focus to upper one (cyclic)
" change window focus to one on left
" change window focus to one on right
nnoremap <s-down>   <c-w>w
nnoremap <s-up>     <c-w>W
nnoremap <s-left>   <c-w>h
nnoremap <s-right>  <c-w>l

" move a windown down, up, left, right respectively
nnoremap <c-down>   <c-w>J
nnoremap <c-up>     <c-w>K
nnoremap <c-left>   <c-w>H
nnoremap <c-right>  <c-w>L

" close window
nnoremap <c-c>      :close

" 4 - Miscelaneous mappings

" Insert current date and time
nnoremap <F5> "=strftime("%Y.%m.%d (%a) %H:%M:%S (UTC %z %Z)")<CR>P
vnoremap <F5> "=strftime("%Y.%m.%d (%a) %H:%M:%S (UTC %z %Z)")<CR>P
inoremap <F5> <C-R>=strftime("%Y.%m.%d (%a) %H:%M:%S (UTC %z %Z)")<CR>

" Disable arrow keys in normal mode
noremap <Left>  <Nop>
noremap <Right> <Nop>
noremap <Up>    <Nop>
noremap <Down>  <Nop>

" Use Q for formatting the current paragraph (or selection)
vnoremap Q gq
nnoremap Q gqap

" If long lines with line wrapping enabled, this solves the problem that pressing
" down jumpes your cursor “over” the current line to the next line.It changes
" behaviour so that it jumps to the next row in the editor (much more natural).
nnoremap j gj
nnoremap k gk

" disable <F1>
inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>

" disable Ex mode (maybe this key could be used for something else
nnoremap Q <nop>

" 5 - terminal mappings

" Use ESC to exit terminal mode
tnoremap <Esc> <C-\><C-n>


