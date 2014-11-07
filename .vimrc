"
" Rafael do Nascimento Pereira (rnp) <rnp@25ghz.net>
" OpenPGP key fingerprint: 146D C355 A1BB 9A04 04F2 1C69 E371 BBBA 74B1 CAA3
"
" Description:   vim configuraton file
" Creation date: 1998.02.12
" Last update:   2014.11.07 (Fri) 12:04:37 (UTC +0100 CET)

" This file is just an entry point for a modulatized configuration
"
" Load all Vundle managed plugins
source ~/.vim/neobundle.vim

" Vim basic configuration.
source ~/.vim/config.vim

" Functions
source ~/.vim/functions.vim

" All hotkeys, not dependant on plugins, are mapped here.
source ~/.vim/mappings.vim

" Plugin-specific configuration.
 source ~/.vim/plugins.vim

" Abbreviations
source ~/.vim/abbrev.vim

" Autogroup/autocmd
source ~/.vim/augroup.vim
