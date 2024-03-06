#!/usr/bin/env bash
set -euxo pipefail

homebrew_root="$HOME/projects/dotfiles/homebrew"
installs_file="$homebrew_root/installs.txt"

brew list -1 --formula > $installs_file
brew list -1 --cask >> $installs_file

banned=("steam" "microsoft" "acrobat")
for ban in ${banned[@]}
do
    sed -i '' "/$ban/d" $installs_file
done