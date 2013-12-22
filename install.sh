#!/bin/sh

#
# Rafael do Nascimento Pereira <rnp@25ghz.net>
#
# rnpvim installation script
#
# Last update: 2013.12.19 (Do) 23:03:46 CET (UTC +1)

basedir="$HOME/src/rnpvim"
vimdir="$HOME/.vim"
vimdirbak="$HOME/.vim.bak"
vimfile="$HOME/.vimrc"
vimfilebak="$HOME/.vimrc.bak"

echo "(1) backing up your current Vim congiguration"

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

echo "(2) cloning rnpvim from Github"

git clone https://github.com/rafaelnp/rnpvim.git $basedir > /dev/null

echo "(3) creating symlinks"

ln -s $basedir/.vim $HOME/.vim

ln -s $basedir/.vimrc $HOME/.vimrc

echo "(4) cloning plugin manager (NeoBundle) from Github"

git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim > /dev/null

echo "(5) cloning plugins from Github"

#vim +NeoBundleInstall +qall
. ~/.vim/bundle/neobundle.vim/bin/neoinstall > /dev/null

echo "(6) compiling YouCompleteMe"

cd ~/.vim/bundle/YouCompleteMe
mkdir ycm_build
cd ycm_build
# We use the clang already installed on the system
cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/bundle/YouCompleteMe/cpp
make

echo "(7) cloning powerline fonts"

git clone https://github.com/Lokaltog/powerline-fonts $HOME/src/powerline-fonts
ln -s $HOME/src/powerline-fonts $HOME/.fonts/powerline-fonts

echo "(8) updating the font cache"

fc-cache $HOME/.fonts

echo "(9) rnpvim installation ended"

