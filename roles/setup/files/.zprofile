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

PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# Java
export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
PATH="$JAVA_HOME/bin:$PATH"


# Maven
alias mci="mvn clean install"
alias mcid="mvn clean install -Dmaven.test.skip=true"

# Todo
alias t="~/.todo/todo.sh"

# Postgres
alias pgstart="su postgres -c '/usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l ~/pg.log start'"
alias pgstop="su postgres -c '/usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l ~/pg.log stop'"
PATH="/usr/local/pgsql/bin:$PATH"

# Git
function grbcc() {
	local head_count=`git rev-list --count HEAD`
	local rb_count=`git rev-list --count $1`
	echo $(expr $head_count - $rb_count)
}