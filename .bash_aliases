alias updeb='sudo apt-get update && sudo apt-get dist-upgrade'
alias upmy='cd ~/.my_rc && git pull && cd -'
alias h='history'
alias hgr='history | grep -i '
alias l='ls -hG'
alias ll='ls -lAGh'
alias f="find . | grep -i "
alias p="ps aux | grep -i "
alias cow="fortune | cowsay -n -e^^ -TU"
alias duh='du -hcs * | sort -h'
alias c='clear'
alias woy='date +%V' # week of year
alias gphp='ps aux | grep php | grep -v pool'
# git
alias glog="git log --pretty=tformat:'%h %Cblue%cr%Creset %cn %Cgreen%s%Creset'"
alias gst='git status'
alias gadd='git add . && git commit && git push'
# taskwarrior
alias tw='task'
alias twa='task add'
alias tws='task sync'
alias twm='task $1 modify $2'
# todotxt
alias t='todo.sh'
alias tl='todo.sh list'
