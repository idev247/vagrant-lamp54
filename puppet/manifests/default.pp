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


class lamp {

  $devPackages = [ "lamp-server^", "php-pear", "php5-xdebug", "php-cache-lite", "php5-memcache", "php5-curl", "php-apc", "phpmyadmin" ]
  package { $devPackages:
    ensure => "installed",
    require => Exec['apt-get update'],
  }

  exec { 'PEAR':
    command => 'pear upgrade PEAR',
  }
  exec { 'PEAR autodiscover':
    command => 'pear config-set auto_discover 1',
  }
  exec { 'PEAR php unit':
    command => 'pear install pear.phpunit.de/PHPUnit',
  }
  exec { 'PEAR dbunit':
    command => 'pear install phpunit/DbUnit',
  }
  exec { 'PEAR PHPUnit selenium':
    command => 'pear install phpunit/PHPUnit_Selenium',
  }
  exec { 'PEAR discover PHPMD':
    command => 'pear channel-discover pear.phpmd.org',
  }
  exec { 'PEAR PHPMD':
    command => 'pear install phpmd/PHP_PMD',
  }

  exec { 'enable apache modules':
    command => 'a2enmod headers deflate rewrite',
  }
  exec { 'Apache restart':
    command => '/etc/init.d/apache2 restart',
  }
}




include system-update

include base-server

include development

include lamp


