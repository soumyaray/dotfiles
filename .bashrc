alias ls="ls -F"
alias emacs="/usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/Emacs -nw"
alias grepi="grep -i"
alias psg="ps x | grep -i "

# Lazygit command
function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}

# Git completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Git flow completion
source ~/Sync/Dropbox/Scripts/git-flow-completion/git-flow-completion.bash

### Added by the Heroku Toolbelt
PATH="/usr/local/heroku/bin:$PATH"
PATH=$PATH:~/Dropbox/scripts/terminal_scripts:~/bin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=/usr/local/sbin:$PATH
PATH=$PATH:/usr/local/gitopen
export PATH

export EDITOR=emacs

# see formatting codes at: http://news.softpedia.com/news/How-to-Customize-the-Shell-Prompt-40033.shtml
green=$(tput setaf 2)
blue=$(tput setaf 4)
gray=$(tput setaf 7)
bold=$(tput bold)

reset=$(tput sgr0)

## Set command line colors on (1)
export CLICOLOR=1

# XRAY HACK COLORS
#PS1="\[$green\][\h:\W]\[$reset\] $ "
#export LSCOLORS=CxFxcxDxBxegedabagacad

# XRAY PRO theme COLORS
PS1="\[$gray\][\h:\W]\[$reset\] $ "
export LSCOLORS=DxFxcxDxbxegedabagacad

## GIT AWARE PROMPT (see: https://github.com/magicmonty/bash-git-prompt)
# Set config variables first
GIT_PROMPT_ONLY_IN_REPO=1
# as last entry source the gitprompt script
source ~/.bash-git-prompt/gitprompt.sh

## Git control of dotfiles
# See ~/README.md for dotfiles repo
alias confgit='/usr/bin/git --git-dir=/Users/soumyaray/.cfg/ --work-tree=/Users/soumyaray'
