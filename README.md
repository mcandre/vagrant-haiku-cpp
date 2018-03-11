# vagrant-haiku-cpp: a Vagrant box for building C/C++ binaries for Haiku OS

vagrant-haiku-cpp is a placeholder for a Vagrant box having a C/C++ compiler. In fact, Haiku (at least alpha4) includes `gcc` by default, so users may wish to leverage the [mcandre/haiku](https://app.vagrantup.com/mcandre/boxes/haiku) base box instead.

# VAGRANT CLOUD

https://app.vagrantup.com/mcandre/boxes/vagrant-haiku-cpp

# EXAMPLE

```console
$ cd test
$ vagrant up
$ vagrant ssh -c "cd /boot/vagrant-src && g++ -o hello hello.cpp && ./hello"
Hello World!
```

# RUNTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com) 2.0.2+
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider

## Recommended

* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back) assists in copying artifacts from the guest to the host

# BUILDTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider
* [make](https://www.gnu.org/software/make/)

# EXPORT

```console
$ make vagrant-haiku-cpp.box
```
