#! /bin/bash

if ln -sf $PWD/.gitconfig $HOME/.gitconfig ; then
	echo created symlink: $PWD/.gitconfig $HOME/.gitconfig
fi

if ln -sf $PWD/.vimrc $HOME/.vimrc ; then
	echo created symlink: $PWD/.vimrc $HOME/.vimrc
fi

if ln -sf $PWD/.profile $HOME/.profile ; then
	echo created symlink: $PWD/.profile $HOME/.profile
fi

if ln -sf $PWD/.bashrc $HOME/.bashrc; then
	echo created symlink: $PWD/.bashrc $HOME/.bashrc
fi
