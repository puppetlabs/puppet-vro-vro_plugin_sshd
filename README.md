# vro_plugin_sshd
#


#### Table of Contents

1. [Description](#description)
2. [What is managed](#what)


## Description

This module manages the /etc/ssh/ssh_config file to enable a few key options.

## What
These are the options that are changed/managed

* PermitRootLogin = yes (If you are using root then enable root login, else use vro-plugin_user created by vro-plugin.)
* PasswordAuthentication = yes
* ChallengeResponseAuthentication = no
