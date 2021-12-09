# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

#GO related path
GOPATH=$HOME/go
PATH=$GOPATH/bin:$PATH

#RUST related path
PATH=$HOME/.cargo/bin:$PATH

#Yarn related path
PATH=$HOME/.yarn/bin:$PATH

# Ubuntu make installation of Ubuntu Make binary symlink
PATH=$HOME/.local/share/umake/bin:$PATH

XDG_DATA_DIRS=/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share:$XDG_DATA_DIRS
