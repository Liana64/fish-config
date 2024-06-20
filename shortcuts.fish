source ~/.config/fish/conf.d/.env

# Script Functions
function create_tmux_workspaces
  set quiet_mode $argv[1]
  set workspaces (string split ',' $TMUX_WORKSPACES)

  for workspace in $workspaces
    tmux new -d -s $workspace
    if test "$quiet_mode" != "q"
      echo "Created tmux workspace: $workspace"
    end
  end
end

# Script Shortcuts
alias editcfg='$EDITOR ~/.config/fish/conf.d/shortcuts.fish'
alias helpcfg='cat ~/.config/fish/conf.d/shortcuts.fish | less'
alias reloadcfg='source ~/.config/fish/conf.d/shortcuts.fish'

# Personal Shortcuts
alias weather='metar -d $METAR_STATION'

# Main Shortcuts
alias c='clear'
alias cc='cd && clear'
alias e='exit'
alias exp='export'
alias i='whoami'
alias l='ls -laht'
alias tmpdir='cd "$(mktemp -d)"'
alias now='date +"%T"'
alias g='grep'
alias rp='realpath .'
alias s='sudo'
alias ssu='sudo su -'
alias sc='stat -c %a'
alias src='source'

## Debian Shortcuts
alias u='sudo apt update'
alias uu='sudo apt update && sudo apt upgrade -y'

# Git Shortcuts
alias pull='git pull'
alias pullh='git pull --reset hard'

# SSH Shortcuts
alias ssha='eval $(ssh-agent -c)'
alias ssharm='ssh-agent -k'
alias sshls='ssh-add -L'
alias ssh-add-all='grep -slR "PRIVATE" $SSH_AGENT_WORKING_DIR | xargs echo && ssh-add'
alias sshcfg='$EDITOR ~/.ssh/config'

# Ansible Shortcuts
alias ans='cd /etc/ansible'
alias ova='eval "$(read -s VAULTKEY && export VAULTKEY)"'

# Kubernetes Shortcuts
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
alias tmux-ws='create_tmux_workspaces'
alias tn='tmux new'
alias tns='tmux new -s'
alias tks='tmux kill-server'
alias tls='tmux ls'
alias ta='tmux a -t'