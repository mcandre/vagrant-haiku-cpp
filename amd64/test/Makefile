.PHONY: clean-vm clean-vagrant-metadata

all: test

test: test-boot test-compile

test-boot:
	vagrant up

test-compile: test-boot
	vagrant ssh -c "cd /boot/vagrant-src && clang++ -o hello -I /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/5.4.0/include/c++ -I /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/5.4.0/include/c++/x86_64-unknown-haiku hello.cpp && ./hello"

clean-vm:
	-vagrant destroy -f

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-vm clean-vagrant-metadata
