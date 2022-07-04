
alias add.='git add . && git st .'
alias log.='git log .'
alias st.='git st -sb .'
alias st='git st -sb'

alias gls='git ls-files'
alias gst='git st | less'
alias push='cat ~/ick; git push'

alias ga='git add --update . && git st .'
alias gaa='git add --all'

alias gb='git branch'

alias gbl='git blame -b -w'

alias gc='git commit -v'
alias gca='git commit -v --amend'

alias gcf='git config --list'

alias gcount='git shortlog -sn'

alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'

alias gd='git diff'

alias gds='git diff --staged'

alias gdw='git diff --word-diff'

alias gf='git fetch'

alias gh='git help'

alias glg='git log --stat'

alias glgg='git log --graph'

alias gh='git st |head -n 30'

alias gma='git merge --abort'

alias gmom='git merge origin/master'

alias gmt='git mergetool --no-prompt'

alias gp='git push'

# glgp

# git log --stat -p

# glo

# git log --oneline --decorate

# glog

# git log --oneline --decorate --graph

# glol

# git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'

# glola

# git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all

# glp

# _git_log_prettily (Also: "git log --pretty=$1")

# gm

# git merge

# gsb

# git status -sb

# gsd

# git svn dcommit

# gsi

# git submodule init

# gsps

# git show --pretty=short --show-signature

# gsr

# git svn rebase

# gss

# git status -s

# gst

# git status

# gsta

# git stash push

# gstaa

# git stash apply

# gstd

# git stash drop

# gstl

# git stash list

# gstp

# git stash pop

# gstc

# git stash clear

# gsts

# git stash show --text

# gsu

# git submodule update

# gts

# git tag -s

# gunignore

# git update-index --no-assume-unchanged

# gunwip

# git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1

# gup

# git pull --rebase

# gupv

# git pull --rebase -v

# gvt

# git verify-tag

# gwch

# git whatchanged -p --abbrev-commit --pretty=medium

# gwip

# git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"
