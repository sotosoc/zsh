alias push='cat ~/ick; git push'

alias ga.='git add . && git st .'
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
alias gh='git st |head -n 30'
alias gl.='git log .'
alias glg='git log --stat'
alias glgg='git log --graph'
alias gls='git ls-files'
alias gma='git merge --abort'
alias gmom='git merge origin/master'
alias gmt='git mergetool --no-prompt'
alias gp='git push'
alias gst.='git st -sb .'
alias gst='git st -sb | less'

# _git_log_prettily (Also: "git log --pretty=$1")
# git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"
# git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'
# git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all
# git log --oneline --decorate
# git log --oneline --decorate --graph
# git log --stat -p
# git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1
# git merge
# git pull --rebase
# git pull --rebase -v
# git show --pretty=short --show-signature
# git stash apply
# git stash clear
# git stash drop
# git stash list
# git stash pop
# git stash push
# git stash show --text
# git status
# git status -s
# git status -sb
# git submodule init
# git submodule update
# git svn dcommit
# git svn rebase
# git tag -s
# git update-index --no-assume-unchanged
# git verify-tag
# git whatchanged -p --abbrev-commit --pretty=medium
# glgp
# glo
# glog
# glol
# glola
# glp
# gm
# gsb
# gsd
# gsi
# gsps
# gsr
# gss
# gst
# gsta
# gstaa
# gstc
# gstd
# gstl
# gstp
# gsts
# gsu
# gts
# gunignore
# gunwip
# gup
# gupv
# gvt
# gwch
# gwip
