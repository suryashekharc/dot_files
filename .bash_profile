
# Git branch info on Terminal
parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
orange=$(tput setaf 166);
yellow=$(tput setaf 228);
green=$(tput setaf 71); 
white=$(tput setaf 15); 
bold=$(tput bold); 
reset=$(tput sgr0); 
PS1="\[${bold}\]"; 
PS1+="\[${orange}\]\u"; # username 
# PS1+="\[${white}\]@"; 
PS1+="\[${yellow}\]\$(parse_git_branch) "; # host 
PS1+="\[${green}\]\w"; # working directory 
PS1+="\[${white}\]\$ \[${reset}\]"; # '$' (and reset color) 
export PS1; 


source /usr/local/etc/bash_completion.d/git-completion.bash
# Git branch info on Terminal end

source ~/.bashrc  # get my Bash aliases

# get my Bash functions like cd+ls = cl
if [ -e $HOME/.bash_functions ]; then
    source $HOME/.bash_functions
fi
# get my Bash functions like cd+ls = cl end
