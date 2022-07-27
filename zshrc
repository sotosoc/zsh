export GEM_HOME="$HOME/.gem"
export GEM_PATH="$GEM_HOME"

unset VIMRUNTIME
#eval `ruby.env`

#---------------------------------------------------------------------
# PURPOSE: export variables
#---------------------------------------------------------------------
source $HOME/repos/zsh/export.zsh

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
source "$HOME/repos/zsh/history.zsh"
source "$HOME/repos/zsh/path.zsh"
source "$HOME/repos/zsh/prompt.zsh"
source "$HOME/repos/zsh/settings.zsh"

# aliases
source "$HOME/repos/zsh/commands.zsh" # This is first. Others should override.
source "$HOME/repos/zsh/command_options.zsh"

source "$HOME/repos/zsh/colon_commands.zsh"
source "$HOME/repos/zsh/dot_commands.zsh"
source "$HOME/repos/zsh/git_commands.zsh"
source "$HOME/repos/zsh/one_letter_commands.zsh"
source "$HOME/repos/zsh/vim_commands.zsh"
source "$HOME/repos/zsh/vnc_commands.zsh"

source "$HOME/repos/zsh/functions.zsh"

#---------------------------------------------------------------------
# Purpose: Set name of the theme to load
#          See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#---------------------------------------------------------------------
#ZSH_THEME="jonathan"
#ZSH_THEME="rkj"
#ZSH_THEME="robbyrussell"

#clear
echo "SOURCED: ~/.zshrc"
