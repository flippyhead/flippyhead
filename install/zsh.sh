#!/bin/sh

echo "Setting up ZSH..."

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $DOTFILES $HOME/.dotfiles
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
