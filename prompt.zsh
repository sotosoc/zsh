function theme_precmd {
  local TERMWIDTH=$(( COLUMNS - ${ZLE_RPROMPT_INDENT:-1} ))

  PR_FILLBAR=""
  PR_PWDLEN=""

  local promptsize=${#${(%):---(%n@%m:%l)---()--}}
  local rubypromptsize=${#${(%)$(ruby_prompt_info)}}
  local pwdsize=${#${(%):-%~}}

  # Truncate the path if it's too long.
  if (( promptsize + rubypromptsize + pwdsize > TERMWIDTH )); then
    (( PR_PWDLEN = TERMWIDTH - promptsize ))
  elif [[ "${langinfo[CODESET]}" = UTF-8 ]]; then
    PR_FILLBAR="\${(l:$(( TERMWIDTH - (promptsize + rubypromptsize + pwdsize) ))::${PR_HBAR}:)}"
  else
    PR_FILLBAR="${PR_SHIFT_IN}\${(l:$(( TERMWIDTH - (promptsize + rubypromptsize + pwdsize) ))::${altchar[q]:--}:)}${PR_SHIFT_OUT}"
  fi
}

function theme_preexec {
  setopt local_options extended_glob
  if [[ "$TERM" = "screen" ]]; then
    local CMD=${1[(wr)^(*=*|sudo|-*)]}
    echo -n "\ek$CMD\e\\"
  fi
}

autoload -U add-zsh-hook
add-zsh-hook precmd  theme_precmd
add-zsh-hook preexec theme_preexec


# Set the prompt

# Need this so the prompt will work.
setopt prompt_subst

# See if we can use colors.
autoload zsh/terminfo
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE GREY; do
  typeset -g PR_$color="%{$terminfo[bold]$fg[${(L)color}]%}"
  typeset -g PR_LIGHT_$color="%{$fg[${(L)color}]%}"
done
PR_NO_COLOR="%{$terminfo[sgr0]%}"

# Modify Git prompt
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

    ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[red]%}%{%G+%}"
 ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[red]%}%{%GM%}"
  ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}%{%Gx%}"
  ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[red]%}%{%G→%}"
 ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}%{%G=%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%}%{%G!%}"
    ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[red]%}>%{$reset_color%}"
   ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[red]%}<%{$reset_color%}"

# ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg_bold[green]%}±%{$reset_color%}%{$fg_bold[white]%}"
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✓%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_STAGED="%{$fg_bold[green]%}●%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg_bold[yellow]%}●%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[red]%}●%{$reset_color%}"

# Use extended characters to look nicer if supported.
if [[ "${langinfo[CODESET]}" = UTF-8 ]]; then
  PR_SET_CHARSET=""
  PR_DBL_COLON="∷"
  PR_HBAR="─"
  PR_ULCORNER="┌"
  PR_LLCORNER="└"
  PR_LRCORNER="┘"
  PR_URCORNER="┐"
else
  typeset -g -A altchar
  set -A altchar ${(s..)terminfo[acsc]}
  # Some stuff to help us draw nice lines
  PR_SET_CHARSET="%{$terminfo[enacs]%}"
  PR_SHIFT_IN="%{$terminfo[smacs]%}"
  PR_SHIFT_OUT="%{$terminfo[rmacs]%}"
  PR_HBAR="${PR_SHIFT_IN}${altchar[q]:--}${PR_SHIFT_OUT}"
  PR_ULCORNER="${PR_SHIFT_IN}${altchar[l]:--}${PR_SHIFT_OUT}"
  PR_LLCORNER="${PR_SHIFT_IN}${altchar[m]:--}${PR_SHIFT_OUT}"
  PR_LRCORNER="${PR_SHIFT_IN}${altchar[j]:--}${PR_SHIFT_OUT}"
  PR_URCORNER="${PR_SHIFT_IN}${altchar[k]:--}${PR_SHIFT_OUT}"
fi

# Decide if we need to set titlebar text.
case $TERM in
  xterm*)
    PR_TITLEBAR=$'%{\e]0;%(!.-=*[ROOT]*=- | .)%n@%m:%~ | ${COLUMNS}x${LINES} | %y\a%}'
    ;;
  screen)
    PR_TITLEBAR=$'%{\e_screen \005 (\005t) | %(!.-=[ROOT]=- | .)%n@%m:%~ | ${COLUMNS}x${LINES} | %y\e\\%}'
    ;;
  *)
    PR_TITLEBAR=""
    ;;
esac

# Decide whether to set a screen title
if [[ "$TERM" = "screen" ]]; then
  PR_STITLE=$'%{\ekzsh\e\\%}'
else
  PR_STITLE=""
fi

# DMC: This was my first version. I am removing the time.
# # Finally, the prompt.
# PROMPT='${PR_SET_CHARSET}${PR_STITLE}${(e)PR_TITLEBAR}\
#
# [ ${PR_RED}%(!.%SROOT%s.%n)${PR_GREY}@${PR_RED}%m ${PR_GREY}] \
# ${PR_GREY}[ $(git_prompt_info)$(git_prompt_status) ${PR_GREY}] \
# ${PR_GREY}%${PR_PWDLEN}<...<%~%<<${PR_GREY}$(ruby_prompt_info)\
#
# ${PR_CYAN}${PR_DBL_COLON}${PR_BLUE} \
# ${PR_CYAN}%D{%H:%M:%S}\
# ${PR_LIGHT_BLUE}%{$reset_color%}${PR_CYAN} >${PR_NO_COLOR} '
#
# # display exitcode on the right when > 0
# return_code="%(?..%{$fg[red]%}%? ↵ %{$reset_color%})"
# RPROMPT=' $return_code${PR_CYAN}\
# '
#
# PS2='${PR_CYAN}${PR_HBAR}\
# ${PR_BLUE}${PR_HBAR}(\
# ${PR_LIGHT_GREEN}%_${PR_BLUE})${PR_HBAR}\
# ${PR_CYAN}${PR_HBAR}${PR_NO_COLOR} '

# Finally, the prompt.
PROMPT='${PR_SET_CHARSET}${PR_STITLE}${(e)PR_TITLEBAR}\

${PR_RED}[${PR_GREY}%(!.%SROOT%s.%n)${PR_RED}]\
${PR_RED}[${PR_GREY}%m${PR_RED}]\
${PR_RED}[$(git_prompt_info)$(git_prompt_status)${PR_RED}]\
${PR_GREY} %${PR_PWDLEN}<...<%~%<<${PR_GREY}$(ruby_prompt_info)\

${PR_GREY}${PR_DBL_COLON} ${PR_BLUE}'

# display exitcode on the right when > 0
return_code="%(?..%{$fg[red]%}%? ↵ %{$reset_color%})"
RPROMPT=' $return_code${PR_CYAN}\
'

# Preceed with a line
# PS1=$'${(r:$COLUMNS::_:)}'$PS1
# PS1=$'%U${(r:$COLUMNS:: :)}%u'$PS1
# PS1=$'%{\e(0%}${(r:$COLUMNS::q:)}%{\e(B%}'$PS1

PS2='${PR_CYAN}${PR_HBAR}\
${PR_BLUE}${PR_HBAR}(\
${PR_LIGHT_GREEN}%_${PR_BLUE})${PR_HBAR}\
${PR_CYAN}${PR_HBAR}${PR_NO_COLOR} '
