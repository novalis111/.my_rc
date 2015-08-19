#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# http://www.commandlinefu.com/commands/view/2759/ssh-autocomplete
function _ssh_completion() {
    perl -ne 'print "$1 " if /^Host (.+)$/' ~/.ssh/config
}
complete -W "$(_ssh_completion)" ssh
