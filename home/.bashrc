#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# I love vim!
export EDITOR='vim'

# Some PATH is necessory!
# export PATH=$PATH:/usr/games:/usr/local/games

# It makes my life convenient!
alias free='free -h'
alias df='df -h'
alias ls='ls --color=auto'
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -a'
alias ..='cd ../'
alias ...='cd ../../'
alias grep='grep --color=auto'

alias mihomolog='journalctl -u mihomo -o cat -f'
alias gitblog='git log --graph --pretty=oneline --abbrev-commit'

# Docker
# alias dk='docker'

# CMake
export CMAKE_GENERATOR=Ninja

# Go
export GOPROXY=https://goproxy.io,direct
export GOSUMDB=sum.golang.google.cn
export PATH=$PATH:$HOME/go/bin

# 华硕严选
# https://asus-linux.org/guides/arch-guide/
alias swilau='switcherooctl launch'

# 内存泄漏检测工具
# pacman -S valgrind
alias memcheck='valgrind --tool=memcheck --leak-check=full --show-reachable=yes'

# Just make bash simple.
# PS1='\[\e[32;1m\][\u@\h \W]\$ \[\e[0m\]'
export PS1="\[\e[31m\][\[\e[m\]\[\e[36m\]\u\[\e[m\]\[\e[31m\]@\[\e[m\]\[\e[36m\]\h\[\e[m\] \[\e[32m\]\w\[\e[m\]\[\e[31m\]]\[\e[m\]\[\e[35m\]\\$ \[\e[0m\]"

# Copilot-CLI (公共配置，不含敏感信息)
export COPILOT_PROVIDER_TYPE=anthropic
export COPILOT_PROVIDER_BASE_URL=https://api.deepseek.com/anthropic
export COPILOT_MODEL=deepseek-v4-pro
export COPILOT_PROVIDER_MAX_PROMPT_TOKENS=840000
export COPILOT_PROVIDER_MAX_OUTPUT_TOKENS=128000
export COPILOT_OFFLINE=true

# Copilot-CLI (敏感信息，需手动创建 ~/.copilot-secrets）
# export COPILOT_PROVIDER_API_KEY=xxxxxxxxxxxxxxx
if [ -f ~/.copilot-secrets ]; then
    source ~/.copilot-secrets
fi

