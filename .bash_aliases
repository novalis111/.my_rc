alias upsys='sudo apt-get update && sudo apt-get dist-upgrade'
alias h='history'
alias list_ssh="cat $HOME/.ssh/config | grep Host"
alias l='ls -h --color'
alias ll='ls -lAh --color'
alias glog="git log --pretty=tformat:'%h %Cblue%cr%Creset %cn %Cgreen%s%Creset'"
alias gst='git status'

#
# http://www.commandlinefu.com/commands/view/2759/ssh-autocomplete
#
function _ssh_completion() {
    perl -ne 'print "$1 " if /^Host (.+)$/' ~/.ssh/config
}
complete -W "$(_ssh_completion)" ssh
