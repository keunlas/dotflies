#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# I love vim!
export EDITOR='vim'

# It makes my life convenient!
alias ..='cd ../'
alias ...='cd ../../'
alias grep='grep --color=auto'
alias free='free -h'
alias df='df -h'
alias ls='ls --color=auto'
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -a'

alias gitblog='git log --graph --pretty=oneline --abbrev-commit'

# CMake
export CMAKE_GENERATOR=Ninja

# Go
export GOPROXY=https://goproxy.io,direct
export GOSUMDB=sum.golang.google.cn
export PATH=$PATH:$HOME/go/bin

# ASUS Arch Guide
# https://asus-linux.org/guides/arch-guide/
alias swilau='switcherooctl launch'

# Valgrind
alias memcheck='valgrind --tool=memcheck --leak-check=full --show-reachable=yes'

# Import more config from ~/.config/my-bash/
# For private stuff that won't be committed to Internet
if [ -d "$HOME/.config/my-bash" ]; then
    for f in "$HOME/.config/my-bash/"*.bash; do
        [ -r "$f" ] && source "$f"
    done
    unset f
fi

# Just make bash simple.
# Default PS1='\[\e[32;1m\][\u@\h \W]\$ \[\e[0m\]' is not pretty
export PS1="\[\e[31m\][\[\e[m\]\[\e[36m\]\u\[\e[m\]\[\e[31m\]@\[\e[m\]\[\e[36m\]\h\[\e[m\] \[\e[32m\]\w\[\e[m\]\[\e[31m\]]\[\e[m\]\[\e[35m\]\\$ \[\e[0m\]"
