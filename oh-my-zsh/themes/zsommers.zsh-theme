function prompt_char {
    git branch >/dev/null 2>/dev/null && echo 'Ɣ' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '✇'
}

function hg_prompt_info {
    hg prompt --angle-brackets "\
< on %{$fg[magenta]%}<branch>%{$reset_color%}>\
< at %{$fg[yellow]%}<tags|%{$reset_color%}, %{$fg[yellow]%}>%{$reset_color%}>\
%{$fg[green]%}<status|modified|unknown><update>%{$reset_color%}<
patches: <patches|join( → )|pre_applied(%{$fg[yellow]%})|post_applied(%{$reset_color%})|pre_unapplied(%{$fg_bold[black]%})|post_unapplied(%{$reset_color%})>>" 2>/dev/null
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

PROMPT='%{$fg[blue]%}%m%{$reset_color%} in %{$fg[green]%}${PWD/#$HOME/~}%{$reset_color%}$(hg_prompt_info)$(git_prompt_info)
%{$fg[blue]%}$(virtualenv_info)%{$reset_color%}%{$fg_bold[yellow]%}$(prompt_char)%{$reset_color%} '

RPROMPT="%T"

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ✘"
# ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔"