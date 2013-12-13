rnpvim: Rafael Pereira's vim config files
=========================================

Last update: 2013.12.12 (Thu) 07:29:56

This Vim setup is focused on C/C++, Assembly and HDL development. This is still a work under development.

1. Requirements
-------------------

* [exuberant ctags](http://ctags.sourceforge.net/)
* [powerline-fonts](https://github.com/Lokaltog/powerline-fonts)
* [clang](http://clang.llvm.org/)(To compile the [YouCompletMe](https://github.com/Valloric/YouCompleteMe) clang-completer)
* [cmake](http://www.cmake.org/)(To compile the [YouCompletMe](https://github.com/Valloric/YouCompleteMe) clang-completer)
* Python 2.7.x or newer

2. Installation
-------------------

At the moment there is no automatic installation, only the manual one. Then
open a terminal ang get the rnpvim code:

`git clone https://github.com/rafaelnp/rnpvim.git rnpvim`

backup your current Vim configuration:

`cp -R ~/.vim ~/.vim.bak`

`cp ~/.vimrc ~/.vimrc.bak`

and create the symbolic links to the new configuration files:

`ln -s your-path/rnpvim/.vim ~/.vim`

`ln -s your-path/rnpvim/.vimrc ~/.vimrc`

and execute:

`vim +BundleInstall`

and the plugins shall be synchronized with github.

It is still necessary to compile the YouCompleteMe external libraries. To do it, follow
the steps bellow:

```sh

cp your-path/rnpvim/.vim/bundle/YouCOmpleteMe

./install.sh --clang-completer
```

And to use the nice symbols on the statusline, the powerfonts are needed.
Type the following commands in a shell:

```sh
cd ~/.fonts

git clone https://github.com/Lokaltog/powerline-fonts

fc-cache -v ~/.fonts
```


3. Vim configuration
--------------------

This configuration was tested in the Vim 7.4.x version on Linux.
The main configuration option there is a short explanation. For experienced Vim users it
may be boring or repetitive, but i think useful for beginners and also for a quick reference.

3.1 General
----------------

**compatible (cp) / nocompatible (nocp)**

```vim
set nocompatible
```

It turns on/off the Vi-compatible mode. We turn off here the compatibility mode, so we can
the full Vim capabilities


**autodir**

```vim
set autochdir
```

Always switch to the current file directory when you open, switch, close a file/buffer/window

**autowriteall**

```vim
set autowriteall
```

Saves the file contents when switching/opening/creating buffers/files/windows. Useful to
avoid data loss.

**autoread**

```vim
set autoread
```

Load file modified outside vim and not modified in Vim

**backup options**

```vim
set nobackup
```

The file backup is not used, because i use heavily use git in my workflow, making this
option unnecessary. Deactivating this option makes also the **writebackup**, **backupdir**,
**backupcopy** unnecessary too.


**backspace**

```vim
 set backspace=indent,eol,start
```

Configure the backspace behaviour over indenting, eol and when starting the inserting mode

**helplang**

```vim
set helplang=de,en
```

Comma separated list of languages.  Vim will use the first language for which the desired
help can be found.  The English help will always be used as a last resort.


**ruler**

```vim
set ruler
```

Show the cursor position (line and column number).Each window has its own ruler

**numbers**

```vim
set number
```

Show the current buffer line numbers. This option is mandatory if you are using the
[numbers.vim](https://github.com/myusuf3/numbers.vim) plugin.


**Wildignore**

```vimscript
set wildignore=*.o,*.obj,*.bak,*.exe,*~,*.aux,*.fls
if has('unix')
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
else
	set wildignore+=*\\.git\\*,*\\.hg\\*,*\\.svn\\*
endif
```

List of files to be ignored when performing different actions (autocomplete, expansions,
and so on). Add here the files you want to ignore.


**Encoding and line termination**

Vim supports the 3 most used [line terminations](https://en.wikipedia.org/wiki/Newline)
(unix, mac, dos) and the corresponding operating systems as well. To unify it and the text
encoding, the following configuration is used:

```vim
    if has('unix') || has('macunix')
        set termencoding=utf-8
        set encoding=utf-8
        set fileformat=unix
        set fileformats=unix
    elseif has('mac')
        set termencoding=utf-8
        set encoding=utf-8
        set fileformat=unix
        set fileformats=unix
    else
        set termencoding=utf-8
        set encoding=utf-8
        set fileformat=unix
        set fileformats=unix
    endif
```

Here the use of UTF-8 and unix is inforced. This can be changed here to suit your needs.


**Sound and visual feedback**

```vim
set visualbell t_vb=
set novisuallbell
set noerrorbells
```

The options above disable the beep and visual bell (flash). It is really annoying.


3.2 Formating
----------------

Text formating configuration:

**syntax**

```vim
syntax enable
```

Enables the syntax highlighting engine. It highlight different parts of the text (specific
keywords or text matching a pattern)  with different colours


**Formatoptions table**

```vim
set fo=tcrqn
```

The [fo-table](http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table) tells how Vim
should format the text. The following options are used:

| Option   | Description |
|:----------:|:--------------:|
|  t	| Auto-wrap text using textwidth |
|  c	| Auto-wrap comments using textwidth, inserting the current comment leader automatically |
|  r	| Automatically insert the current comment leader after hitting |
|  q	| Allow formatting of comments with "[gq](http://vimdoc.sourceforge.net/htmldoc/change.html#gq)" |
|  n	|When formatting text, recognize numbered lists |

For more details type `:help fo-table`.


**Indentation options**

```vim
set autoindent
set smartindent
set cindent
set copyindent
```

TODO: Add description


**Line width and margin**

```vim
set textwidth=90    " no fucking long lines
set wrapmargin=2    " space after linebrake
```

TODO: Add description


**cpoptions**

```vim
set cpoptions=BceF
```

| Option   | Description |
|:--------:|:-----------:|
|  B       | backslash has no special meaning in mappings, abbreviations |
|  c       | limits the search at any match at the cursor position |
|  e       | Add a <CR> the the end of line when excuting a register |
|  F       | Name a buffer when saving, if it does not have a file name yet |


**TABs or spaces?**

I use TABs for indentation with a unified configuration. If you want to use spaces, remove
`noexpandtab`and replace it with `expandtab`.

```vim
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
```

For a detailed information, there is a good [video](http://vimcasts.org/episodes/tabs-and-spaces/)
about the theme on the vimcast website.


3.3 Searching
---------------

```vim
set hlsearch
set incsearch
set ignorecase
set smartcase
```

The Vim search lines above set up:

* highlight search
* incremental search (search as you type)
* case insensitive search
* smartcase: case sensitive only if 


3.4 GUI Options
---------------

**Short messages**

```vim
set shortmess=atToO
```

TODO: Add description

**Window split**

```vim
set splitbellow
set splitright
```

Tells how vim should split windows. If you have different preference comment this/these
line(s).

**Status bar**

TODO: Add decription

**Scrolloff**

TODO: Add decription

**colorcolumn**

TODO: Add decription

**mouse**

TODO: Add decription


**guioptions**

Here a minimalistic gui is configured, without menus, scrollbas and toolbars. There are
configured mapppings to toggle the menu and toolbar. Take a look at mappings section.

| Option   | Description |
|:--------:|:--------------:|
|  a       | Enables copy and paste in visual mode |
|  A       | Autoselect for the modeless selection |
|  g       | Make menu items that are not active grey |
|  i       |  Use a Vim icon on Vim's Window |


4. Plugins
----------

The following plugins are used in the current configuration:

1. [Ctrlp.vim](https://github.com/kien/ctrlp.vim) (fuzzy text search)
1. [Genutils](https://github.com/vim-scripts/genutils) (Basic utilities function)
3. [Nerdtree](https://github.com/scrooloose/nerdtree.git) (File browser)
4. [Numbers.vim](https://github.com/myusuf3/numbers.vim) (Line numbering)
5. [Powerline](https://github.com/Lokaltog/powerline) (Status bar)
6. [SelectBuf](https://github.com/vim-scripts/SelectBuf) (Buffer browser)
7. [Syntastic](https://github.com/scrooloose/syntas) (Static analysis checker)
8. [Tabular](https://github.com/godlygeek/tabular.git) (Texttabulator)
9. [Tagbar](https://github.com/majutsushi/tagbar) (Tag browser)
1. [Vim-airline](https://github.com/bling/vim-airline) (Powerful and customizable status bar)
1. [Vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs.git) (File browser with tabs)
1. [VimExplorer](https://github.com/mbbill/VimExplorer) (File browser)
1. [Vim-Flavoured-Markdown](https://github.com/jtratner/vim-flavored-markdown) (Markdown)
1. [Vim-fugitive](https://github.com/tpope/vim-fugitive) (Git integration with Vim)
1. [Vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) (Show indentation levels visually) 
1. [Vim-signify](https://github.com/mhinz/vim-signify) (Indicate modified lines in [VCS](http://en.wikipedia.org/wiki/Revision_control) managed files)
1. [Vundle](https://github.com/gmarik/vundle)(Plugins manager)
1. [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) (Text/Code completion)


Each plugin documentation can be reached by typing `:help <plugin-name>`


5. Mappings
---------------
FIXME


6. Colorschemes
---------------

Available colorscheme:

* [Color-Sampler-Pack](https://github.com/vim-scripts/Color-Sampler-Pack)
* [vim-vividchalk](https://github.com/tpop/vim-vividchalk.git)(currently used see picture bellow)

![alt text](http://www.vimninjas.com/images/posts/10vim/vividchalk.png)

7. Known problems
---------------

* The plugin snipMate does note work if the plugin YouCompleteMe is also installed.

8. TODO
---------------

This README is still incomplete. It is being gradually expanded/improved.
For new and experimental stuff, take a look at the [labs](https://github.com/rafaelnp/rnpvim/tree/labs) branch.

* Vim configuration explained
* Plugins configuration
* FAQ
* Mappings
* HDL(Verilog/VHDL) Plugins
* Filetype support for Assembly (x86, ARM)

9. References

Useful material about VIm i recommend:

1. [Vim Casts](http://vimcasts.org/)
2. [Learn Vim Script the hard way](http://learnvimscriptthehardway.stevelosh.com/)
3. [Writing Vim Scripts](http://stevelosh.com/blog/2011/09/writing-vim-plugins/)


10. Acknowledgements
--------------------
I'd like to thank all Vim and plugin developers and the community for the very powerful
and useful editor we can use on our daily workflow. :)

