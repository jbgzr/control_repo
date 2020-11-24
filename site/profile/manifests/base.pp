class profile::base {
  user {'admin':
    ensure => present,    
  }
  user { 'vagrant':
    ensure   => present,
  }
  file { '/home/vagrant':
    ensure => 'directory',
  }
  include profile::ssh_server
}
