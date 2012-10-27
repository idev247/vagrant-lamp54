# Basic Puppet manifest

Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

class system-update {
  exec { 'apt-get update':
    command => 'apt-get update',
  }

  $sysPackages = [ "build-essential" ]
  package { $sysPackages:
    ensure => "installed",
    require => Exec['apt-get update'],
  }
}
class base-server {

  $devPackages = [ "git", "openssh-server", "dstat", "bmon", "joe", "xz-utils", "rar" ]
  package { $devPackages:
    ensure => "installed",
    require => Exec['apt-get update'],
  }

}

class development {

  $devPackages = [ "curl" , "memcached" , "ssmtp" ]
  package { $devPackages:
    ensure => "installed",
    require => Exec['apt-get update'],
  }
}

include system-update

include base-server

include development
