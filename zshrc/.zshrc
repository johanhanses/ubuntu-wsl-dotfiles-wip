# ~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~~~~~~

export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

# ~~~~~~~~~~~~~~~ Environment Variables ~~~~~~~~~~~~~~~~~~~~~~~~

export PATH=$PATH:/home/johanhanses/.local/bin
export PATH=$HOME/bin:/usr/local/bin:$PATH
export XDG_CONFIG_HOME="$HOME"/.config
export REPOS="$HOME/Repos"
export GITUSER="johanhanses"
export GHREPOS="$REPOS/github.com/$GITUSER"
export DOTFILES="$GHREPOS/dotfiles"
export SCRIPTS="$DOTFILES/scripts"
# export SECOND_BRAIN=$GHREPOS/zettelkasten

export VISUAL=nvim
export EDITOR="$VISUAL"

export CLICOLOR=1
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export WORK_DIR="$REPOS/github.com/Digital-Tvilling"
export LKAB_DIR=${WORK_DIR}/.lkab
export ONPREM_CONFIG_DIR=${LKAB_DIR:?}/on-prem/config
export ONPREM_CERT_DIR=${LKAB_DIR:?}/on-prem/cert
export PATH="$XDG_CONFIG_HOME/scripts:$PATH"

alias repos="cd $REPOS"
alias ghrepos="cd $GHREPOS"
# alias dot="cd $GHREPOS/dotfiles"
alias dot="cd $HOME/master-of-dots"
alias scripts="cd $DOTFILES/scripts"
alias dt="cd $REPOS/github.com/Digital-Tvilling"
alias plan="cd $REPOS/github.com/Digital-Tvilling/DT-Frontend-planning"
alias rtm="cd $REPOS/github.com/Digital-Tvilling/dt-frontend-vite"
alias deploy="cd $REPOS/github.com/Digital-Tvilling/deployment-configuration"
alias backend="cd $REPOS/github.com/Digital-Tvilling/deployment-configuration/external/localhost"
alias dti="cd $REPOS/github.com/Digital-Tvilling/dti"
# alias sb="cd $SECOND_BRAIN"
# alias in="cd $SECOND_BRAIN/0\ Inbox"
alias config="cd $XDG_CONFIG_HOME"
alias windows="cd /mnt/c/Users/johanhanses"

alias szr="source ~/.zshrc"
# alias cat="bat"
alias fast="fast -u --single-line"
alias nv=nvim
alias ..="cd .."
alias c="clear"

alias n="npm"
alias nr="npm run"
alias ns="npm start"

alias ls='ls --color=auto'
# alias ll='ls -la'
# alias l='ls -l'
alias ll="eza -l -a -a -g --group-directories-first --show-symlinks --icons=always"
alias l="eza -l -g --group-directories-first --show-symlinks --icons=always"
alias la='ls -lathr'
alias e='exit'
alias tr="tree -a -L 2"

alias gm="git checkout main && git pull"
alias gp='git push'
alias ga="git add ."
alias gs='git status'
alias gd="git diff"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gcm="git cz"
alias wip="git commit -m 'wip' --no-verify"

alias lg='lazygit'

alias k='kubectl'

alias t='tmux'
alias tk='tmux kill-server'
alias tl='tmux ls'
alias ta='tmux a'

alias d="docker"
alias dc="docker compose"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/johanhanses/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"
