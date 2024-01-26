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
export OPENTTD_REPO="~/.local/share/openttd/save"

# "fd-find" needs to be installed 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

### functions

git_auto_commit() {
    local git_dir="$1"
    echo $git_dir
    local hostname="$(hostname)"
    local current_datetime="$(date +'%Y-%m-%d %H:%M:%S')"
    local original_dir="$PWD"

    # Wechsle in das Ziel-Git-Verzeichnis
    cd "${git_dir/#\~/$HOME}" || { echo "Fehler: Konnte nicht in das Verzeichnis wechseln."; return 1; }

    # Git Pull, prüfe auf Fehler
    if ! git pull; then
        echo "Fehler beim Pullen von Änderungen. Der Commit und Push werden abgebrochen."
        return 1
    fi

    # Prüfe, ob es Änderungen gibt
    if ! [[ `git status --porcelain` ]]; then
        echo "Keine Änderungen im Git-Verzeichnis."
    else
        # Füge alle Änderungen hinzu
        git add .

        # Führe einen Commit mit einer dynamischen Commit-Nachricht durch
        git commit -m "Commit von $hostname am $current_datetime."

        # Push zu remote (hier als Beispiel "origin" verwenden)
        git push

        echo "Git Pull, Commit und Push erfolgreich durchgeführt."
    fi

    cd $original_dir
}


### source some system specifics

if [ -f ~/.zshrc_local ]; then
    # Führe den Source-Befehl aus, wenn die Datei vorhanden ist
    source ~/.zshrc_local
fi



