"===============================================================================
" Rafael do Nascimento Pereira (rnp) <rnp@25ghz.net>
" OpenPGP key fingertip: 146D C355 A1BB 9A04 04F2 1C69 E371 BBBA 74B1 CAA3 
"
" Description:   vim configuraton file
" Creation date: 1998.02.12
" Last update:   2013.06.04 (MI) 16:23:53
"===============================================================================

"===============================================================================
" 1 - useful commands
"===============================================================================
"
"   Vim quick and advanced reference card
"   http://tnerual.eriogerg.free.fr/vimqrc.html
"
"	Navigation:
"	$                       end of line
"	^                       first character in current line
"	w                       next word
"	b                       preview word
"   <C-o>                   jumps to previous location 
"   <C-i>                   jumps to next location 
"	CTRL-]                  jump to link/tag under the cursor
"	CTRL-T or CTRL-O        jump back to previous postion
"	%                       match brackets open/closing
"   [TAB                    goes to definition
"
"   Sessions:
"   mksession <file>        saves session to a file
"                            (Ex:  mksession session.vim)
"   source <file>           recovers a vim session
"                            (Ex:  source session.vim)
"                            (Ex:  vim -S session.vim)
"
"   Completion:
"    CTRL-P                 completes a parcially typed word searching
"                           backward
"    CTRL-N                 completes a parcially typed word searching
"                           forward
"
"	Editing:
"	VU                      uppercase the whole current line
"   mark <n>                create a new mark `n`
"   `<n>                    go to mark `n` 
"   ^E e ^Y                 less-like page navigation
"   gg=G                    reidenta o codigo todo
"   CTRL+D (insert mode)    retira um `tab` de identacao
"   %retab                  replaces TABs by spaces
"   gq (visual selected)    ajusta texto em textwidth
"   CTRL+F (insert mode)    indent line
"   normal <key-cmd>        execute a sequence of keys
"   execute <command>       execute a :command
"   yaw                     copia palavra pra yank register
"   '.                      goto position where last change was made
"   K                       executa keywordprg para a palavra no cursor
"   split                   horizontal split
"   vsplit                  vertical split
"   q:	                    show command line window
"   ce	                    change to end of word (a complete change command)
"   C or c$                 change to end of wine
"   s or cl                 erase character under the cursosr and enters in insert mode
"   S or ^C                 erase the whole line 
"   I or ^i                 goes to the line begin and enters in insert mode
"   A or $a                 goes to the line end and enters in edit mode
"   o or A<CR>              adds new line bellow 
"   O or ko                 adds new line above
"   c-w =                   makes windows have the same size
"   Ctrl+a                  Increment number under the cursor
"   Ctrl+x                  Decrement number under cursor
"   bd	                    Buffer delete
"   <C-a>                   increments the number under the cursor
"   <C-x>                   decrements the number under the cursor
"
"   Mapping:
"
"   Here is an overview of map commands and in which mode they work:
"	:map         Normal, Visual and Operator-pending
"	:vmap        Visual
"	:nmap        Normal
"	:omap        Operator-pending
"	:map!        Insert and Command-line
"	:imap        Insert
"	:cmap        Command-line
"
"    Search:  
"    /^\(.*pattern\)\@!.*$  for lines not containing pattern:
"    or
"    /\v^(.*Warning)@!.*$
"
"   :%s/search/replace/gc        search and replace (c=confirm) thru the whole buffer
"   :%s/search/replace/g         search and replace thru the whole buffer
"   :50,100s/search/replace/g    search and replace between the lines 50 and 100

"   Misc:
"	so ~/.vimrc             reloads .vimrc

"   Easter Eggs:
"    :help 42
"    :help holy-grail
"    :help!
"    :help map-modes (see comment below the table about :nunmap)
"    :help UserGettingBored 

"===============================================================================
" 2 - VIM setup and costumization
"===============================================================================
"===============================================================================
" 2.1 - General Options
"===============================================================================

set nocompatible                       " no vi-compatibility
set autochdir                          " always switch to the current file directory
set autowriteall                       " automatically save all buffers
set helplang=de,en                     " help language
set history=100                         " command history
set printoptions=paper:a4              " printer options
set ruler
set wildignore=*.o,*.obj,*.bak,*.exe,*~ " wildmenu: ignore these extensions
set updatetime=4000                     " update every 4000 ms
set visualbell t_vb=                    " disable the fucking annoyng visual
                                        " and sound bell :)
set noerrorbells                        " no fucking noise
tab all                                 " open a new tab instead of launching a new
                                        " vim instance
set fileencodings=ucs-bom,utf-8,latin1  " Encodings
set spelllang=de,pt_br,en,es
set browsedir=buffer                    " defaults to the current file's directory

if has("multi_byte_encoding")
	set encoding=utf-8		               " charcter encoding used in vim
else 
	set encoding=latin1
endif
