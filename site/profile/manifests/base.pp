class profile::base {
  user {'admin':
    ensure => present,    
  }
  user { 'vagrant':
    ensure   => present,
  }
  include profile::ssh_server
}
