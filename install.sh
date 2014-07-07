#!/bin/bash

# zsh setup
rm -f ~/.zshrc
rm -rf ~/.zsh
ln -s $(pwd)/zsh/zshrc ~/.zshrc
ln -s $(pwd)/zsh ~/.zsh

# git setup
rm -f ~/.gitconfig
rm -f ~/.gitignore_global
ln -s $(pwd)/git/gitconfig ~/.gitconfig
ln -s $(pwd)/git/gitignore_global ~/.gitignore_global
