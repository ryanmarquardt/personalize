
LATEST_PYTHON=python3.6
INSTALL=sudo apt install
SSH_KEYTYPES=rsa ecdsa

.PHONY: install install-vim install-python create-ssh-keys

install: install-vim install-python create-ssh-keys

# Vim

install-vim: /usr/bin/vim $(HOME)/.vimrc

/usr/bin/vim:
	$(INSTALL) vim

$(HOME)/.vimrc:
	cp resources/vim/vimrc $@

# Latest python

install-python: /usr/bin/$(LATEST_PYTHON)

/usr/bin/$(LATEST_PYTHON):
	$(INSTALL) $(LATEST_PYTHON)

# Ssh Keys

create-ssh-keys: $(patsubst %,$(HOME)/.ssh/id_%,$(SSH_KEYTYPES))

$(HOME)/.ssh/id_%:
	ssh-keygen -t $(patsubst $(HOME)/.ssh/id_%,%,$@) -N '' -f $@
