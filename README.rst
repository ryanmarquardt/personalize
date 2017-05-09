Download and run ``bootstrap.sh`` on any new server to make a local clone of
this repository.

Run ``make`` to apply all personalizations, or use one of the installation
subcommands listed below


Vim
===============

Installs the vim text editor if it isn't already available, and installs the
vimrc file found under ``resources/vim/vimrc``::

    make install-vim


Latest Python
==================

Installs the latest version of python::

    make install-python


SSH Key Generation
==================

Create new rsa and ecdsa keys for the local user::

    make create-ssh-keys

The types of keys generated are determined by the variable ``SSH_KEYTYPES``
in ``Makefile``
