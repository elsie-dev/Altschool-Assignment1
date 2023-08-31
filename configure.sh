#!/bin/bash

# Determine the current directory
CURRENT_DIR=$(pwd)

# Bring up the VMs using Vagrant
vagrant up

# Get the IP address of the Slave node
slave_IP=$(vagrant ssh-config slave | grep HostName | awk '{print $2}')

# SSH into Master node and perform tasks
vagrant ssh master -c '
  # Create user altschool with root privileges
  sudo adduser altschool
  sudo usermod -aG sudo altschool
'

# Generate SSH key pair for altschool user in the current directory
ssh-keygen -t rsa -N "" -f $CURRENT_DIR/id_rsa_altschool

# Copy altschool user's public key to the Slave node
ssh-copy-id -i $CURRENT_DIR/id_rsa_altschool.pub altschool@'$slave_IP'
