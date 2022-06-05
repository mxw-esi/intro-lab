#!/bin/bash

############################################################
# Created by Michael Woodside for the Intro to Linux Class #
#                                                          #
#  This script will do several different things,           #
#  from creating some random Folder Structures,            #
#  hiding files in the random locations,                   #
#  to setting up a new root user for the instructor        #
#  and having the users in the class find the new user     #
#  and then remove that user later on                      #
#                                                          #
############################################################

# Creating variables for the script
file1=flag.txt
folder1=$RANDOM
logfile=/var/log/lab5.log

touch /home/labuser*/$folder1/$file1

cat <<EOF > /tmp/hidden/.$folder1/$folder2/$file1
This is is a file that was created using the script
{{flag}}



here is a copy of the script


file1=flag.txt
folder1=$RANDOM
logfile=/var/log/lab5.log

touch /home/labuser*/$folder1/$file1


EOF