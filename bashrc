#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias vi=vim
export TERMINAL=lxterminal
export VISUAL="vim"
export EDITOR="vim"
export PATH=$PATH:/home/bart/.software/bin
export BROWSER="firefox"
export MAILER="thunderbird"
alias plottool="/usr/bin/python2 /home/bart/.software/plottool/plottool.py"
alias mailfile="/home/bart/.software/scripts/mailfile.sh"
alias mpw='/home/bart/.software/mpw/mpw.py'
alias maxima='rlwrap maxima'
alias foto='fswebcam -r 1920x1080 /home/bart/tmp/foto.png'
alias shop='shoppinglist'
alias mkpw='/home/bart/programming/c/mkpw/mkpw -c /home/bart/programming/c/mkpw/dict.txt'
alias vsync='vdirsyncer sync'

if [[ -e ~/.mpcrc ]]
then
	source ~/.mpcrc
fi

if which fuck >/dev/null
then
	eval $(thefuck --alias)	
fi

. /usr/share/autojump/autojump.bash

task -freizeit
