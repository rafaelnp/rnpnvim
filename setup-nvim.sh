#!/bin/bash

#
# Install vim-plug on neovim
#

curl -fLo $(pwd)/nvim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

