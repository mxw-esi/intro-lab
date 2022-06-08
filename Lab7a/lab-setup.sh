#!/bin/bash

############################################################
# Created by Michael Woodside for the Intro to Linux Class #
#                                                          #
#  This script will do several different things,           #
#  from creating some random Folder Structures,            #
#  hiding files in the random locations.                   #
#                                                          #
#                                                          #
############################################################

#if [ $1 -ne 1 ] 
#then 
#echo "Please specify how many random words would you like to generate !" 1>&2 
#echo "example: ./random-word-generator 3" 1>&2 
#echo "This will generate 3 random words" 1>&2 
#exit 0
#fi 


# Creating variables for the script
file1=flag.txt
folder1=$RANDOM
folder2=$RANDOM
logfile=/var/log/lab5.log
scriptdir=/home/labuser*/intro-lab/Lab7/


touch $logfile
cd /home/labuser*
mkdir $PWD/$folder1
touch $PWD/$folder1/$file1

read -p 'Please enter a number between 5-25, if you are Max please enter 1: ' depthvar

# creating a basic file with some text in it.

cat <<EOF > /home/labuser*/$folder1/$file1
This is is a file that was created using the script
{{flag}}



here is a copy of the script


file1=flag.txt
folder1=$RANDOM
logfile=/var/log/lab5.log

touch /home/labuser*/$folder1/$file1


EOF

echo 'Now its time to find a needle in a haystack'
echo 'Based on the question asked when you started this script there is a file with the name flag in it'
echo 'it is buried deep, but how deep'


new_files () {
cd /tmp
for((i=$1;i>=0;--i)) do
    num=$RANDOM
    mkdir $num
    cd $num
done
touch $PWD/findersflagkeeper.txt
files
files1
}

files() {
cat <<EOF > $PWD/findersflagkeeper.txt
This is a file that was created using the script
but this is not the file you are looking for. 

Welcome to the class $USER


EOF

}

files1() {
touch /var/logs/.findmyflagifyoucan.log
cat <<EOF > /var/logs/.findmyflagifyoucan.log
This is is a file that was created using the script
but this **is** the file you are looking for. 

here is the winning text: I found your flags.

Welcome to the class $USER


EOF

}


challenge_me () {
cd /home/labuser*
touch .bash_alias
echo 'alias ls='find >> /home/labuser*/.bash_alias
echo 'alias cat='tac >> /home/labuser*/.bash_alias
echo 'alias man='\'echo\ \'this\\ might\\ be\\ broken\'\' >> /home/labuser*/.bash_alias
echo 'alias grep='\'sudo init\ 6\' >> /home/labuser*/.bash_alias
echo 'alias nano='vi >> /home/labuser*/.bash_alias
echo '. /home/labuser5/.bash_alias' >> /home/labuser*/.bashrc
echo 'look at your bashrc file, if you can find it' >> $logfile

}

hide_me () {

    cd $scriptdir
    mv $PWD/lab-setup.sh $PWD/.lab-setup.sh
}

if [ $depthvar -eq 1 ];then


new_files 32
challenge_me
hide_me
init 6

else
new_files $depthvar
hide_me
fi
