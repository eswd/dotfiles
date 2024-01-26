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

# delete everything before the line
bindkey '^U' backward-kill-line

# alias
alias gd="grep -iRIl"
alias gf="grep -iRI"
alias gits="git status"
alias gs="git status"
alias gpt="git status && git add . && git commit -m \"Stuff added for pushing..\" && git push && echo \"********\" && git status"
alias fd=fdfind
alias lt='ls --human-readable --size -1 -S --classify'
alias ip="ip -br -c a"
alias large_files="find . -xdev -type f -size +800M"

### additional stuff

export PATH=~/.local/bin/:$PATH

# "fd-find" needs to be installed 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

### source some system specifics

if [ -f ~/.zshrc_local ]; then
    # Führe den Source-Befehl aus, wenn die Datei vorhanden ist
    source ~/.zshrc_local
fi



