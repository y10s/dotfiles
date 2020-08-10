# man 1 ksh for details
# 191127
. /etc/ksh.kshrc

# Prompt
PROMPT="$HOST:!$PS1S"
PPROMPT='$HOST:$PWD:(\j)!'"$PS1S"
#PS1=$PPROMPT
PS1='$HOST \t (\j) \$ '

# Aliases
alias l='ls -l'
# Job control
alias j='jobs'
alias  1='fg %1'
alias  2='fg %2'
alias  3='fg %3'
alias  4='fg %4'
alias  5='fg %5'
alias  6='fg %6'
alias 11='bg %1'
alias 22='bg %2'
alias 33='bg %3'
alias 44='bg %4'
alias 55='bg %5'
alias 66='bg %6'

# Tab Completion
set -A complete_tmux_1 -- -attach
set -A complete_kill_1 -- -9 -HUP -INFO -KILL -TERM
set -A complete_rcctl_1 -- -check -reload -restart -stop -start -disable -enable -ls