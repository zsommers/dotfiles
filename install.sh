#!/bin/bash

# zsh config
rm -f ~/.zshrc
rm -rf ~/.zsh
ln -s "$(pwd)/zsh/zshrc" "~/.zshrc"
ln -s "$(pwd)/zsh" "~/.zsh"
