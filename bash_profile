if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# if user is not root, pass all commands via sudo #
if [ $UID -ne 0 ]; then
    alias reboot='sudo reboot'
    alias update='sudo apt-get upgrade'
fi

# Aliases #
# Git #
alias gpush='git push origin master'
alias gpull='git pull origin master'

# Directory #
alias ls='ls -GpF'
alias cd..='cd ..'
# confirmation #
alias mv='/bin/mv -i'
alias cp='/bin/cp -i'
alias ln='/bin/ln -i'

# Utilities
alias c='clear'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias subl='open -a "Sublime Text 2"'

alias bc='bc -l'

alias mount='mount |column -t'

alias h='history'
alias j='jobs -l'


alias wget='wget -c'

# update on one command #
#alias update='sudo apt-get update && sudo apt-get upgrade' #

# Development/Environment #
# Python virtualenv setup #
venv ()
{
    source $PWD/$1/env/bin/activate;
}

venv_to () 
{
    source $PWD/$1/env/bin/activate;
    cd $PWD/$1;
}

# sudo #
#alias rm='rm -i --preserve-root' #
alias rm='/bin/rm -i'

# Parenting changing perms on / #
#alias chown='chown --preserve-root' #
#alias chmod='chmod --preserve-root' #
#alias chgrp='chgrp --preserve-root' #

export PATH="/Users/cdrandin/Library/Application Support/GoodSync":$PATH

# added by duckpan installer
eval $(perl -I${HOME}/perl5/lib/perl5 -Mlocal::lib)

