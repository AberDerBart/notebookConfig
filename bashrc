#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias vi=vim
export VISUAL="vim"
export EDITOR="vim"

export BROWSER="firefox"
export MAILER="thunderbird"
alias plottool="/usr/bin/python2 /home/bart/.software/plottool/plottool.py"
alias mailfile="/home/bart/.software/scripts/mailfile.sh"

if [[ -e ~/.mpcrc ]]
then
	source ~/.mpcrc
fi

if which fuck >/dev/null
then
	eval $(thefuck --alias)	
fi

task
