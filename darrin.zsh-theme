# Color shortcuts
RED=$fg[red]
YELLOW=$fg[yellow]
GREEN=$fg[green]
WHITE=$fg[white]
BLUE=$fg[blue]
CYAN=$fg[cyan]
RED_BOLD=$fg_bold[red]
YELLOW_BOLD=$fg_bold[yellow]
GREEN_BOLD=$fg_bold[green]
WHITE_BOLD=$fg_bold[white]
BLUE_BOLD=$fg_bold[blue]
CYAN_BOLD=$fg_bold[cyan]
RESET_COLOR=$reset_color

# Format for git_prompt_info()
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""

# Format for parse_git_dirty()
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$RED_BOLD%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$RED_BOLD%}unmerged"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$RED_BOLD%}-"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$YELLOW_BOLD%}renamed"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$YELLOW_BOLD%}m"
ZSH_THEME_GIT_PROMPT_ADDED=" %{$GREEN_BOLD%}+"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$WHITE_BOLD%}?"

# Format for git_prompt_ahead()
ZSH_THEME_GIT_PROMPT_AHEAD=" %{$RED%}!"

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$WHITE%}[%{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$WHITE%}]"

function battery_charge() {
    if [ -e /usr/local/bin/batcharge.py ]
    then
        echo `python /usr/local/bin/batcharge.py`
    else
        echo '';
    fi
}

# %{$YELLOW%}%n%{$WHITE%} in %{$RED%}%~%u%{$RESET_COLOR%}%{$fg[cyan]%} %{$RESET_COLOR%}%{$fg[yellow]%}[$(rvm-prompt s i v g)]%{$reset_color%} $(git_prompt_ahead)%{$RESET_COLOR%}

# %{$YELLOW_BOLD%}%n%{$WHITE%} in %{$RED%}%~%u%{$RESET_COLOR%}%{$fg[cyan]%} $(git_prompt_ahead)%{$RESET_COLOR%}
# Prompt format
PROMPT='
%{$YELLOW%}%n%{$GREEN%} %~%{$RESET_COLOR%}
%{$GREEN_BOLD%}●%{$RESET_COLOR%} '
RPROMPT='%{$CYAN%}$(current_branch)$(parse_git_dirty)%{$RESET_COLOR%}'
