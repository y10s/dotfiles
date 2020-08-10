# schwammerl's zshrc
# Version 200105

autoload -U down-line-or-beginning-search
autoload -U up-line-or-beginning-search
autoload -U zargs
autoload -Uz compinit && compinit
autoload -Uz edit-command-line

# General history settings
HISTFILE=~/.histfile
HISTSIZE=150000
SAVEHIST=120000

### OPTIONS
setopt share_history
setopt append_history
setopt extended_history
setopt hist_no_store
setopt auto_cd
setopt auto_list
setopt auto_pushd
setopt brace_ccl
setopt complete_aliases
setopt complete_in_word
setopt correct
setopt extended_glob
setopt glob_complete
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_ignore_space
[[ $(zsh --version|awk '{print $2}') == "5.0.2" ]] || setopt hist_reduce_blanks
setopt hist_verify
setopt inc_append_history # "fc -RI" for import
setopt no_beep
setopt no_case_glob
setopt no_case_match
setopt no_correct_all
setopt no_clobber
setopt no_match
setopt notify
setopt pushd_ignore_dups
setopt short_loops

# Autocomplete options
zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
  'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' list-colors ''

# binds
bindkey -e # Emacs key bindungs
bindkey '^P' push-line
bindkey '^[[A' up-line-or-beginning-search
bindkey 'OA' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search
bindkey 'OB' down-line-or-beginning-search
bindkey "" edit-command-line

# ZLE stuff
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
zle -N edit-command-line

### PROMPT
PROMPT='%B%m%b %* (%j) %B%#%b '
# PROMPT="%B%m%b %*%1(j. (%j%).) %B%#%b "
# RPROMPT="%(?..:()"
RPROMPT="%(?.. %F{magenta}[%?]%f)"

### ENVVARS
export EDITOR=vim
export VISUAL=vim
export PAGER=less

### ALIASES
alias a=alias
alias d='dirs -v'
alias j='jobs -l'
alias sudo='nocorrect sudo'
#alias docker='sudo docker'
#alias docker-compose='sudo docker-compose'
alias diff='diff --color'

# Job control
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

### OS dependent stuff
case ${$(uname):l} in
    linux*)
        PATH=$HOME/bin:$HOME/.local/bin:$PATH
        alias l="ls -l --color=auto"
        alias diff="diff --color"
        alias "systemctl=sudo systemctl"
        [[ -f /etc/debian_version ]] && \
            alias apt="sudo apt"
            alias apt-get="sudo apt-get"
            alias dpkg="sudo dpkg"
        [[ -f /etc/redhat-release ]] && \
            alias yum="sudo yum"
    ;;
esac

### FUNCTIONS
R() { $PAGER -- (#ia3)readme*; }

### LOCAL SETTINGS
[[ -f "$HOME/.local.zsh" ]] \
  && source "$HOME/.local.zsh"
