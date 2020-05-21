source ~/dotfiles/functions/.functions 
source ~/dotfiles/aliases/.aliases
# Hide Initial Message
export BASH_SILENCE_DEPRECATION_WARNING=1

# Set Paths
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="/usr/local/sbin:$PATH"
#export PS1="😎\[\e[37;45m\]\u@\h\[\e[0m\]👉\[\e[37;44m\]\w\[\e[0m\]$ "
#export PS1="\[\033[38m\]\u\[\033[32m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.split(%r{\n}).grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "
export PATH=$PATH:$HOME/flutter/bin
export PATH=$PATH:$HOME/Library/Python/3.7/bin

export CLICOLOR=1
#export LSCOLORS=cxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=GxFxCxDxBxegedabagaced

#Powerline stuff
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/akashpatel/Library/Python/3.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh

#Git
#git config --global color.ui true
#git config --global format.pretty oneline
#git config --global core.autocrl input
#git config --global core.fileMode true
#git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Colored man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'


