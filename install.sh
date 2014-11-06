#!/bin/sh

#
# Rafael do Nascimento Pereira <rnp@25ghz.net>
#
# rnpvim installation script
#
# Last update: 2014.11.06 (Thu) 10:32:35 (UTC +0100 CET)

basedir="$HOME/src/rnpvim"
vimdir="$HOME/.vim"
vimdirbak="$HOME/.vim.bak"
vimfile="$HOME/.vimrc"
vimfilebak="$HOME/.vimrc.bak"
fontdir="$HOME/.font"

echo "
=============================================
(1) backing up your current Vim congiguration
=============================================
"

if [ -d "$basedir" ]; then
	echo "  $basedir already exists. Exiting rnpvim instalation.."
	exit 1
fi

if [ ! -e "$vimdir" ]; then
	echo "    No $vimdir backup performed. Directory does not exist."
else
	if [ -L "$vimdir" ]; then
		echo "    removing $vimdir symlink"
		rm $vimdir
	else
		echo "    moving $vimdir to $vimdirbak"
		mv $vimdir $vimdirbak
	fi
fi

if [ ! -e "$vimfile" ]; then
	echo "    No $vimfile backup performed. File does not exist."
else
	if [ -L "$vimfile" ]; then
		echo "    removing $vimfile symlink"
		rm $vimfile
	else
		echo "    moving $vimfile to $vimfilebak"
		mv $vimfile $vimfilebak
	fi
fi

echo "
=============================================
(2) cloning rnpvim from Github
=============================================
"
git clone https://github.com/rafaelnp/rnpvim.git $basedir

echo "
=====================
(3) creating symlinks
=====================
"
ln -s $basedir/.vim $HOME/.vim
ln -s $basedir/.vimrc $HOME/.vimrc

echo "
==================================================
(4) cloning plugin manager (NeoBundle) from Github
==================================================
"
git clone git://github.com/Shougo/neobundle.vim $vimdir/bundle/neobundle.vim

echo "
===============================
(5) cloning plugins from Github
===============================
"

#vim +NeoBundleInstall +qall
. $vimdir/bundle/neobundle.vim/bin/neoinstall > /dev/null

echo "
======================================================
(6) compiling YouCompleteMe Clang autocomplete support
======================================================
"
clangversion="llvm"  # Default: download from llvm.org
#clangversion="local" Uncomment this line if you wanna use or local version
cd $vimdir/bundle/YouCompleteMe

if [ "$clangversion" = "llvm" ]; then
	./install.sh --clang-completer
elif [ "$clangversion" = "local" ]; then
	# We use the clang already installed on the system
	./install.sh --clang-completer --system-libclang
else
	echo "  Error: Invalid option to compile YouCompleteMe Clang completion support"
fi

echo "
===========================
(7) cloning powerline fonts
===========================
"

if [ -d "$fontdir/powerline-fonts" ]; then
	echo "  $fontdir/powerline-fonts already exists. Skipping porweline-fonts instalation.."
	exit
fi

git clone https://github.com/Lokaltog/powerline-fonts $HOME/src/powerline-fonts
ln -s $HOME/src/powerline-fonts $HOME/.fonts/powerline-fonts

echo "
===========================
(8) updating the font cache
===========================
"

fc-cache $HOME/.fonts

echo "
=============================
(9) rnpvim installation ended
=============================
For more infos about rnpvim type ':help rnpvim'
"

