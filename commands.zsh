# strictly alphabetized
alias   mark="export mark=$(pwd)"

################################################################################
# DEFINE COMMANDS
################################################################################
#-------------------------------------------------------------------------------
# PURPOSE: quickly tag TMUX windows while managing many PNR blocks.
#-------------------------------------------------------------------------------
alias DONE='reset && clear && echo DONE'
alias TODO='reset && clear && echo TODO'
alias NEED='reset && clear && echo NEED_FIX'

#-------------------------------------------------------------------------------
# PURPOSE: Edit bash history
#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------
# PURPOSE: See my aliases
#-------------------------------------------------------------------------------
alias aliases='alias | sort | less'

#-------------------------------------------------------------------------------
# CPU information
#-------------------------------------------------------------------------------
alias cpu='cat /proc/cpuinfo /proc/meminfo | less'

#-------------------------------------------------------------------------------
# PURPOSE: save history when exiting
#-------------------------------------------------------------------------------
alias exit='history -a && exit'

#-------------------------------------------------------------------------------
# PURPOSE: grep shortcuts
#-------------------------------------------------------------------------------
alias gr='grep'

alias gri='grep -i'
alias grl='grep -l'
alias grr='grep -r'

alias gril='grep -il'
alias grir='grep -ir'
alias grli='grep -li'
alias grlr='grep -lr'
alias grri='grep -ri'
alias grrl='grep -rl'

alias grilr='grep -ilr'
alias grirl='grep -ilr'
alias grlir='grep -ilr'
alias grlri='grep -ilr'
alias grril='grep -ilr'
alias grrli='grep -ilr'

#-------------------------------------------------------------------------------
# PURPOSE: set or unset history file
#-------------------------------------------------------------------------------
alias hist='export HISTFILE=~/.zsh_history'
alias nohist='unset HISTFILE'

#-------------------------------------------------------------------------------
# PURPOSE: define my ls commands
#-------------------------------------------------------------------------------
alias cl='clear; ls -l'

alias  l='ls -lh'
alias la='ls -lhA'
alias ld='ls -1Ad */'
alias ll='ls -lh'
alias lt='ls -lrth'
alias lS='ls -lS'

#-------------------------------------------------------------------------------
# PURPOSE: list specific files in directory
#-------------------------------------------------------------------------------
alias ltcl='ls -lh *.tcl'
alias llog='ls -lh *.log'

#-------------------------------------------------------------------------------
# PURPOSE: change defaults on make jobs
#-------------------------------------------------------------------------------
alias make='make    --no-builtin-rules PRI=-10   JOBS=8'
alias make1='make   --no-builtin-rules PRI=-1    JOBS=8'
alias make10='make  --no-builtin-rules PRI=-10   JOBS=8'
alias make11='make  --no-builtin-rules PRI=-11   JOBS=8'
alias make100='make --no-builtin-rules PRI=-100  JOBS=8'

#-------------------------------------------------------------------------------
# PURPOSE: quickly see current month in context
#-------------------------------------------------------------------------------
alias month='\cal -3'

#-------------------------------------------------------------------------------
# PURPOSE: pick a random file from the current directory
#-------------------------------------------------------------------------------
alias pick='ls -1 | sort -R | head -1'

#-------------------------------------------------------------------------------
# PURPOSE: tcl shortcuts
#-------------------------------------------------------------------------------
alias  tcl="clear; rlwrap tclsh"
alias wish="clear; rlwrap wish"

#-------------------------------------------------------------------------------
# PURPOSE: easily get today's date
#-------------------------------------------------------------------------------
alias today='date +%Y_%m_%d'
alias   now='date +%Y_%m_%d_time_%H_%M_%S'

#-------------------------------------------------------------------------------
# PURPOSE: watch a file log
#-------------------------------------------------------------------------------
alias trail='tail -F -n 1000'

#-------------------------------------------------------------------------------
# PURPOSE: see calendar of current year
#-------------------------------------------------------------------------------
alias cal='cal 2022'
