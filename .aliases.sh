# Useful
alias ..='cd ..'
alias aliases='vim ~/.aliases'
alias ls='ls --color=auto'

# Paths
#alias ws=''

# Git 
#alias push='git push -u origin HEAD'
#alias gs='git status'
#alias gl='git log'

PROMPT_DIRTRIM=1
altercd() {
    cd() {
        unset -f cd
        cd "$@" && ls
        altercd
    }
}; altercd

# useful for when you cannot get tree
function tree() {
        ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//──/g' -e 's/─/├/' -e '$s/├/└/'
}

:'
sudo apt-get install -Y build-essential bc python bison flex libelf-dev libssl-dev libncurses-dev dwarves
'
