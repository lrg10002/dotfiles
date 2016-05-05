alias seven=7za
export PATH=$PATH:~/bin

# set Go home
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

#set Go path
export GOPATH=~/code/go

#Force ls colors
alias ls="ls --color=always"

#Mkdir and cd in one fell swoop
mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

#Reset Terminal title
rtitle ()
{
    echo -ne "\033]0;\007"
}

#Fix tmux colors
export TERM="xterm-256color"

#Add termbin
alias tb="nc termbin.com 9999"

#Project shortcuts
export P_DORMSERVE="~/code/goprojects/dormserve/"
