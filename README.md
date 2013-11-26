

rnpvim: Rafael Pereira's vim config files
==============================

Last update: 2013.11.26 (Tu) 16:20:33

1.Installation
-------------------

Get the rnpvim code:
git clone https://github.com/rafaelnp/rnpvim.git rnpvim

`ln -s your-path/rnpvim/.vim ~/.vim`

`ln -s your-path/rnpvim/.vimrc ~/.vimrc`

and execute:

`vim +BundleInstall`

and the plugins shall be synchronized with github


'SelectBuf'
'VimExplorer'
'Color-Sampler-Pack'
'Tagbar'
'Syntastic'
'ctrlp.vim'
'https://github.com/scrooloose/nerdtree.git'
'Valloric/YouCompleteMe'


2.Vim configuration
----------------

This configuration was tested on the Vim 7.4.x version (where x is the patch number) and Linux.

2.1.General
----------------

General Vim  configuration:

    set nocompatible                          " no vi-compatibility, we have vim :)
    set autochdir                             " always switch to the current file directory
    set autowriteall                          " automatically save all buffers
    set nobackup                              " no backup files
    set backspace=indent,eol,start            " see :help bs
    set helplang=de,en                        " help language
    set history=100                           " command history
    set printoptions=paper:a4                 " printer options
    set ruler                                 " Show cursor line and column number position
    set wildignore=*.o,*.obj,*.bak,*.exe,*~   " wildmenu: ignore these extensions
    set updatetime=4000                       " update every 4000 ms
    set visualbell t_vb=                      " disable the fucking annoyng visual
                                              " and sound bell :)
    set number                                " show line numbers
    set visualbell                            " don't beep
    set noerrorbells                          " no fucking noise
    tab all                                   " open a new tab instead of launching a new


2.2. Formating
----------------

Text formating configuration:

    syntax enable                     " syntax highlight on and keep your settings
    filetype plugin on                " enable filetype plugins
    filetype indent on
    
    " system dependent configuration
    if has('unix') || has('macunix')
    	set termencoding=utf-8                 " terminal encoding
    	set fileformat=unix                    " unix rocks :)
    	set fileformats=unix
    elseif has('mac')
    	set fileformat=unix
    	set fileformats=unix
	else
    	" write specific stuff for non-unix systems here
    	set fileformats=unix                   " unix rocks :)
    endif

    set fo=tcrqn                      " See :help fo-table
    set ai                            " autoindent
    set si                            " smartindent
    set cindent                       " do c-style indenting

    set fo=tcrqn                      " formatoptions. See :help fo-table
    set ai                            " autoindent
    set si                            " smartindent
    set cindent                       " do c-style indenting

3.Plugins
----------

The following plugins are used in the current configuration:

* [ctrlp.vim][1]
* [genutils][2] (Basic utilities function)
* [nerdtree][3] (File browser)
* [numbers.vim][4] (Line numbering)
* [powerline][5] (Status bar)
* [SelectBuf][6] (Buffer browser)
* [Syntastic][7] (Static analysis checker)
* [Tabular][8] (Texttabulator)
* [Tagbar][9] (Tag browser)
* [vim-nerdtree-tabs][10] (File browser with tabs)
* [VimExplorer][11] (File browser)
* [Vundle][12] (Plugins manager)
* [YouCompleteMe][13] (Text/Code completion)


  [1]:   https://github.com/kien/ctrlp.vim                    "ctrl.vim"
  [2]:   https://github.com/                                        "Yahoo Search"
  [3]:   https://github.com/scrooloose/nerdtree.git       "nerdtree"
  [4]:   https://github.com/myusuf3/numbers.vim        "numbers.vim"
  [5]:   https://github.com/Lokaltog/powerline              "powerline"
  [6]:   https://github.com/vim-scripts/SelectBuf         "SelectBuf"
  [7]:   https://github.com/scrooloose/syntastic          "Syntastic"
  [8]:   https://github.com/godlygeek/tabular.git           "Tabular"
  [9]:   https://github.com/jistr/vim-nerdtree-tabs.git     "vim-nerdtree-tabs"
  [10]:  https://github.com/
  [11]:  https://github.com/
  [12]:  https://github.com/gmarik/vundle                     "Vundle"
  [13]:  https://github.com/                                         "YouCompleteMe"

4. Colorschemes
---------------

* [vim-vividchalk][14]

  [14]:   https://github.com/tpope/vim-vividchalk.git                    "vim-vividchalk"


5.TODO
---------------

This readme is still incomplete. It is being gradually expanded/improved.
For new and experimental stuff, take a look at the branch **labs**

* Vim configuration explained
* Plugins configuration
* FAQ
