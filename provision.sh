#!/bin/bash

# Bring up the VMs using Vagrant
vagrant up

# SSH into Master node and perform tasks
vagrant ssh master -c '
  # Create user altschool with root privileges
  sudo adduser altschool
  sudo usermod -aG sudo altschool
'

