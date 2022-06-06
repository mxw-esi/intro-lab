#!/bin/bash
############################################################
# Created by Michael Woodside for the Intro to Linux Class #
#                                                          #
#  This script will run a few random commands to fill      #
#  the history buffer up so that students have some output.#           #
#                                                          #
############################################################

# Creating variables for the script

comvar=$(($RANDOM % 30 + 4))
echo $comvar
set -o history

for((i=$comvar;i>=0;--i)) do
    history -s whoami > /dev/null 2>&1
    history -s date > /dev/null 2>&1
    history -s cal > /dev/null 2>&1
    history -s shazam > /dev/null 2>&1
    history -s sdo > /dev/null 2>&1
    history -s fishing > /dev/null 2>&1
    history -s whatever > /dev/null 2>&1
    history -s tranquil > /dev/null 2>&1

done