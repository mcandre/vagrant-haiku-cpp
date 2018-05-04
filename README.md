# vagrant-haiku-cpp: a Vagrant box for building C/C++ binaries for Haiku OS

# VAGRANT CLOUD

https://app.vagrantup.com/mcandre/boxes/vagrant-haiku-cpp-amd64
https://app.vagrantup.com/mcandre/boxes/vagrant-haiku-cpp-i386

# EXAMPLE

```console
$ cd amd64/test
$ vagrant up
$ vagrant ssh -c "cd /boot/vagrant-src && clang++ -o hello -I /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/5.4.0/include/c++ -I /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/5.4.0/include/c++/x86_64-unknown-haiku hello.cpp && ./hello"
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
$ sh -c "cd amd64 && make vagrant-haiku-cpp-amd64.box"
$ sh -c "cd i386 && make vagrant-haiku-cpp-i386.box"
```
