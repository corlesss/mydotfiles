PROMPT='%0{$bg[red]$fg[grey]%}%@ %1{$bg[blue]$fg[red]$fg[black]%} %n %1{$bg[white]$fg[blue]$fg[black]%} %3~ %1{$bg[black]$fg[white]$fg[red]%} %0{$reset_color%}%(!.#.$) '
RPROMPT='[$(git_prompt_info)]'

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg_no_bold[yellow]%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%0{$fg_bold[blue]%})%0{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗"
