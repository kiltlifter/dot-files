# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# include sbin in PATH
if [ -d "/sbin" ] ; then
    PATH="/sbin:$PATH"
fi
if [ -d "/usr/sbin" ] ; then
    PATH="/usr/sbin:$PATH"
fi
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

### Helpful variables

# Add java to my path
JAVA_HOME=/usr/java/jdk1.7.0_67/
export PATH=$PATH:$JAVA_HOME/bin

# Add maven to my path
MAVEN_HOME=$HOME/tools/apache-maven-3.2.3
export PATH=$PATH:$MAVEN_HOME/bin

# Add the android sdk platform-tools to my PATH
ANDROID_SDK=$HOME/tools/android/android-sdk-linux
export PATH=$PATH:$ANDROID_SDK/platform-tools

# Add go to my path
GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

# Set the default text editor to vim
export EDITOR=vim

# Work computer only
# My userspace on the network share
USERSPACE=/media/blacknas/userspace/sdouglas

# Add packer to my path
PACKER_HOME=$HOME/tools/packer-root
export PATH=$PATH:$PACKER_HOME

# Add ansible to my path
ANSIBLE_HOME=$HOME/tools/ansible
export PATH=$PATH:$ANSIBLE_HOME/bin

# Add nodejs to the path
NODE_JS=/usr/share/node-0.10.24
export PATH=$PATH:$NODE_JS/bin

# Custom setting for the python interpreter
export PYTHONSTARTUP=~/.pythonrc

# vi keybindings for bash
set -o vi

#export DISPLAY=:0
#export GPU_MAX_ALLOC_PERCENT=100
#export GPU_USE_SYNC_OBJECTS=1
#export XAUTHORITY=/.Xauthority
