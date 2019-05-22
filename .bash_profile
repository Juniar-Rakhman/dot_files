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
GOROOT=/usr/local/go
GOPATH=$HOME/go
PATH=$GOPATH:$GOROOT/bin:$PATH

# Ubuntu make installation of Ubuntu Make binary symlink
PATH=/home/jrakhman/.local/share/umake/bin:$PATH

JAVA_HOME=/usr/lib/jvm/jdk1.7.0_80
JRE_HOME=/usr/lib/jvm/jdk1.7.0_80/jre
PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH

