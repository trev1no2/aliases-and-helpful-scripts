# Useful
alias ..='cd ..'
alias aliases='vim ~/.aliases'
alias ls='ls --color=auto'

# Paths, update when actually in use
alias home='~'
#alias ws='' #ws meaning workspace, where you're actively working in

# (lazy) Git 
#alias push='git push -u origin HEAD'
#alias gs='git status'
#alias gl='git log'

PROMPT_DIRTRIM=3 #useful for really, really long paths

# Print ls after each cd 
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
<<<<<<< HEAD

:'
sudo apt-get install -Y build-essential bc python bison flex libelf-dev libssl-dev libncurses-dev dwarves
'
=======
>>>>>>> 3f91065cff128c1d9bec6c2778747d079c6936d8
