# Main Shortcuts
alias c='clear'
alias cc='cd && clear'
alias e='exit'

alias fc='cd ~/.config/fish/conf.d/'

alias i='whoami'
alias l='ls -laht'

alias metar='metar -d '
alias weather='metar $METAR_STATION'

alias net='ss -tulpn'
alias now='date +"%T"'

alias p='realpath .'
alias gp='git pull'
alias gph='git pull --reset hard'

alias s='sudo'
alias ssu='sudo su -'
alias sc='stat -c %a'
alias ssha='eval $(ssh-agent -c)'
alias ssharm='ssh-agent -k'
alias sshconfig='$EDITOR ~/.ssh/config'

alias u='sudo apt update'
alias uu='sudo apt update && sudo apt upgrade -y'

# Ansible Shortcuts
alias ans='cd /etc/ansible'
alias ova='read -s VAULTKEY && export VAULTKEY'

# Kube Shortcuts
alias k='kubectl'
alias kc='kubectl config current-context'
alias kls='kubectl config get-contexts'
alias ku='kubectl config use-context'

# Docker Shortcuts
alias dcu='docker compose up -d'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dnls='docker network ls'
alias dvls='docker volume ls'

# Tmux Shortcuts
alias t='tmux new'
alias tk='tmux kill-server'
alias tls='tmux ls'