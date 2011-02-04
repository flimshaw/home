#!/bin/bash
#
# Flimshaw Script Maker
#

if [ "$2" == "" ] ; then
    myPath=`pwd`
else 
    myPath="$HOME/Dropbox/home/bin"
fi

if [ -f $myPath/$1.sh ]; then
    echo "ALERT! File already exists.  Overwrite? (y/n):"
    read -n 1 OVERWRITE
    if [ "$OVERWRITE" == "y" ]; then
        break
    else
        exit
    fi
fi

touch $myPath/$1.sh
chmod a+x $myPath/$1.sh

echo > $myPath/$1.sh  "#!/bin/bash
#
#    $1.sh
#    `date`
#
#####################

myPath=\`pwd\`
"
mate $myPath/$1.sh
echo "New script created in $myPath/$1.sh!"
