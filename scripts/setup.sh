#!/bin/bash

# add user
useradd -m -U $1 --groups sudo
echo "%$1 ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$1

# add ssh key
mkdir -p /home/$1/.ssh
cat $2 >> /home/$1/.ssh/authorized_keys
