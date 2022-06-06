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
folder2=$RANDOM 
logfile=/var/log/.class.log


# Functions for the script 

#this simpe function creates a random file each time the command is run, it uses a new random #
Create_files() {

mkdir -p /tmp/hidden/.$folder1/$folder2/
touch /tmp/hidden/.$folder1/$folder2/$file1
touch $logfile
echo /tmp/hidden/.$folder1/$folder2/$file1 >> $logfile


cat <<EOF > /tmp/hidden/.$folder1/$folder2/$file1
This is is a file
in a hidden directory
{{flag}}
EOF
}

create_instructor () {

    useradd -G root,adm,sudo -l -u 777 -m -d /home/.1/teach instructor1
    id instructor1 >> $logfile
    echo "instructor1:1qaz2wsx!QAZ@WSX" | chpasswd
    dircolors -p > /home/.1/teach/.dircolors
    history -c 
        
}

# breaking the lab computers so that they have to find other ways to find the files
create_aliases () {

echo 'alias ls='find >> /home/labuser*/.bashrc
echo 'alias cat='tac >> /home/labuser*/.bashrc
echo 'alias man='\'echo\ \'this\\ might\\ be\\ broken\'\' >> /home/labuser*/.bashrc

echo 'look at your bashrc file, if you can find it' >> $logfile

. ./.bashrc

}


#Executing the actual commands for the Rest of the Script.
Create_files
create_instructor
create_aliases
