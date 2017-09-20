# rnpvim: Rafael Pereira's neovim and vim config files

Last update: 2017.07.20 (Thu) 17:57:01 (UTC +0100 BST)

This Vim setup is based on my daily workflow at work/home, where is normaly use
C/C++, Assembly and HDL (Verilog, VDHL). This is still a work in progress, so
Suggestions, corrections are welcome :-)

Current version: [0.5.0](https://github.com/rafaelnp/rnpvim/releases).

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
plugins are managed by [vim-plug](https://github.com/junegunn/vim-plug)
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

* Man page inside Vim


## 2 Requirements

This Vim setup has the following requirements/dependencies:

* [Vim](http://www.vim.org) 7.4 or newer
* [Neovim](http://neovim.io) 0.2 or newer
* [exuberant ctags](http://ctags.sourceforge.net/)
* [clang](http://clang.llvm.org/) 3.3 or newer (to compile the [YouCompletMe](https://github.com/Valloric/YouCompleteMe) clang-completer)
* [cmake](http://www.cmake.org/)(to compile the [YouCompletMe](https://github.com/Valloric/YouCompleteMe))
* [Python](http://www.python.org) 2.7 or newer
* [Git](http://www.git-scm.com/) 2.10 or newer
* [The Silver Search](http://geoff.greer.fm/ag/)
* [EditorConfig](http://editorconfig.org/)


## 3 Installation

Work in progress, being rewritten.


## 4 Acknowledgements

I'd like to thank all NeoVim and Vim developers and the community for the very powerful
and useful editor we can use on our daily workflow. :)
