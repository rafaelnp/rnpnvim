"
" Rafael do Nascimento Pereira (rnp) <rnp@25ghz.net>
" OpenPGP key fingerprint: 146D C355 A1BB 9A04 04F2 1C69 E371 BBBA 74B1 CAA3
"
" Description:   vim configuraton file
" Creation date: 1998.02.12
" Last update:   2013.12.10 (Mo) 12:02:48

" 1 - useful commands
"
"   Vim quick and advanced reference card
"   http://tnerual.eriogerg.free.fr/vimqrc.html
"
"   Online github markdown editor:
"   http://markdown-here.com/livedemo.html
"
"    Navigation:
"    $                       end of line
"    ^                       first character in current line
"    w                       next word
"    b                       preview word
"    <C-o>                   jumps to previous location
"    <C-i>                   jumps to next location
"    CTRL-]                  jump to link/tag under the cursor
"    CTRL-T or CTRL-O        jump back to previous postion
"    %                       match brackets open/closing
"    [TAB                    goes to definition
"
"    Sessions:
"    mksession <file>        saves session to a file
"                            (Ex:  mksession session.vim)
"    source <file>           recovers a vim session
"                            (Ex:  source session.vim)
"                            (Ex:  vim -S session.vim)
"
"   Completion:
"    CTRL-P                 completes a parcially typed word searching backward
"    CTRL-N                 completes a parcially typed word searching forward
"
"   Editing:
"    VU                      uppercase the whole current line
"    mark <n>                create a new mark `n`
"    `<n>                    go to mark `n`
"    ^E e ^Y                 less-like page navigation
"    gg=G                    reidenta o codigo todo
"    CTRL+D (insert mode)    retira um `tab` de identacao
"    %retab                  replaces TABs by spaces
"    gq (visual selected)    ajusta texto em textwidth
"    CTRL+F (insert mode)    indent line
"    normal <key-cmd>        execute a sequence of keys
"    execute <command>       execute a :command
"    yaw                     copies word to yank register
"    '.                      goto position where last change was made
"    K                       executes man page for the word under the cursor
"    split                   horizontal split
"    vsplit                  vertical split
"    q:                      show command line window
"    ce                      change to end of word (a complete change command)
"    C or c$                 change to end of wine
"    s or cl                 erase character under the cursosr and enters in insert mode
"    S or ^C                 erase the whole line
"    I or ^i                 goes to the line begin and enters in insert mode
"    A or $a                 goes to the line end and enters in edit mode
"    o or A<CR>              adds new line bellow
"    O or ko                 adds new line above
"    <C-w> =                 makes windows have the same size
"    bdi                     buffer delete
"    <C-a>                   increments the number under the cursor
"    <C-x>                   decrements the number under the cursor
"
"   Mappings:
"
"   Here is an overview of map commands and in which mode they work:
"    :map                    Normal, Visual and Operator-pending
"    :vmap                   Visual
"    :nmap                   Normal
"    :omap                   Operator-pending
"    :map!                   Insert and Command-line
"    :imap                   Insert
"    :cmap                   Command-line
"    :verbose map            Lists which plugin uses all key
"    :verbose map <key>      Lists which plugin uses the specified key
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
"    so ~/.vimrc             reloads .vimrc

"   Easter Eggs:
"    :help 42
"    :help holy-grail
"    :help!
"    :help map-modes (see comment below the table about :nunmap)
"    :help UserGettingBored

" Load all Vundle managed plugins
source ~/.vim/neobundle.vim

" Functions
 source ~/.vim/functions.vim

" Vim basic configuration.
source ~/.vim/config.vim

" All hotkeys, not dependant on plugins, are mapped here.
source ~/.vim/mappings.vim

" Plugin-specific configuration.
 source ~/.vim/plugins.vim

" Abbreviations
source ~/.vim/abbrev.vim

" Autogroup/autocmd
" source ~/.vim/augroup.vim
