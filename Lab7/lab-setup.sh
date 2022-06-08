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

cd /home/labuser*
mkdir $PWD/$folder1
touch $PWD/$folder1/$file1

read -p 'Please enter a number between 5-25: ' depthvar

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
echo 'it is burried deep, but how deep'


new_files () {
cd /tmp
for((i=$1;i>=0;--i)) do
    num=$RANDOM
    mkdir $num
    cd $num
done
touch $PWD/findersflagkeeper.txt
files
}

files() {
cat <<EOF > $PWD/findersflagkeeper.txt
This is is a file that was created using the script
{{flag}}


EOF

}

hide_me () {

    mv $PWD/lab-setup.sh $PWD/.lab-setup.sh
}


hide_me
new_files $depthvar

