
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