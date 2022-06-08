#!/bin/bash

apt install -y shc gcc
cd /tmp
git clone https://github.com/mxw-esi/intro-lab.git

chmod +x /tmp/intro-lab/Lab7/lab-setup.x
/tmp/intro-lab/Lab7/lab-setup.x