unset GEM_HOME
unset GEM_PATH
unset VIMRUNTIME

#---------------------------------------------------------------------
# PURPOSE: export variables
#---------------------------------------------------------------------
source "$HOME/repos/zsh/export.zsh"

#---------------------------------------------------------------------
# Purpose: Set name of the theme to load
#          See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#---------------------------------------------------------------------
ZSH_THEME="jonathan" # <<<

#-------------------------------------------------------------------------------
# PURPOSE: Which plugins would you like to load?
#    NOTE: Standard plugins can be found in $ZSH/plugins/
#    NOTE: Custom plugins may be added to $ZSH_CUSTOM/plugins/
#    NOTE: Add wisely, because too many plugins slow down shell startup.
#-------------------------------------------------------------------------------
plugins=(git ruby zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

#-------------------------------------------------------------------------------
# PURPOSE: Set personal aliases, overriding those provided by oh-my-zsh libs,
#          plugins, and themes.
#    NOTE: For a full list of active aliases, run `alias`.
#-------------------------------------------------------------------------------
source "$HOME/repos/zsh/path.zsh"
source "$HOME/repos/zsh/settings.zsh"

# aliases
source "$HOME/repos/zsh/colon_commands.zsh"

source "$HOME/repos/zsh/alias.zsh"
source "$HOME/repos/zsh/commands.zsh"
source "$HOME/repos/zsh/dot_commands.zsh"
source "$HOME/repos/zsh/options.zsh" # DONE
source "$HOME/repos/zsh/functions.zsh"

source "$HOME/repos/zsh/prompt"

clear
echo "SOURCED: ~/.zshrc"
