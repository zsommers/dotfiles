# Git Prompt Config
set __fish_git_prompt_show_informative_status "true"
set __fish_git_prompt_showcolorhints          "true"
set __fish_git_prompt_showdirtystate          "true"
set __fish_git_prompt_showuntrackedfiles      "true"
set __fish_git_prompt_showupstream            "informative"

set __fish_git_prompt_char_upstream_prefix    " "
set __fish_git_prompt_char_stateseparator     " "

set __fish_git_prompt_color_branch            brmagenta
set __fish_git_prompt_color_upstream          brblue
set __fish_git_prompt_color_dirtystate        brred
set __fish_git_prompt_color_cleanstate        brgreen
set __fish_git_prompt_color_untrackedfiles    bryellow

# Fish Syntax Highlighting Config
set fish_color_normal            brwhite;
set fish_color_command           brgreen;
set fish_color_error             brred;
set fish_color_comment           white;
set fish_color_autosuggestion    brblack;
set fish_color_quote             bryellow;
set fish_color_end               brgreen;
set fish_color_escape            brmagenta;
set fish_color_operator          brmagenta;
set fish_color_redirection       brcyan;
set fish_color_param             brblue;
set fish_color_valid_path        --underline;
set fish_color_user              bryellow;
set fish_color_host              brblue;
set fish_color_cwd               brgreen;
set fish_color_cwd_root          brred;
set fish_color_history_current   brgreen;
set fish_color_match             brcyan;
set fish_color_search_match      --background=blue;
set fish_pager_color_prefix      brgreen --underline;
set fish_pager_color_completion  brwhite;
set fish_pager_color_description white;
set fish_pager_color_progress    black --background=brwhite;
set fish_color_selection         black --background=brwhite;

# General environment variables
set -g -x EDITOR nvim

# Python environment variables
set -g -x PYTHONDONTWRITEBYTECODE True

# Virtual Fish - must run AFTER all PATH changes
set -g -x VIRTUALFISH_COMPAT_ALIASES True
set -g -x PROJECT_HOME /Users/zsommers/projects/python
eval (/usr/local/bin/python3 -m virtualfish compat_aliases projects global_requirements environment)

# Print Apple logo
archey
