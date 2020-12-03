# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="mytheme"
# ZSH_THEME="powerlevel10k/powerlevel10k"


# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages)

source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias mutt="~/Dokumente/.mailanhaenge && mutt"
alias grepd="grep -iRl"
alias gd="grep -iRl"
alias gits="git status"
#alias gs="git status"
alias sai="sudo apt install"
alias fd=fdfind
alias lt='ls --human-readable --size -1 -S --classify'
source .dotfiles/.zsh_nogit

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

cd /local/etl

export PATH=~/.local/bin/:$PATH

function cd
{
    if [ $# -eq 0 ]; then
        pushd ~ > /dev/null
    elif [ " $1" = " -" ]; then
        pushd "$OLDPWD" > /dev/null
    else
        pushd "$@" > /dev/null
    fi
}


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/felw/.sdkman"
[[ -s "/home/felw/.sdkman/bin/sdkman-init.sh" ]] && source "/home/felw/.sdkman/bin/sdkman-init.sh"
