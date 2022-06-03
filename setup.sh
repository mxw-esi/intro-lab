#!/bin/bash

file1=/tmp/hidden/.folder/flag.txt

mkdir -p /tmp/hidden/.folder/
touch $file1


cat <<EOF > $file1
This is is a file
in a hidden directory
{{flag}}
EOF
