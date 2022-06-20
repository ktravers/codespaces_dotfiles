# Prompt
# =====================
PROMPT='
%F{cyan}%D{%Y-%m-%d} %* %F{magenta}%n@%m: %{$reset_color%}%1d ($(git_current_branch))
🏄‍♀️ '

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
