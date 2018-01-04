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
export PATH=$PATH:/home/bart/.software/bin

export BROWSER="firefox"
export MAILER="thunderbird"
export BAHN_ORIGIN="braunschweig"
alias plottool="/usr/bin/python2 /home/bart/.software/plottool/plottool.py"
alias mailfile="/home/bart/.software/scripts/mailfile.sh"
alias araha='task add +uni project:arabisch due:1week'
alias mpw='/home/bart/.software/mpw/mpw.py'

if [[ -e ~/.mpcrc ]]
then
	source ~/.mpcrc
fi

if which fuck >/dev/null
then
	eval $(thefuck --alias)	
fi

eval "$(fasd --init bash-hook posix-alias)"

task
