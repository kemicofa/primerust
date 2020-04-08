#!/bin/sh
useradd -p $PASS -m $USER
cd /home/$USER
su - $USER -s /bin/sh

whoami
pwd