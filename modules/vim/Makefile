
.PHONY: install-vim

VIM=$(shell which vim)

install-vim: $(VIM) $(HOME)/.vimrc

$(VIM):
	$(INSTALL) vim

$(HOME)/.vimrc:
	cp vimrc $(HOME)/.vimrc
