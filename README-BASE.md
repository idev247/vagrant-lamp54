vagrant-base
============

Base vagrant repo
---
Base box based on precise64 with puppet enabled. Parts of config have been taken from https://github.com/dirkaholic/vagrant-php-dev-box repo.

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

* submodules:
  - puppi
