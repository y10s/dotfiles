### Prompt
export PS1='\[\e[1;97m\]\h\[\e[0m\] \t $([[ -n "$(jobs -p)" ]] && echo "(\j) ")\[\e[1;97m\]\$\[\e[0m\] '

### Options
shopt -s histverify

### Aliases
alias j="jobs -l"
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

### Binds
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

### ENVVARS
export EDITOR=vim
export VISUAL=vim
export PAGER=less

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# kubectl completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source <(kubectl completion bash)

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
