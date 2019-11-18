1 - Install coc.nvim

```vim
" conquer of completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
```


2 - distro level dependencies

* luarocks
* npm
* pip
* clangd
* editorconfig


3 - coc.nvim extentions:

* coc-texlab (https://texlab.netlify.com/)
* coc-json
* coc-marketplace

3.1 - to review:

* coc-git

4 - Language level packages

4.1 - javascript:

  npm install -g nodejs

  npm install -g neovim

  https://github.com/igorshubovych/markdownlint-cli
  npm install -g markdownlint-cli

4.2 - go:

  efm-langserver
  go get github.com/mattn/efm-langserver

4.3 - lua:

  luarocks install --server=http://luarocks.org/dev lua-lsp
  luarocks install luacheck

4.4 - python:

  vint (https://github.com/Kuniwak/vint)
  pip install --user vim-vint

  python-languge-server https://github.com/palantir/python-language-server
  pip install --user 'python-language-server[all]'

4.5 - hdl: systemverilog, verilog, vhdl

  pip3 install --user  hdl-checker

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
5 - Languages:

* latex
* c/cpp clangd
* python
* vhdl https://github.com/kraigher/rust_hdl
* verilog
* lua
* json https://github.com/neoclide/coc-json
* vim


6 - Additional reference:

clang-format https://clangformat.com/

https://ianding.io/2019/07/29/configure-coc-nvim-f…

https://clang.llvm.org/docs/JSONCompilationDatabas…
https://sarcasm.github.io/notes/dev/compilation-da…
https://code.visualstudio.com/docs/cpp/c-cpp-prope…
https://clang.llvm.org/docs/index.html
https://preshing.com/20170511/how-to-build-a-cmake…

dependencies:



