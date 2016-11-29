# vro_plugin_sshd
#


#### Table of Contents

1. [Description](#description)
2. [What is managed](#what)
3. [Requirements](#requirements)


## Description

This module manages the /etc/ssh/ssh_config file to enable a few key options.

## What
These are the options that are changed/managed

* PermitRootLogin = yes
    * (If you are using root then enable root login, else use vro-plugin_user created by vro-plugin_user.)
* PasswordAuthentication = yes
* ChallengeResponseAuthentication = no

## Requirements

mod 'puppet-augeas'
  :git => https://github.com/camptocamp/puppet-augeas.git

mod 'augeasproviders_core',
  :git => 'https://github.com/hercules-team/augeasproviders_core.git',

mod 'puppetlabs-ruby', '0.5.0'

mod 'augeasproviders_ssh',
  :git => 'https://github.com/hercules-team/augeasproviders_ssh.git',

mod 'vro_plugin_sshd',
  :git => 'https://github.com/tspeigner/puppet-vro-plugin_sshd',
