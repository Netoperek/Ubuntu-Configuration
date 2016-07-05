# .bash_profile



# Get the aliases and functions

if [ -f ~/.bashrc ]; then

	. ~/.bashrc

fi


parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\e[31;1m\]\u\[\e[32;1m\]@\H:\[\e[32;1m\]\w\[\e[0m\]\\$\[\e[0;34m\]\$(parse_git_branch) \[\e[0;32m\] \[\e[0m\]"

EDITOR=vim

export EDITOR



export HISTTIMEFORMAT="%F %T "

export HISTFILESIZE=100000

export HISTCONTROL="ignoreboth"

PROMPT_COMMAND='history -a'

export JAVA_OPTS="-Xms512m -Xmx2g -Xss1m -XX:PermSize=128m -XX:MaxPermSize=256m -XX:+CMSClassUnloadingEnabled"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
