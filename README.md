# rnpvim: Rafael Pereira's vim config files

Last update: 2014.01.08 (Wed) 13:23:50 (UTC +0100 CET)

This Vim setup is based on my daily workflow at work/home, where is normaly use
C/C++, Assembly and HDL (Verilog, VDHL). This is still a work under development,
Suggestions, corrections are welcome :-)

## 1. Why rnpvim ?

Have a Vim configuration on git (in this case Github) makes easier to use the same
configuration across different computers, keep a history of what you have done and
if you do something wrong you can revert it on a sane way.

If you use vim and your workflow includes Assembly, C, C++, LaTeX and HDL(Verilog,HDL),
then rnpvim may be a good option for you. It includes:

* Syntax check
* Opensource VCSs integration
* File browsing
* Buffer browsing
* Shell integration
* Visual indentation guide
* Git full integration
* Enhanced Vim motion
* Autocompletion


## 2. Requirements

This Vim setup has the following requirements/dependencies:

* [Vim](http://www.vim.org) 7.4 or newer
* [exuberant ctags](http://ctags.sourceforge.net/)
* [clang](http://clang.llvm.org/)(to compile the [YouCompletMe](https://github.com/Valloric/YouCompleteMe) clang-completer)
* [cmake](http://www.cmake.org/)(to compile the [YouCompletMe](https://github.com/Valloric/YouCompleteMe))
* [Python](http://www.python.org) 2.7 or newer


## 3. Installation

### 3.1 Manuall

This section describes the manual installation step by step. You can skip it if
you prefer the [automatic one](https://github.com/rafaelnp/rnpvim#32-automatic).

Start by opening a terminal and make a back up from the current Vim settings:

```sh
mv ~/.vim ~/.vim.bak

mv ~/.vimrc ~/.vimrc.bak
```

Then get the rnpvim code from Github:

```sh
cd ~/src

git clone https://github.com/rafaelnp/rnpvim.git rnpvim
```

and create the symbolic links to the new configuration files:

```sh
ln -s ~/src/rnpvim/.vim ~/.vim

ln -s ~/src/rnpvim/.vimrc ~/.vimrc
```

The `~/src/rnpvim` directory was used here as example, but you can change it to any directory
you want.

and execute following command to synchronize the plugins with github:

```sh
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

vim +NeoBundleInstall
```

It is still necessary to compile the YouCompleteMe external libraries. To do it, follow the
steps bellow:

```sh
cd ~/.vim/bundle/YouCompleteMe
mkdir ycm_build
cd ycm_build
cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/bundle/YouCompleteMe/cpp
make
```

Remove the `-DUSE_SYSTEM_LIBCLANG=ON` if you don't want the semantic support for C-family
languages.

And to use the nice symbols (skip this if you don't want to use them) on the statusline, the
powerfonts are needed. Type the following commands in a shell:

```sh
cd ~/.fonts

git clone https://github.com/Lokaltog/powerline-fonts

fc-cache -v ~/.fonts
```

### 3.2 Automatic

You can download the installation script:

```sh
wget https://raw.github.com/rafaelnp/rnpvim/master/install.sh
chmod u+x install.sh
./install.sh
```

It does the same described as described in the manuall installation, saving some time and
typing.


## 4. Vim configuration

This configuration was tested in the Vim 7.4.x version on Linux.
The main configuration option there is a short explanation. For experienced Vim users it
may be boring or repetitive, but i think useful for beginners and also for a quick reference.

### 4.1 General

**nocompatible**

```VimL
set nocompatible
```

It turns on/off the Vi-compatible mode. We turn off here the compatibility mode, so we can
the full Vim capabilities.


**autodir**

```VimL
set autochdir
```

Always switch to the current file directory when you open, switch, close a file/buffer/window.

**autowriteall**

```VimL
set autowriteall
```

Saves the file contents when switching/opening/creating buffers/files/windows. Useful
to avoid data loss.


**autoread**

```VimL
set autoread
```

Load file modified outside vim and not modified in Vim.


**backup options**

```VimL
set nobackup
```

The file backup is not used, because i use heavily use git in my workflow, making this
option unnecessary. Deactivating this option makes also the **writebackup**, **backupdir**,
**backupcopy** unnecessary too.


**backspace**

```VimL
 set backspace=indent,eol,start
```

Configure the backspace behaviour over indenting, eol and when starting the inserting mode.


**helplang**

```VimL
set helplang=de,en
```

Comma separated list of languages.  Vim will use the first language for which the
desired help can be found.  The English help will always be used as a last resort.


**numbers**

```VimL
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
and so on). Add here the files you want to ignore. It can be expanded to suit your needs.


**Encoding and line termination**

Vim supports the 3 most used [line terminations](https://en.wikipedia.org/wiki/Newline)
(unix, mac, dos) and the corresponding operating systems as well. To unify it and the text
encoding, the following configuration is used:

```VimL
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

```VimL
set visualbell t_vb=
set novisuallbell
set noerrorbells
```

The options above disable the beep and visual bell (flash). It is really annoying.


### 4.2 Formating

Text formating configuration:

**syntax**

```VimL
syntax enable
```

Enables the syntax highlighting engine. It highlight different parts of the text
(specific keywords or text matching a pattern) with different colours.


**Formatoptions table**

```VimL
set fo=tcrqn
```

The [fo-table](http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table) tells how Vim
should format the text. The following options are used:

| Option   | Description |
|:----------:|:--------------:|
|    t       | Auto-wrap text using textwidth |
|    c       | Auto-wrap comments using textwidth, inserting the current comment leader automatically |
|    r       | Automatically insert the current comment leader after hitting |
|    q       | Allow formatting of comments with "[gq](http://vimdoc.sourceforge.net/htmldoc/change.html#gq)" |
|    n       |When formatting text, recognize numbered lists |

For more details type `:help fo-table`.


**Indentation options**

```VimL
set autoindent
set smartindent
set cindent
set copyindent
```

Indentation setup. See `:help indent` for more details.


**Line width**

```VimL
set textwidth=80
```

Used to limit and avoid long lines. Some people prefer them, so you can change it
here if necessary.


**cpoptions**

```VimL
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

```VimL
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
```

For a detailed information, there is a good [video](http://vimcasts.org/episodes/tabs-and-spaces/)
about the theme on the vimcast website.


### 4.3 Searching

```VimL
set hlsearch
set incsearch
set ignorecase
set smartcase
```

The Vim search lines above set up:

* highlight search
* incremental search (search as you type)
* case insensitive search
* smartcase: case sensitive only if a capital letter is typed


### 4.4 Visual/GUI Options

**showcmd**

```VimL
set showcmd
```

Show Command line in the last line of the screen.


**Statusline**

```VimL
set laststatus=2
```

Always shows status line.


**Short messages**

```VimL
set shortmess=aToO
```

This option sets the file operation messages to avoid hitting ENTER when this messages
come up. The table bellow lists the options used:

| Option   | Description |
|:--------:|:-----------:|
|    a     | Includes f, i, l, m, n, r, w, x abbreviation options |
|    T     | Truncates file messages in the middle |
|    o     | Overwrite message when writing a file with a reading file message |
|    O     | Overwrite previous message when reading a file |

For a complete reference, see `:help shortmess`.


**ruler**

```VimL
set ruler
```

Show the cursor position (line and column number).Each window has its own ruler.


**number**

```VimL
set number
```

Shows line numbering.


**scrolloff**

```VimL
set scrolloff=2
```

Minimal number of screen lines to keep above and below the cursor. This will make
some context visible around where you are working. Specially useful when programming.


**Window split**

```VimL
set splitbellow
set splitright
```

Tells how vim should split windows. If you have different preference comment this/these
line(s).


**showbreak**

```VimL
set showbreak=↳
```

Show a visual line break symbol. Useful when opening files with long lines.


**colorscheme**

```VimL
colorscheme vividchalk
```

This is (so far) my favorite colorscheme. You can set up here your favorite one.


**noshowmode**

```VimL
set noshowmode
```

Disable showmode on the statusline. For this purpose we use the vim-airline plugin.


**showmatch**

```VimL
set showmatch
```

Show matching bracket.


**matchtime**

```VimL
set matchtime=2
```

Time in tenths of a second to show the matching bracket.


**Window size**

```VimL
set equalalways
set ead=both
```

Define when the option `equalalways` is used:

* Vertically
* Horizontaly
* Both

Where `equalalways` is boolean and defines the window size behaviour when a
window is splited or destroyed.

**wildmenu**

```VimL
set wildmenu
```

When 'wildmenu' is on, command-line completion operates in an enhanced mode.
On pressing 'wildchar' (usually <Tab>) to invoke completion, the possible 
matches are shown just above the command line, with the first match highlighted.


**cursorline**

```VimL
set cursorline
```

Highlight the screen line of the cursor with a configurable color. Useful to
easily spot the cursor.


**display**

```VimL
set display=uhex
```

Display nonprintable characters in hexadecimal.


**listchar**

```VimL
set listchars=tab:▸\ ,eol:$,
```

Strings to use in 'list' mode and for the ':list' command.


**mouse**

```VimL
if has('mouse')
	set mouse=a
	set mousehide
endif
```

Configure the mouse to be enabled in all modes and hides it while typing.


**guioptions**

```VimL
set guioptions=aAgi
```

Here a minimalistic gui is configured, without menus, scrollbas and toolbars. There are
configured mapppings to toggle the menu and toolbar. Take a look at mappings section.

| Option   | Description |
|:--------:|:--------------:|
|  a       | Enables copy and paste in visual mode |
|  A       | Autoselect for the modeless selection |
|  g       | Make menu items that are not active grey |
|  i       |  Use a Vim icon on Vim's Window |


```VimL
"Default font
set guifont=Liberation\ Mono\ for\ Powerline\ 8
```

Use a nice and bbeautiful monospaced font. If you have a different taste, you
can set your favorite font here.


```VimL
highlight Pmenu guibg=brown gui=bold
highlight Pmenu ctermbg=238 gui=bold
```

Pop-up menu color setteings


**mousemodel**

```VimL
	set mousemodel=popup
```

Right mouse button pops up a menu. The shifted left mouse button extends a selection.


**Terminal/CLI**

```VimL
	set bg=dark
	if &term == 'xterm' || &term == 'screen' || &term =='terminator'
		set t_Co=256
	endif
endif
```

Enable 256 colours in terminal.


## 4.5 Mappings

**Remapping the leader key**

```VimL
let mapleader=","
```

The leader key is a way to have more mappings available to your use. The line
above maps the leaderkey to comma.


```VimL
nnoremap <space> <nop>
```

Remap space key to nothing


```VimL
nnoremap <a-r> :%s/\r//g<CR>
```

Remove carriage return from line end

```VimL
nnoremap <a-t> :tabnew<CR>
```

Open a new tab.


```VimL
nnoremap <a-n> :bn<CR>
nnoremap <a-p> :bp<CR>
```

Go to next and previous buffer respectively


```VimL
nnoremap <a-s> :wa<CR>
```

Save all buffers


```VimL
nnoremap ,d    :call Reloadconfig()<CR>
```

Reloads Vim config.


```VimL
nnoremap <silent> <a-d> :call DumpMaps()<CR>
```

Dumps all mappings in a file.

```VimL
nnoremap <F5> "=strftime("%Y.%m.%d (%a) %H:%M:%S (UTC %z %Z)")<CR>P
vnoremap <F5> "=strftime("%Y.%m.%d (%a) %H:%M:%S (UTC %z %Z)")<CR>P
inoremap <F5> <C-R>=strftime("%Y.%m.%d (%a) %H:%M:%S (UTC %z %Z)")<CR>
```

Added current date and time in normal, visual and insert modes respectively.


```VimL
noremap <buffer> <a-m> :%s///g<CR>
```

Removes CR from the line end.

```VimL
noremap <a-q> :ccl<CR>
```

Closes the quickfix window.


```VimL
nnoremap <silent> <A-1> :if &guioptions=~'m' \| set guioptions-=m \| else \| set guioptions+=m \| endif<CR><ESC>

nnoremap <silent> <A-2> :if &guioptions=~'T' \| set guioptions-=T \| else \| set guioptions+=T \| endif<CR><ESC>

nnoremap <silent> <A-3> :if &guioptions=~'r' \| set guioptions-=r \| else \| set guioptions+=r \| endif<CR><ESC>

nnoremap <silent> <A-4> :if &guioptions=~'l' \| set guioptions-=l \| else \| set guioptions+=l \| endif<CR><ESC>
```

Toggle the toolbar and scroll bars visibility.


```VimL
nnoremap <s-down>   <c-w>w
nnoremap <s-up>     <c-w>W
nnoremap <s-left>   <c-w>h
nnoremap <s-right>  <c-w>l
```

Window movements made easy.

```VimL
noremap <Left>  <Nop>
noremap <Right> <Nop>
noremap <Up>    <Nop>
noremap <Down>  <Nop>
```

Disable arrow keys in normal mode, use `hjkl` (the Vim way) instead :)


```VimL
highlight RedundantSpaces term=standout ctermbg=Grey guibg=#ffddcc
call matchadd('RedundantSpaces', '\(\s\+$\| \+\ze\t\|\t\zs \+\)\(\%#\)\@!')
```

Highlight redundant spaces (spaces at the end of the line, spaces before or after tabs):

```VimL
highlight ColorColumn ctermbg=magenta guibg=lightgrey
call matchadd('ColorColumn', '\%81v', 100)
```

highlight the firstcolumn greater than textwidth, default to `80` characters.

```VimL
nnoremap <a-x> :%s/\s\+$//e<CR>
```

Removes trailing spaces along the file.

```vim
nnoremap <silent> - :
```

Map colon to dash, save the shifts. :)

```VimL
vnoremap Q gq
nnoremap Q gqap
```

Use Q for formatting the current paragraph (or visual selection).


```VimL
nnoremap j gj
nnoremap k gk
```

If long lines with line wrapping enabled, this solves the problem that pressing
down jumpes your cursor “over” the current line to the next line.  It changes
behaviour so that it jumps to the next row in the editor (much more natural).


```VimL
nnoremap <silent> <a-c> :nohlsearch<CR>
```

Tired of clearing highlighted searches by searching for “ldsfhjkhgakjks”? Use this
to clear the search pattern.

```VimL
inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>
```

Disable `<F1>` key, use `help` or `thelp` (open help on a new tab) instead.


```VimL
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
```

Opens the `~/.vimrc` file.


## 5. Plugins

The following plugins are used in the current configuration:

1. [Ctrlp.vim](https://github.com/kien/ctrlp.vim) (fuzzy search)

```VimL
	let g:ctrlp_match_window = 'top,order:ttb,min:2,max:10'
	let g:ctrlp_show_hidden = 1
	let g:ctrlp_custom_ignore = {
								\ 'dir':  '\v[\/]\.(git|hg|svn)$',
								\ 'file': '\v\.(exe|so|dll)$',
								\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
								\ }
	let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
								\ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
	let g:ctrlp_match_window_bottom = 1
	let g:ctrlp_user_command = 'find %s -type f'
	" open a new file on a tab
	let g:ctrlp_open_new_file = 't'
```

2. [Genutils](https://github.com/vim-scripts/genutils) (Basic utilities function)

   This script provides functions that are mostly useful to script developers, but
   some of the functions can be easily converted to good utilities.

3. [Nerdtree](https://github.com/scrooloose/nerdtree.git) (File browser)

```VimL
	let NERDTreeCaseSensitiveSort = 1
	let NERDTreeShowHidden        = 1
	let NERDTreeShowLineNumbers   = 1
```

4. [Numbers.vim](https://github.com/myusuf3/numbers.vim) (Line numbering)
5. [NeoBundle.vim](https://github.com/Shougo/neobundle.vim)(Plugin manager)
6. [Powerline](https://github.com/Lokaltog/powerline) (Status bar)
7. [SelectBuf](https://github.com/vim-scripts/SelectBuf) (Buffer browser)
8. [Syntastic](https://github.com/scrooloose/syntas) (Static analysis checker)
9. [Tabular](https://github.com/godlygeek/tabular.git) (Texttabulator)
1. [Tagbar](https://github.com/majutsushi/tagbar) (Tag browser)
1. [Vim-airline](https://github.com/bling/vim-airline) (Powerful and customizable status bar)
1. [Vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs.git) (File browser with tabs)
1. [VimExplorer](https://github.com/mbbill/VimExplorer) (File browser)
1. [Vim-Flavoured-Markdown](https://github.com/jtratner/vim-flavored-markdown) (Markdown)
1. [Vim-fugitive](https://github.com/tpope/vim-fugitive) (Git integration with Vim)
1. [Vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) (Show indentation levels visually)
1. [Vim-signify](https://github.com/mhinz/vim-signify) (Indicate modified lines in [VCS](http://en.wikipedia.org/wiki/Revision_control) managed files)
1. [vim-systemverilog](https://github.com/WeiChungWu/vim-SystemVerilog) (SystemVerilog syntax highlight)
1. [vim-vhdl](https://github.com/Cognoscan/vim-vhdl) (VHDL syntax highlight)
1. [vimshell.vim](https://github.com/Shougo/vimshell.vim) (Shell inside Vim)

![alt text](https://f.cloud.github.com/assets/980000/982716/eb45a994-0817-11e3-806e-ce6e731b86ef.png)


1. [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) (Text/Code completion)

![alt_text](http://i.imgur.com/0OP4ood.gif)


Each plugin documentation can be reached by typing `:help <plugin-name>`


## 6. Colorschemes

Available colorschemes:

* [Color-Sampler-Pack](https://github.com/vim-scripts/Color-Sampler-Pack)

  Tenths of different colorschemes.

* [molokai](https://github.com/tomasr/molokai)

![alt_text](https://github-camo.global.ssl.fastly.net/47bf6f7773c282e9607fc692e3a0948ee9363b6e/687474703a2f2f7777772e77696e746572646f6d2e636f6d2f7765626c6f672f636f6e74656e742f62696e6172792f57696e646f77734c6976655772697465722f4d6f6c6f6b6169666f7256696d5f383630322f6d6f6c6f6b61695f6e6f726d616c5f736d616c6c5f332e706e67)

* [vim-vividchalk](https://github.com/tpop/vim-vividchalk.git)(currently used, see picture bellow)

![alt text](http://www.vimninjas.com/images/posts/10vim/vividchalk.png)

## 7. Known problems

No known problems at the moment :)

## 8. TODO

This README is still incomplete. It is being gradually expanded/improved.
For new and experimental stuff, take a look at the [labs](https://github.com/rafaelnp/rnpvim/tree/labs) branch.

* Plugins configuration
* FAQ
* Mappings documentation
* HDL(Verilog/VHDL) Plugins
* Filetype support for Assembly (x86, ARM)
* Spellcheck

## 9. References

Useful documentation about Vim:

1. [Vim Casts](http://vimcasts.org/)
2. [Learn Vim Script the hard way](http://learnvimscriptthehardway.stevelosh.com/)
3. [Writing Vim Scripts](http://stevelosh.com/blog/2011/09/writing-vim-plugins/)
4. [Use Vim](http://usevim.com)
5. [Vivify - Colorscheme editor for Vim](http://bytefluent.com/vivify/)
6. [Vim Wiki at Wikia](http://vim.wikia.com/wiki/Vim_Tips_Wiki)
7. [Vim Community at Google Plus](https://plus.google.com/u/0/communities/105049811056605918816)


# 10. Acknowledgements

I'd like to thank all Vim and plugin developers and the community for the very powerful
and useful editor we can use on our daily workflow. :)

