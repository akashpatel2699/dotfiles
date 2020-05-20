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
git config --global color.ui true
git config --global format.pretty oneline
git config --global core.autocrl input
git config --global core.fileMode true
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#aliases. MAKE TERMINAL BETTER

alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'
alias f='open -a Finder ./'
alias myip='ipconfig getifaddr en0'
alias c='clear'
alias weather='curl http://wttr.in/'
alias xcode='open -a xcode'
alias python='python3'
alias pcore='sysctl hw.physicalcpu'
alias lcore='sysctl hw.logicalcpu'
alias kernel='uname -sr'
#   -------------------------------
#   3. FILE AND FOLDER MANAGEMENT
#   -------------------------------

zipf () { zip -r "$1".zip "$1" ; }          # zipf:         To create a ZIP archive of a folder
alias numFiles='echo $(ls -1 | wc -l)'      # numFiles:     Count of non-hidden files in current dir

#extract: Extract most known acrhives with one command

	extract() {
		if [ -f $1 ] ; then
			case $1 in 
				*.tar.bz2)   tar xjf $1     ;;
				*.tar.gz)    tar xzf $1     ;;
				*.bz2)       bunzip2 $1     ;;
				*.rar)       unrar e $1     ;;
				*.gz)        gunzip $1      ;;
				*.tar)       tar xf $1      ;;
				*.tbz2)      tar xjf $1     ;;
				 *.tgz)       tar xzf $1     ;;
				 *.zip)       unzip $1       ;;
				 *.Z)         uncompress $1  ;;
				 *.7z)        7z x $1        ;;
				 *)     echo "'$1' cannot be extracted via extract()" ;;
					esac
		else 
			echo "'$1' is not a valid file"
		fi
	}


# Colored man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'


