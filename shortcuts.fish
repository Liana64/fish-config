###
 ## Copyright (c) Liana64
 ##
 ## This source code is licensed under the MIT license found in the
 ## LICENSE file in the root directory of this source tree.
#########

source ~/.config/fish/conf.d/.env

# Variables
set LIANACFG_VER 1.01

# Script Functions
function fc_create_tmux_workspaces
  set quiet_mode $argv[1]
  
  set workspaces (string split ',' $LIANACFG_TMUX_WORKSPACES)
  for workspace in $workspaces
    tmux new -d -s $workspace
    if test "$quiet_mode" != "q"
      echo "Created tmux workspace: $workspace"
    end
  end
end

function fc_add_ssh_keys
  set agents_dir $LIANACFG_SSH_AGENTS_DIR
  echo "Adding keys from $LIANACFG_SSH_AGENTS_DIR"

  if not test -d $agents_dir
    echo "Directory $agents_dir does not exist"
    return 1
  end

  for key in (find -L $LIANACFG_SSH_AGENTS_DIR -type f)
    eval ssh-add $key
    if test $status -eq 0
      echo "Added SSH key: $key"
    else
      echo "Failed to add SSH key: $key"
    end
  end
end


function fc_getweather
  if test -n "$argv"
    curl wttr.in/$argv
  else
    curl wttr.in/$LIANACFG_WEATHER_CITY
  end
end

# Script Shortcuts
alias editcfg='$EDITOR ~/.config/fish/conf.d/shortcuts.fish && reloadcfg'
alias helpcfg='cat ~/.config/fish/conf.d/shortcuts.fish | less'
alias reloadcfg='source ~/.config/fish/conf.d/shortcuts.fish && echo "Updated lianacfg"'
alias versioncfg='echo v$LIANACFG_VER'

# Personal Shortcuts
alias weather='fc_getweather'
alias news='echo "" && curl -s https://brutalist.report/summary | sed -rn "s@(^.*<li>)(.*)(</li>)@\2\n@p" | sed "s|<strong>|• |g; s|</strong>||g"'

# Main Shortcuts
alias c='clear'
alias cc='cd && clear'
alias e='exit'
alias exp='export'
alias f='fabric'
alias g='grep'
alias hex='openssl rand -hex'
alias i='whoami'
alias l='ls -laht'
alias mktmp='cd "$(mktemp -d)"'
alias now='date +"%T"'
alias r='sudo su -'
alias rp='realpath .'
alias s='sudo'
alias stc='stat -c %a'
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
alias sshcfg='$EDITOR ~/.ssh/config'
alias sshls='ssh-add -L'
alias ssh-add-all='fc_add_ssh_keys'

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
alias dcd='docker compose down'
alias dcu='docker compose up -d'
alias dnls='docker network ls'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dvls='docker volume ls'

# Tmux Shortcuts
alias t='tmux a -t'
alias tks='tmux kill-server'
alias tls='tmux ls'
alias tn='tmux new'
alias tns='tmux new -s'
alias tws='fc_create_tmux_workspaces'
