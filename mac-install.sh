#! /bin/bash

if ln -sf $PWD/.gitconfig $HOME/.gitconfig ; then
	echo created symlink: $PWD/.gitconfig $HOME/.gitconfig
fi

if ln -sf $PWD/.vimrc $HOME/.vimrc ; then
	echo created symlink: $PWD/.vimrc $HOME/.vimrc
fi
