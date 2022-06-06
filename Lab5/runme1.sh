#!/bin/bash
#############################################################
# Created by Michael Woodside for the Intro to Linux Class  #
#                                                           #
#  This script will run a few random commands but they wont #
#  fill the history buffer up, so that students wont have   #
#  any script history.                                      #
#                                                           #
#############################################################

# Creating variables for the script

comvar=$(($RANDOM % 30 + 4))
echo $comvar


for((i=$comvar;i>=0;--i)) do
    whoami > /dev/null 2>&1
    date > /dev/null 2>&1
    cal > /dev/null 2>&1
    shazam > /dev/null 2>&1
    sdo > /dev/null 2>&1
    fishing > /dev/null 2>&1
    whatever > /dev/null 2>&1
    tranquil > /dev/null 2>&1

done