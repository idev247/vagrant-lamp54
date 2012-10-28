vagrant-lamp54
============

LAMP vagrant repo (using PHP 5.4)
---
This is PHP 5.4 fork of LAMP box based on https://github.com/msvrtan/vagrant-lamp settings.

Information
---
Version:  0.1.1 
OS:       Ubuntu 12.04 server 64-bit (Precise Pangolin)
Date:     2012-10-27


Puppet
---
* installs:
  - "git"
  - "openssh-server"
  - "dstat"
  - "bmon"
  - "joe"
  - "xz-utils"
  - "rar"
  - "curl"
  - "memcached"
  - "ssmtp"
  - "lamp-server^"
  - "php-pear"
  - "php5-xdebug"
  - "php-cache-lite"
  - "php5-memcache"
  - "php5-curl"
  - "php-apc"
  - "phpmyadmin"

* submodules:
  - puppi
