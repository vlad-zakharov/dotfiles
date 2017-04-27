# .bashrc

# set 256 color term for tmux
case $TERM in
	xterm*)
		TERM=xterm-256color
		;;
	screen*)
		TERM=screen-256color
		;;
esac

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Start powerline
if [ -f `which powerline-daemon` ]; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/share/powerline/bash/powerline.sh
fi

################################################################################
#   Set environmental modules
################################################################################
export ENV_MODULES_TOOLS_PATH=/opt
export MODULEPATH=~/.modules

case "$0" in
    -sh|sh|*/sh)  modules_shell=sh ;;
    -ksh|ksh|*/ksh)  modules_shell=ksh ;;
    -zsh|zsh|*/zsh)  modules_shell=zsh ;;
    -bash|bash|*/bash)  modules_shell=bash ;;
esac
# For Fedora env modules
module() { eval `/usr/bin/modulecmd $modules_shell $*`; }

# Load default modules
module load metaware nsim gnu

# Set up java
export JAVA_HOME="/usr/lib/jvm/java"

PATH="/home/vzakhar/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/vzakhar/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/vzakhar/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
