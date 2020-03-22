
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
            - [4.1.1 - Update installed packages](#411---update-installed-packages)
        - [4.2 - Go](#42---go)
            - [4.2.1 - Upgrade installed packages](#421---upgrade-installed-packages)
        - [4.3 - Lua](#43---lua)
        - [4.3.1 - Upgrade installed packages](#431---upgrade-installed-packages)
        - [4.4 - Python](#44---python)
        - [4.4 - Upgrade installed packages](#44---upgrade-installed-packages)
        - [4.5 - HDL: systemverilog, verilog, vhdl](#45---hdl-systemverilog-verilog-vhdl)
    - [5 - Languages](#5---languages)
        - [5.1 - C/C++](#51---cc)
        - [5.2 - Latex](#52---latex)
        - [5.3 - Python](#53---python)
        - [5.4 - VHDL](#54---vhdl)
        - [5.5 - Verilog](#55---verilog)
        - [5.6 - Lua](#56---lua)
        - [5.7 - Json](#57---json)
        - [5.8 - VimL](#58---viml)
    - [6 - Fonts](#6---fonts)
    - [7 - Additional reference](#7---additional-reference)

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
- ccls


## 3 - coc.nvim extentions

Installed coc.nvim extentions:

- [coc-diagnostic](https://github.com/iamcco/coc-diagnostic)
- [coc-json](https://github.com/neoclide/coc-json)
- [coc-marketplace](https://github.com/fannheyward/coc-marketplace)
- [coc-explorer](https://github.com/weirongxu/coc-explorer)
- [coc-snippets](https://www.npmjs.com/package/coc-snippets)
- [coc-texlab](https://texlab.netlify.com/)
- [coc-utils](https://github.com/coc-extensions/coc-utils)
- [coc-word](https://github.com/neoclide/coc-sources)

More infos: [Using coc extentions](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions)


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


#### 4.1.1 - Update installed packages

install the `npm-check-updates`:

```sh
 sudo npm install -g npm-check-updates
```

to update all installed packages, check if there are updates:

```
sudo ncu -g
[====================] 10/10 100%

markdownlint-cli  0.18.0  →  0.22.0
neovim             4.5.0  →   4.8.0

ncu itself cannot upgrade global packages. Run the following to upgrade all global packages:

sudo npm -g install markdownlint-cli@0.22.0 neovim@4.8.0
```

Install the updates:

```sh
sudo npm -g install markdownlint-cli@0.22.0 neovim@4.8.0

```

or to install neovim related packages:

```sh
sudo npm update -g nodejs neovim markdownlint-cli
```

### 4.2 - Go

to install `efm-langserver`:

```sh
go get github.com/mattn/efm-langserver
```

#### 4.2.1 - Upgrade installed packages

```sh
go get -u github.com/mattn/efm-langserver
```

### 4.3 - Lua

to install lua lsp server and luacheck:

```sh
luarocks install --server=http://luarocks.org/dev lua-lsp`
luarocks install luacheck`
```

### 4.3.1 - Upgrade installed packages

```sh
luarocks install luacheck`lua-lsp
```

### 4.4 - Python

[vint](https://github.com/Vimjas/vint)

[yamllint](https://github.com/adrienverge/yamllint)

```sh
pip install --user vim-vint

pip install --user yamllint
```

  [python-languge-server](https://github.com/palantir/python-language-server)

```sh
pip install --user 'python-language-server[all]'
```

### 4.4 - Upgrade installed packages

```sh
pip install --user vim-vint python-language-server yapf pyflakes rope
```


### 4.5 - HDL: systemverilog, verilog, vhdl

```sh
  pip3 install --user  hdl-checker
```

  Add language server configutation to coc-settings.json:

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

To make the linting work, it is needed to install adittional packages, at least one for
each HDL language:

1. ghdl (VHDL)
2. verilator (Verilog/SystemVerilog)
3. icarus (Verilog/SystemVerilog)
4. modelsim (VHDL/Verilog/SystemVerilog)


## 5 - Languages

### 5.1 - C/C++

- [Configure coc.nvim for C/C++ Development](https://ianding.io/2019/07/29/configure-coc-nvim-for-c-c++-development/)
- [clang-format](https://clangformat.com/)
- [ccls wiki](https://github.com/MaskRay/ccls/wiki)
- [clang json compilation database](https://clang.llvm.org/docs/JSONCompilationDatabas…)
- [Compilation Database](https://sarcasm.github.io/notes/dev/compilation-database.html)
- [c_cpp_properties.json reference](https://code.visualstudio.com/docs/cpp/c-cpp-prope…)
- [clang](https://clang.llvm.org/docs/index.html)

### 5.2 - Latex


### 5.3 - Python


### 5.4 - VHDL

- [VHDL](https://github.com/kraigher/rust_hdl)

### 5.5 - Verilog
- Verilog

### 5.6 - Lua


### 5.7 - Json

- [coc-json](https://github.com/neoclide/coc-json)

### 5.8 - VimL


## 6 - Fonts



## 7 - Additional reference

- [How to Build a CMake-Based Project](https://preshing.com/20170511/how-to-build-a-cmake-based-project/)


