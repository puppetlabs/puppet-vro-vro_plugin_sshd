## Include augeasproviders_ssh module from forge.
## https://forge.puppet.com/herculesteam/augeasproviders_ssh
## Requirements for Augeas
#### Ensure both Augeas and ruby-augeas 0.3.0+ bindings are installed and working as normal.

class ssh_config::vro_plugin_sshd {

$hostname = $::fqdn

  ## If you are using root then enable root login, else use vro-plugin_user created by vro-plugin.
  ssh_config { "PermitRootLogin":
    ensure => present,
    host   => $hostname,
    value  => "yes",
  }

## Allow PasswordAuthentication for users and not just keys

  ssh_config { "PasswordAuthentication":
    ensure    => present,
    host      => $hostname,
    value     => "yes",
  }

  ssh_config { "ChallengeResponseAuthentication":
    ensure    => present,
    host      => $hostname,
    value     => "no",

  }
}
