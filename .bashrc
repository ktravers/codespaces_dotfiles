# Prompt
# =====================
# called in prompt to output active git branch
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# build prompt and call below
function prompt {
  export PS1='\n\e[0;30m\e[46m\t\e[0;36m \u @\h: \W\e[0;35m$(parse_git_branch)\e[0;37m\n🏄‍♀️ '
    PS2='> '
    PS4='+ '
}
prompt

# Environment Variables
# =====================
# Git
# https://git-scm.com/book/en/v2/Git-Internals-Environment-Variables
export GIT_MERGE_AUTOEDIT='no'

# Aliases
# =====================
# Git
alias gbv="git branch -v"
alias gbdall="git branch | grep -v 'master' | xargs git branch -D"
alias gcm="git checkout master"
alias gco="git checkout"
alias gca!='git commit --amend --no-edit'
alias glr="git pull --rebase --prune && git gc"
alias gst="git status"
alias gsv="git status -vv"
alias grh="git reset HEAD"
alias repush="git pull --rebase && git push"
alias stash="git stash -u"

# GitHub CLI
# https://github.com/cli/cli
alias newpr="gh pr create -d"
