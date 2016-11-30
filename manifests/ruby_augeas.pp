class sshd_config::ruby_augeas {

  package { 'ruby-augeas':
    ensure => 'installed',
  }

}
