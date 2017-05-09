Download and run ``bootstrap.sh`` on any new server to make a local clone of
this repository::

    wget https://github.com/ryanmarquardt/personalize/raw/master/bootstrap.sh
    /bin/sh bootstrap.sh
    cd personalize
    make

Before cloning, ``bootstrap.sh`` ensures that git is installed locally and 
that the user's name and email are set in the global git configuration.

Running ``make`` applies all personalizations. Alternately, use one of the 
subcommands listed below:


Vim
===============

Install the vim text editor if it isn't already available, and install
``~/.vimrc`` from ``modules/vim/vimrc``::

    make install-vim


Latest Python
==================

Install the latest version (3.6 currently) of python::

    make install-python


SSH Key Generation
==================

Create new ssh keys for the local user::

    make create-ssh-keys

The types of keys generated are determined by the variable ``SSH_KEYTYPES``
in ``modules/ssh/Makefile``. By default ``rsa`` and ``ecdsa`` keys are created.
