# HW3

### Create a Vagrant-based VM that contains the following:

* CentOS 7
* Python 2.7.14 or any version of Python 2.7.x after version 12
* Apache Web Server - accesible from outside the VM
* xrdp support or vnc support if xrdp has problems
* the "MATE Desktop" environment or any other Linux GUI like Gnome

Useful links:

[link1](http://www.putorius.net/2014/07/restarting-services-in-red-hat-7-or.html)

[link2](https://www.centos.org/docs/5/html/yum/)

[link3](http://www.ru.j-npcs.org/usoft/WWW/www_redhat.com/support/docs/rhl/Tips/Custom-X-Tips/Custom-X-Tips-4.html)

***

## Pack a VM
```SHELL
vagrant package --base XX --output YY.box
vagrant box add ZZ YY.box
vagrant init ZZ
```