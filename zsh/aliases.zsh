# standard aliases
alias ll='ls -l'
alias la='ls -lA'
alias lt='ls -lrt'
alias sl=ls
alias d='dirs -v | head -10'

# git aliases
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gco='git checkout'
alias gcl='git clone --recursive'
alias gf='git fetch --prune'
alias gp='git push origin'
alias gpu='gp -u HEAD'
alias gd='git diff'
alias gdc='git diff --cached'
alias ga='git add'
alias gap='git add -p'
alias gs='git status -sb'
alias gff='git merge --ff-only'
alias gst='git stash'
alias gri='git rebase --interactive'
alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias gra='git rebase --abort'

# mercurial aliases
alias hc='hg commit'
alias hcm='hg commit -m'
alias hs='hg status'
alias ha='hg add'

# git branches at the puta calle
alias git-atpc="git branch --merged | grep -Gv '*' | xargs git branch -d"

# pushd aliases
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

# other
alias oa="open -a "
alias r='source ~/.zshrc'
alias c='clear'
alias rsize='gdu -hs * | gsort -h'

alias pp='pbpaste | pbcopy'

function fsize {
  find $1 -name $2 -type d -prune -exec gdu -hs {} \; | gsort -h
}

function readbytes {
  xxd -p -seek $2 -l $3 $1
}
