#!/bin/bash
#
#    flimshaw_django_starter.sh
#    Thu Dec 16 10:36:53 PST 2010
#
#####################

myPath=`pwd`
source $myPath/ffenv/bin/activate
python $myPath/ff4/manage.py runserver