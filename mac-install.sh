#! /bin/bash

if ln -sf $PWD/.gitconfig $HOME/.gitconfig ; then
	echo created symlink: $PWD/.gitconfig $HOME/.gitconfig
fi

if ln -sf $PWD/.vimrc $HOME/.vimrc ; then
	echo created symlink: $PWD/.vimrc $HOME/.vimrc
fi

if ln -sf $PWD/.tmux.conf $HOME/.tmux.conf ; then
	echo created symlink: $PWD/.tmux.conf $HOME/.tmux.conf
fi

if ln -sf $PWD/.zshrc $HOME/.zshrc ; then
	echo created symlink: $PWD/.zshrc $HOME/.zshrc
fi
