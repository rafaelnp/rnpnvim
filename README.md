# rnpvim: Rafael Pereira's vim config files

Last update: 2014.12.02 (Di) 22:14:48 (UTC +0100 CET)

This Vim setup is based on my daily workflow at work/home, where is normaly use
C/C++, Assembly and HDL (Verilog, VDHL). This is still a work in progress, so
Suggestions, corrections are welcome :-)


## 1 Why rnpvim ?

Have a Vim configuration on git (in this case Github) makes easier to use the same
configuration across different computers, keep a history of what you have done and
if you do something wrong you can revert it on a sane way.

If you use vim and your workflow includes Assembly, C, C++, LaTeX and HDL(Verilog,VHDL),
then rnpvim may be a good option for you.

```
The RnpVim was tested only on Linux. Theoretically it should work on Mac OSX. On
Windows, well, I have no idea. Maybe you can test it and give some feedback...
```

### 1.1 Main features

Here are listed the main rnpvim 's features, provided by additional plugins. Those
plugins are managed by [Neobundle](https://github.com/rafaelnp/rnpvim#57-neobundlevimplugin-manager),
which is also an Vim plugin, that make the Vim users life much easier.

* Buffer browsing

* Code/text autocompletion

* Calender integration

* Extensible status/tagline

* Enhanced Vim motion

* File browsing

* Git full integration

* LaTeX integration

* Opensource VCSs integration

* Plugins management

* Fuzzy search

* Syntax check

* Tag browser

* Integration with GnuPG for encrypted files

* Customized startup message and recently edited files

* Undo tree history

* VHDL/Verilog syntax highlight

Nice, but let me see it in action. So, the screenshots can be found [here](https://github.com/rafaelnp/rnpvim/wiki/Screenshots).

If you want to see (and suggest) the features that are coming on next releases,
take a look at the [RnpVim's milestones](https://github.com/rafaelnp/rnpvim/milestones).

## 2 Requirements

This Vim setup has the following requirements/dependencies:

* [Vim](http://www.vim.org) 7.4 or newer
* [exuberant ctags](http://ctags.sourceforge.net/)
* [clang](http://clang.llvm.org/) 3.3 or newer (to compile the [YouCompletMe](https://github.com/Valloric/YouCompleteMe) clang-completer)
* [cmake](http://www.cmake.org/)(to compile the [YouCompletMe](https://github.com/Valloric/YouCompleteMe))
* [Python](http://www.python.org) 2.7 or newer
* [Git](http://www.git-scm.com/) 1.7 or newer


## 3 Installation

### 3.1 Manual

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
./install.sh --clang-completer
```

It shall use a downloaded version from [http://www.llvm.org](llvm.org). If you
want to use your local clang version then execute:

```sh
./install.sh --clang-completer --system-libclang
```

Remove the `--clang-completer` if you don't want the semantic support for C-family
languages.

```sh
./install.sh
```

And to use the nice symbols (skip this if you don't want to use them) on the statusline, the
powerfonts are needed. Type the following commands in a shell:

```sh
cd ~/.fonts

git clone https://github.com/Lokaltog/powerline-fonts

fc-cache -v ~/.fonts
```

### 3.2 Automatic

You can download the installation script with the following command:

```sh
wget https://raw.github.com/rafaelnp/rnpvim/master/install.sh
```

By default the clang completion is compiled using the binary version from llvm.org
project. If you want to use your local clang version, then you must open the script
and uncomment:

```sh
clangversion="local"
```

And finally execute the script:

```sh
chmod u+x install.sh
./install.sh
```

It does the same described as described in the manuall installation, saving some time and
typing.


Opens the `~/.vimrc` file.


## 4 Plugins

The following plugins are used and their current configuration. No comment is
found where configuration is self-explainatory.
Each plugin documentation can be reached by typing `:help <plugin-name>`

### 4.1 [aftersyntax](https://github.com/vim-scripts/aftersyntaxc.vim)

### 4.2 [armasm](https://github.com/vim-scripts/armasm) (ARM assembly syntax highlight)

### 4.3 [calendar.vim](https://github.com/itchyny/calendar.vim) (Integrasted calender)

### 4.4 [delimitmate](https://github.com/blueyed/delimitMate)

### 4.5 [howmuch](https://github.com/sk1418/HowMuch)

### 4.6 [neoBundle.vim](https://github.com/Shougo/neobundle.vim)(Plugin manager)

### 4.7 [nerdtree](https://github.com/scrooloose/nerdtree.git) (File browser)

### 4.8 [numbers.vim](https://github.com/myusuf3/numbers.vim) (Line numbering)

### 4.9 [rainbow parentheses improved](https://github.com/oblitum/rainbow)

### 4.11 [tagbar](https://github.com/majutsushi/tagbar) (Tag browser)

### 4.12 [undotree](https://github.com/mbbill/undotree)

### 4.13 [unite-colorscheme](https://github.com/ujihisa/unite-colorscheme) (Easy colorscheme changing)

### 4.14 [unite-outline](https://github.com/Shougo/unite-outline) (Outline current buffer)

### 4.15 [unite](https://github.com/Shougo/unite.vim) (Fuzzy search and expand VIm capabilities)

### 4.16 [vim-airline](https://github.com/bling/vim-airline) (Powerful and customizable status bar)

### 4.17 [vim-easymotion](https://github.com/Lokaltog/vim-easymotion) (Move easily across the text)

### 4.18 [vim-flavoured-Markdown](https://github.com/jtratner/vim-flavored-markdown) (Markdown)

### 4.19 [vim-git](https://github.com/tpope/vim-git) (git syntax plugin)

### 4.20 [vim-gnupg](https://github.com/jamessan/vim-gnupg) (Gnu PG integration)

### 4.21 [vim-latex](https://github.com/jcf/vim-latex) (LaTeX enhancements)

### 4.22 [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs.git) (File browser with tabs)

### 4.23 [vim-signify](https://github.com/mhinz/vim-signify) (Indicate modified lines in [VCS](http://en.wikipedia.org/wiki/Revision_control) managed files)

### 4.24 [vim-startify](https://github.com/mhinz/vim-startify) (Useful Vim startscreen)

### 4.26 [vim-vhdl](https://github.com/Cognoscan/vim-vhdl) (VHDL syntax highlight)

### 4.27 [vimrproc](https://github.com/Shougo/vimproc.vim) (Asynchronous execution library for Vim)

### 4.28 [vim-vinegar](https://github.com/dhruvasagar/vim-vinegar)(Project drawer file browser)

### 4.29 [vimexplorer](https://github.com/mbbill/VimExplorer) (File browser)

### 4.30 [youcompleteme](https://github.com/Valloric/YouCompleteMe) (Text/Code completion)


## 5 Colorschemes

Available colorschemes:

### 5.1 [Color-Sampler-Pack](https://github.com/vim-scripts/Color-Sampler-Pack)

  Tenths of different colorschemes. The vimhut(dark) theme is the one
  currently used.

### 5.2 [molokai](https://github.com/tomasr/molokai)

![alt_text](https://github-camo.global.ssl.fastly.net/47bf6f7773c282e9607fc692e3a0948ee9363b6e/687474703a2f2f7777772e77696e746572646f6d2e636f6d2f7765626c6f672f636f6e74656e742f62696e6172792f57696e646f77734c6976655772697465722f4d6f6c6f6b6169666f7256696d5f383630322f6d6f6c6f6b61695f6e6f726d616c5f736d616c6c5f332e706e67)

### 5.3 [vim-vividchalk](https://github.com/tpope/vim-vividchalk.git)
![alt text](http://www.vimninjas.com/images/posts/10vim/vividchalk.png)


## 6 Known problems

See the project [issues page](https://github.com/rafaelnp/rnpvim/issues?state=open).

## 7 TODO

This README is a workj in progress, it is being gradually expanded/improved.
For new and experimental stuff, take a look at the [next](https://github.com/rafaelnp/rnpvim/tree/next) branch.


## 8 References

Useful documentation about Vim:

0. [Vim](http://www.vim.org)
1. [Vim Casts](http://vimcasts.org/)
2. [Learn Vim Script the hard way](http://learnvimscriptthehardway.stevelosh.com/)
3. [Writing Vim Scripts](http://stevelosh.com/blog/2011/09/writing-vim-plugins/)
4. [Use Vim](http://usevim.com)
5. [Vivify - Colorscheme editor for Vim](http://bytefluent.com/vivify/)
6. [Vim Wiki at Wikia](http://vim.wikia.com/wiki/Vim_Tips_Wiki)
7. [Vim Community at Google Plus](https://plus.google.com/u/0/communities/105049811056605918816)
8. [Learn Vim progressively](http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively)
9. [Vimregex](http://vimregex.com/)
10. [Why certain text editors make you more productive](http://www.terminally-incoherent.com/blog/2012/04/04/why-certain-text-editors-make-you-more-productive/)
11. [Vimawesome](http://vimawesome.com/)
12. [Today I learned Vim](http://tilvim.com/)
13. [Vim Text Objects: The Definitive Guide](http://blog.carbonfive.com/2011/10/17/vim-text-objects-the-definitive-guide/)
14. [Vimrcfu (vim tipps/snippets](http://vimrcfu.com/)
15. [FIGlet](http://www.figlet.org/)
16. [Vim quick reference card](http://tnerual.eriogerg.free.fr/vimqrc.html)

## 10 Acknowledgements

I'd like to thank all Vim and plugin developers and the community for the very powerful
and useful editor we can use on our daily workflow. :)
