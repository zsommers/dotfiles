function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '○'
}

function get_virtual_env {
  if [ -n "$VIRTUAL_ENV" ];
  then
    echo "[%{$fg[red]%}`basename \"$VIRTUAL_ENV\"`%{$reset_color%}]"
  fi
}

function set_prompt {
PROMPT="
[%{$fg[blue]%}%m%{$reset_color%}] %{$fg[green]%}%~%{$reset_color%}$(git_prompt_info)
%{$fg[blue]%}$(get_virtual_env)%{$reset_color%}%{$fg_bold[yellow]%}$(prompt_char)%{$reset_color%} "
RPROMPT="%T"
}

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ✘"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔"

function precmd {
    set_prompt
}

