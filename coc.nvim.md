
# Conquer-of-Completion Configuration

# Table of Contents

- [Conquer-of-Completion Configuration](#conquer-of-completion-configuration)
- [Table of Contents](#table-of-contents)
    - [1 - Install coc.nvim](#1---install-cocnvim)
    - [2 - distro level dependencies](#2---distro-level-dependencies)
    - [3 - coc.nvim extentions](#3---cocnvim-extentions)
        - [3.1 - to review](#31---to-review)
    - [4 - Language level packages](#4---language-level-packages)
        - [4.1 - javascript](#41---javascript)
        - [4.2 - go](#42---go)
        - [4.3 - lua](#43---lua)
        - [4.4 - python](#44---python)
        - [4.5 - hdl: systemverilog, verilog, vhdl](#45---hdl-systemverilog-verilog-vhdl)
    - [5 - Languages](#5---languages)
    - [6 - Additional reference](#6---additional-reference)

## 1 - Install coc.nvim

```vim
" conquer of completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
```
inside neovim run the following commmands:
```sh
:so ~/.config/nvim/vim-plug.vim
:PlugInstall
```

## 2 - distro level dependencies

- luarocks
- npm
- pip
- clangd
- editorconfig


## 3 - coc.nvim extentions

- [coc-texlab](https://texlab.netlify.com/)
- coc-json
- coc-marketplace

### 3.1 - to review

- coc-git

## 4 - Language level packages

### 4.1 - javascript

```sh
  npm install -g nodejs

  npm install -g neovim

```

```sh
  https://github.com/igorshubovych/markdownlint-cli
  npm install -g markdownlint-cli
```

### 4.2 - go

  efm-langserver
  go get github.com/mattn/efm-langserver

### 4.3 - lua

  `luarocks install --server=http://luarocks.org/dev lua-lsp`
  `luarocks install luacheck`

### 4.4 - python

  [vint](https://github.com/Kuniwak/vint)

```sh
  pip install --user vim-vint
```

  [python-languge-server](https://github.com/palantir/python-language-server)

```sh
  pip install --user 'python-language-server[all]'
```

### 4.5 - hdl: systemverilog, verilog, vhdl

```sh
  pip3 install --user  hdl-checker
```

  add language server configutation to coc-settings.json:

```json
    "hdlChecker": {
       "command": "hdl_checker",
       "args": [
           "--lsp"
       ],
       "filetypes": [
           "vhdl",
           "verilog",
           "systemverilog"
       ]
```

To make the linting work, it was needed to install some package containing the VHDL libraries, e.g. freehdl


## 5 - Languages

- latex
- c/cpp clangd
- python
- [vhdl](https://github.com/kraigher/rust_hdl)
- verilog
- lua
- [json](https://github.com/neoclide/coc-json)
- vim


## 6 - Additional reference

[clang-format](https://clangformat.com/)

[h](ttps://ianding.io/2019/07/29/configure-coc-nvim-f…)

[clang json compilation database](https://clang.llvm.org/docs/JSONCompilationDatabas…)
[??](https://sarcasm.github.io/notes/dev/compilation-da…)
[??](https://code.visualstudio.com/docs/cpp/c-cpp-prope…)
[clang](https://clang.llvm.org/docs/index.html)
[??](https://preshing.com/20170511/how-to-build-a-cmake…)

dependencies:

