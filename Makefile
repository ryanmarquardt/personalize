
INSTALL=sudo apt install

export INSTALL

.PHONY: install install-vim install-python create-ssh-keys

install: install-vim install-python create-ssh-keys

install-vim:
	cd modules/vim && $(MAKE) 

install-python:
	cd modules/python && $(MAKE)

create-ssh-keys:
	cd modules/ssh && $(MAKE)
