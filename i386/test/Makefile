.PHONY: clean-vm clean-vagrant-metadata

all: test

test: test-boot test-compile

test-boot:
	vagrant up

test-compile: test-boot
	vagrant ssh -c "cd /boot/vagrant-src && clang++ -o hello -I /boot/system/develop/tools/x86/lib/gcc/i586-pc-haiku/5.4.0/include/c++ -I /boot/system/develop/tools/x86/lib/gcc/i586-pc-haiku/5.4.0/include/c++/i586-pc-haiku -I /boot/system/lib/x86/clang/5.0.0/include hello.cpp && ./hello"

clean-vm:
	-vagrant destroy -f

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-vm clean-vagrant-metadata
