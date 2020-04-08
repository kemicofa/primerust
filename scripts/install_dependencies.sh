#!/bin/sh
dpkg --add-architecture i386; 
apt-get update;

# Install dependencies and recommended packages
yes | apt-get install curl mailutils \
    wget file tar bzip2 gzip unzip bsdmainutils \
    python util-linux ca-certificates binutils bc \
    jq tmux lib32gcc1 libstdc++6 lib32stdc++6 lib32z1 \
    sudo