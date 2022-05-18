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
export PATH=$PATH:/home/bart/.software/bin:/home/bart/.local/bin:/home/bart/.go/bin
export BROWSER="firefox"
export MAILER="thunderbird"
export GOPATH=~/.go
export MPD_HOST=kadabra
alias plottool="/usr/bin/python2 /home/bart/.software/plottool/plottool.py"
alias mailfile="/home/bart/.software/scripts/mailfile.sh"
alias mpw='/home/bart/.software/mpw/mpw.py'
alias maxima='rlwrap maxima'
alias foto='fswebcam -r 1920x1080 /home/bart/tmp/foto.png'
alias mkpw='/home/bart/programming/c/mkpw/mkpw -c /home/bart/programming/c/mkpw/dict.txt'
alias vsync='vdirsyncer sync'
alias mensa='/home/bart/.software/canteenaband/mensa -m vet'
alias worktime='python3 ~/tools/worktime/worktime ~/worktime.ics'
alias whatsapp='chromium --app=https://web.whatsapp.com'

if [[ -e ~/.mpcrc ]]
then
	source ~/.mpcrc
fi

if which fuck >/dev/null
then
	eval $(thefuck --alias)	
fi

eval "$(direnv hook bash)"

. /nix/store/in2bj9cnjjfnr6k2cv9n75d4bigh77y2-autojump-22.5.3/share/autojump/autojump.bash
