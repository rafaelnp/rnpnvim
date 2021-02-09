# RnpVim: neovim config files

Last update: 2020.03.22 (Sun) 20:28:56 (UTC +0100 CET)

# Table of Contents

- [RnpVim: neovim config files](#rnpvim-neovim-config-files)
- [Table of Contents](#table-of-contents)
    - [0 Introduction](#0-introduction)
    - [1 Why rnpvim](#1-why-rnpvim)
      - [1.1 Main features](#11-main-features)
    - [2 Requirements](#2-requirements)
    - [3 Installation](#3-installation)
    - [4 References](#4-references)
    - [5 Acknowledgements](#5-acknowledgements)

### 0 Introduction

This Neovim setup is based on my daily workflow at work/home, where is normaly use
different programming languages. This is still a work in progress, so
Suggestions, corrections are welcome, and **expect some glitches**. :-)

### 1 Why rnpvim

Have a Neovim configuration on git (in this case Github) makes easier to use the
same configuration across different computers, keep a history of what you have
done and if you do something wrong you can revert it on a sane way.

If you use vim and your workflow includes Assembly, C, C++, LaTeX and HDL(Verilog,VHDL),
then rnpvim may be a good option for you.

**The rnpvim was tested only on Linux and Windows 10. Theoretically it should work on Mac OSX.**

#### 1.1 Main features

Here are listed the main rnpvim 's features, provided by additional plugins. Those
plugins are managed by [vim-plug](https://github.com/junegunn/vim-plug)
which is also an Vim plugin, that make the Vim users life much easier.

Implemented:

- Buffer browsing
- Basic calender integration
- Code completion (coc.nvim)
- Editorconfig intergration
- Extensible status/tagline
- Enhanced Vim motion
- File browsing
- Git full integration
- LaTeX integration
- LSP support
  - C/C++
  - Lua
  - Python
  - Verilog/SystemVerilog (partial)
  - VHDL (partial)
- Markdown integration
- Markdown Preview
- MRU File/Directory browsing
- Plugins management
- Fuzzy search
- Syntax check (Linting)
- Tag browser
- Integration with GnuPG for encrypted files
- Customized startup message and mru files
- Undo tree history
- Useful abbreviations

Todo:

- Linting (work in progress)
- VHDL/Verilog syntax highlight
- Code/text autocompletion (in progress)

### 2 Requirements

This Vim setup has the following requirements/dependencies:

- [Clang](http://clang.llvm.org/) >= 7.0
- [Cmake](http://www.cmake.org/) >= 3.0
- [EditorConfig](http://editorconfig.org/)
- [Git](http://www.git-scm.com/) >= 2.10
- [LuaRocks](https://luarocks.org/)
- [Neovim](http://www.vim.org) 0.4.0 or newer
- [Nerdfonts](https://www.nerdfonts.com/)
- [Npm](https://www.npmjs.com/)
- [Python](http://www.python.org) 3.6 or newer
- [Phton-jedi](https://jedi.readthedocs.io/en/latest/)
- [Python Pip](https://pypi.org/project/pip/)
- [The Silver Search](http://geoff.greer.fm/ag/)
- [Universal ctags](https://github.com/universal-ctags/ctags)

### 3 Installation

Work in progress, being rewritten.

### 4 References

1. [Neovim](http://neovim.io)
2. [Vim](http://www.vim.org)
3. [coc.nvim](https://github.com/neoclide/coc.nvim)
4. [Vim Casts](http://vimcasts.org/)
5. [Learn Vim Script the hard way](http://learnvimscriptthehardway.stevelosh.com/)
6. [Writing Vim Scripts](http://stevelosh.com/blog/2011/09/writing-vim-plugins/)
7. [Use Vim](http://usevim.com)
8. [Vivify - Colorscheme editor for Vim](http://bytefluent.com/vivify/)
9. [Vim Wiki at Wikia](http://vim.wikia.com/wiki/Vim_Tips_Wiki)
10. [Vim Community at Google Plus](https://plus.google.com/u/0/communities/105049811056605918816)
11. [Learn Vim progressively](http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively)
12. [Vimregex](http://vimregex.com/)
13. [Why certain text editors make you more productive](http://www.terminally-incoherent.com/blog/2012/04/04/why-certain-text-editors-make-you-more-productive/)
14. [Vimawesome](http://vimawesome.com/)
15. [Today I learned Vim](http://tilvim.com/)
16. [Vim Text Objects: The Definitive Guide](http://blog.carbonfive.com/2011/10/17/vim-text-objects-the-definitive-guide/)
17. [Vimrcfu (vim tipps/snippets)](http://vimrcfu.com/)
18. [FIGlet](http://www.figlet.org/)
19. [Vim quick reference card](http://tnerual.eriogerg.free.fr/vimqrc.html)
20. [What is modern vim?](https://medium.com/usevim/what-is-modern-vim-2591f6b1ec04)
21. [redit neovim](https://www.reddit.com/r/neovim/)

### 5 Acknowledgements

I'd like to thank all NeoVim and Vim developers and the community for the very powerful
and useful editor we can use on our daily workflow. :)

