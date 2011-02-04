#!/bin/bash
# # # # # # # # # # # # # # # # # # # # # # # # # 
#  Flimshaw Industries Official Bash Profile!!  #
# # # # # # # # # # # # # # # # # # # # # # # # #

# Let's have some vars we can set to see what I'm working on?  Is that stupid?

CLICOLOR=1
LSCOLORS=gxfxcxdxbxegedabagacad
export PS1='\[\033[01;32m\][\W]\[\033[00m\]\$'
export TERM=xterm-color
alias ls='ls -G'
alias ll='ls -hl'

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/mysql/bin:~/Dropbox/home/bin:~/Dropbox/Projects/virtual/flim:$PATH
export SVN_EDITOR=vim

alias ti='flimshaw_ticktock.sh'         # countdown timer script
alias up='flimshaw_port-installer.sh'   # installs necessary commandline tools
alias mk='flimshaw_make_script.sh'      # create a file with the right permissions

alias dj='flimshaw_django_starter.sh'   # run the stuff we need to start django
alias djup='flimsahw_django_updater.sh' # update everythang
alias djsh='python ./manage.py shell'     # run the django shell
alias w='$HOME/Dropbox/home/weather-1.5/weather'

# CDARGS shortcut
function cv () {
cdargs "$1"
newDir=`cat $HOME/.cdargsresult`
cd $newDir

}

# CUSTOM FUNCTIONS

date2stamp () {
    date -jf '%Y-%m-%d' $1 +%s
}

dateDiff (){
    case $1 in
        -s)   sec=1;      shift;;
        -m)   sec=60;     shift;;
        -h)   sec=3600;   shift;;
        -d)   sec=86400;  shift;;
        *)    sec=86400;;
    esac
    dte1=$(date2stamp $1)
    dte2=$(date2stamp $2)
    diffSec=$((dte2-dte1))
    if ((diffSec < 0)); then abs=-1; else abs=1; fi
    dateHolder=$((diffSec/sec*abs))
}


# STARTUP SCRIPTS
today=`date '+%Y-%m-%d'`

dateDiff -d "1983-02-14" $today
daysAlive=$dateHolder

dateDiff -d $today "2061-05-25"
daysLeft=$dateHolder

echo -e "\033[0;31mHey Charlie, welcome to day $daysAlive of your life. About $daysLeft to go! MAKE IT COUNT, JERK!"
cat $HOME/Dropbox/home/weather.txt
