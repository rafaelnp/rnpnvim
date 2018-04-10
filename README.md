# rnpvim: Rafael Pereira's Neovim config files

Last update: 2018.04.10 (Di) 23:55:40 (UTC +0200 CEST)

This Neovim setup is based on my daily workflow at work/home, where is normaly use
C/C++, Assembly, Python, LaTeX and HDL (Verilog, VDHL). This is still a work in progress, so
Suggestions, corrections are welcome :-)

**THIS IS A PRE_RELEASE version, expect some glitches...**
Current version: [0.6.0-pre](https://github.com/rafaelnp/rnpvim/releases).

## 1 Why rnpvim ?

Have a Vim configuration on git (in this case Github) makes easier to use the same
configuration across different computers, keep a history of what you have done and
if you do something wrong you can revert it on a sane way.

If you use vim and your workflow includes Assembly, C, C++, LaTeX and HDL(Verilog,VHDL),
then rnpvim may be a good option for you.

```
The RnpVim was tested only on Linux and Windows 10. Theoretically it should work on Mac OSX.
```

### 1.1 Main features

Here are listed the main rnpvim 's features, provided by additional plugins. Those
plugins are managed by [vim-plug](https://github.com/junegunn/vim-plug)
which is also an Vim plugin, that make the Vim users life much easier.

Implemented:
* Buffer browsing
* Calender integration
* Extensible status/tagline
* Enhanced Vim motion
* File browsing
* Git full integration
* Opensource VCSs integration
* Plugins management
* Fuzzy search
* Syntax check:w
* Tag browser
* Integration with GnuPG for encrypted files
* Customized startup message and recently edited files
* Undo tree history
* Useful abbreviations

Todo:
* VHDL/Verilog syntax highlight
* Code/text autocompletion
* LaTeX integration
* Editorconfig intergration

## 2 Requirements

This Vim setup has the following requirements/dependencies:

* [Neovim](http://www.vim.org) 0.2.0 or newer
* [Universal ctags](https://github.com/universal-ctags/ctags)
* [clang](http://clang.llvm.org/) 3.3 or newer (to compile the [YouCompletMe](https://github.com/Valloric/YouCompleteMe) clang-completer)
* [cmake](http://www.cmake.org/)(to compile the [YouCompletMe](https://github.com/Valloric/YouCompleteMe))
* [Python](http://www.python.org) 3 or newer
* [Git](http://www.git-scm.com/) 2.10 or newer
* [The Silver Search](http://geoff.greer.fm/ag/)
* [EditorConfig](http://editorconfig.org/)


## 3 Installation

Work in progress, being rewritten.


## 4 References

0. [Neovim](http://neovim.io)
1. [Vim](http://www.vim.org)
2. [Vim Casts](http://vimcasts.org/)
3. [Learn Vim Script the hard way](http://learnvimscriptthehardway.stevelosh.com/)
5. [Writing Vim Scripts](http://stevelosh.com/blog/2011/09/writing-vim-plugins/)
5. [Use Vim](http://usevim.com)
6. [Vivify - Colorscheme editor for Vim](http://bytefluent.com/vivify/)
7. [Vim Wiki at Wikia](http://vim.wikia.com/wiki/Vim_Tips_Wiki)
8. [Vim Community at Google Plus](https://plus.google.com/u/0/communities/105049811056605918816)
9. [Learn Vim progressively](http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively)
10. [Vimregex](http://vimregex.com/)
11. [Why certain text editors make you more productive](http://www.terminally-incoherent.com/blog/2012/04/04/why-certain-text-editors-make-you-more-productive/)
12. [Vimawesome](http://vimawesome.com/)
13. [Today I learned Vim](http://tilvim.com/)
14. [Vim Text Objects: The Definitive Guide](http://blog.carbonfive.com/2011/10/17/vim-text-objects-the-definitive-guide/)
15. [Vimrcfu (vim tipps/snippets)](http://vimrcfu.com/)
16. [FIGlet](http://www.figlet.org/)
17. [Vim quick reference card](http://tnerual.eriogerg.free.fr/vimqrc.html)
18. [What is modern vim?](https://medium.com/usevim/what-is-modern-vim-2591f6b1ec04)
19. [redit neovim](https://www.reddit.com/r/neovim/)

## 5 Acknowledgements

I'd like to thank all NeoVim and Vim developers and the community for the very powerful
and useful editor we can use on our daily workflow. :)
