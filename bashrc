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
