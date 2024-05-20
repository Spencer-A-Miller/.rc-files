# Git aliases
alias gs='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit -m'
alias gl='git log --oneline'
alias gswitch='git switch'
alias gcb='git checkout -b'
alias gd='git diff'
alias gclone='git clone'
alias gremote='git remote show origin'

alias cls='clear'
alias q='exit'
alias home='cd ~'
alias root='cd /'
alias mercs='cd D:/PCSX2/Games'
alias jhu='cd C:/Users/spenc/OneDrive/Desktop/JHU - MS Computer Science'
alias algos='cd C:/Users/spenc/OneDrive/Documents/GitHub/Algorithms'
alias ahk='cd C:/Users/spenc/OneDrive/Documents/GitHub/AutoHotKey'
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'

function git_init() {
    if [ -z "$1" ]; then
        printf "%s\n" "Please provide a directory name.";
    else
        mkdir "$1";
        builtin cd "$1";
        pwd;
        git init;
        touch readme.md .gitignore LICENSE;
        echo "# $(basename $PWD)" >> readme.md
    fi
}
