# Prompt
# =====================
# Returns current branch name if in git repository.
# https://medium.com/pareture/simplest-zsh-prompt-configs-for-git-branch-name-3d01602a6f33
function git_current_branch() {
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="refs/heads/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '('$branch')'
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

PROMPT='
%F{cyan}%D{%Y-%m-%d} %* %F{magenta}$GITHUB_USER@%m: %F{white}%1d $(git_current_branch)
🏄‍♀️ '

# Environment Variables
# =====================
# Git
# https://git-scm.com/book/en/v2/Git-Internals-Environment-Variables
export GIT_MERGE_AUTOEDIT='no'

# Aliases
# =====================
# Git
alias gbdall="git branch | grep -v 'master' | xargs git branch -D"
alias gbv="git branch -v"
alias gca!='git commit --amend --no-edit'
alias gcm="git checkout master"
alias gco="git checkout"
alias glp="git --paginate log --pretty=format:'%C(auto)%h%Creset %s%C(auto)%d%Creset %C(magenta bold)(%cr)%Creset %C(cyan)<%aN>%Creset' -10"
alias glr="git pull --rebase --prune && git gc"
alias grh="git reset HEAD"
alias gst="git status"
alias gsv="git status -vv"
alias repush="git pull --rebase && git push"
alias stash="git stash -u"

# GitHub CLI
# https://github.com/cli/cli
alias newpr="gh pr create -d"
