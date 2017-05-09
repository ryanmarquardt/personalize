#!/bin/sh

repository=git@github.com:ryanmarquardt/personalize.git

INSTALL_GIT="apt-get install git-core"

# Install git if it's not available
if [ -z "$(which git)" ]; then
    echo "Running with sudo:" $INSTALL_GIT
    sudo $INSTALL_GIT
fi

# Set global user name
if ! git config --global --get user.name >/dev/null; then
    echo -n "git config --global user.name "; read x
    git config --global user.name $x
fi

# Set global user email
if ! git config --global --get user.email >/dev/null; then
    echo -n "git config --global user.email "; read x
    git config --global user.email $x
fi

# Clone the repository
echo git clone $repository
git clone $repository
