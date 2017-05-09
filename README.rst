Download and run ``bootstrap.sh`` on any new server to make a local clone of
this repository.

Run ``make`` to apply all personalizations, or use one of the installation
subcommands listed below

===============
Vim
===============

::
    make install-vim

Installs the vim text editor if it isn't already available, and installs the
vimrc file found under ``resources/vim/vimrc``.

==================
Latest Python
==================

::
    make install-python

Installs the latest version of python.


==================
SSH Key Generation
==================

::
    make create-ssh-keys

Creates new rsa and ecdsa keys for the local user.