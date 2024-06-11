# Main Shortcuts
alias c='clear'
alias cc='cd && clear'

alias e='exit'
alias exp='export'

alias fc='cd ~/.config/fish/conf.d/'

alias i='whoami'
alias l='ls -laht'

alias cdtmp='cd "$(mktemp -d)"'

alias now='date +"%T"'


alias g='grep'
alias gp='git pull'
alias gph='git pull --reset hard'

alias rp='realpath .'

alias s='sudo'
alias ssu='sudo su -'
alias sc='stat -c %a'
alias src='source'
alias ssha='eval $(ssh-agent -c)'
alias ssharm='ssh-agent -k'
alias sshconfig='$EDITOR ~/.ssh/config'

alias u='sudo apt update'
alias uu='sudo apt update && sudo apt upgrade -y'

alias weather='metar -d $METAR_STATION'

# Ansible Shortcuts
alias ans='cd /etc/ansible'
alias ova='read -s VAULTKEY && export VAULTKEY'

# Kube Shortcuts
alias k='kubectl'
alias kc='kubectl config current-context'
alias kcls='kubectl config get-contexts'
alias kcu='kubectl config use-context'

alias kga='kubectl get all -A'
alias kak='kubectl apply -k'
alias kaf='kubectl apply -f'
alias kdk='kubectl delete -k'
alias kdf='kubectl delete -f'

# Docker Shortcuts
alias dcu='docker compose up -d'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dnls='docker network ls'
alias dvls='docker volume ls'

# Tmux Shortcuts
alias tn='tmux new'
alias tk='tmux kill-server'
alias tls='tmux ls'
alias ta='tmux a -t'