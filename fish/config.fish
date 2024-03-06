# Bob the Fish theme
set -g theme_color_scheme gruvbox
set -g theme_display_date no
set -g theme_display_git_untracked yes
set -g theme_display_hg no
set -g theme_display_nvm no
set -g theme_display_virtualenv yes
set -g theme_nerd_fonts yes
set -g theme_powerline_fonts yes
set -g theme_title_use_abbreviated_path yes
set -g theme_use_abbreviated_branch_name yes
# set -g theme_git_worktree_support yes

# General environment variables
set -gx EDITOR nvim
set -gx PATH $PATH /usr/local/sbin

# Bat
set -gx BAT_THEME "gruvbox-dark"

# Golang config
set -gx GOPATH /Users/zachsommers/projects/golang
set -gx GOBIN $GOPATH/bin
set -gx PATH $PATH $GOBIN
source ~/.asdf/plugins/golang/set-env.fish

# Python environment variables
set -gx PYTHONDONTWRITEBYTECODE True
set -gx PATH $PATH /Users/zachsommers/.local/bin
# Pyenv
# status is-login; and pyenv init --path | source
# status --is-interactive; and pyenv init - | source
# status --is-interactive; and pyenv virtualenv-init - | source

# Ruby
# source /usr/local/share/chruby/chruby.fish
# source /usr/local/share/chruby/auto.fish
# set -gx PATH $PATH /Users/zachsommers/.gem/ruby/2.3.0/bin

# Rust
set -gx PATH $PATH $HOME/.cargo/bin

# Haskell
set -gx PATH $PATH $HOME/.ghcup/bin

# Direnv
direnv hook fish | source

# asdf
source /opt/homebrew/opt/asdf/libexec/asdf.fish
