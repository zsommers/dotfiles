
#!/usr/bin/env bash
set -euxo pipefail

homebrew_root="$HOME/projects/dotfiles/homebrew"
installs_file="$homebrew_root/installs.txt"

brew install $(cat $installs_file)