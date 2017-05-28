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

if [[ -e ~/.mpcrc ]]
then
	source ~/.mpcrc
fi

task
