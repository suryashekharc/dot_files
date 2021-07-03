alias ls='ls -GFlarth'
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'


alias cg='cd `git rev-parse --show-toplevel`'
alias gts='git status -sbuno'


# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
 
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
 
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
