# lianacfg

Adds a number of useful features and aliases to fish shell, including:

- Management of SSH agents (type `ssha` and `ssh-add-all` or `ssharm` to clear)
- Construction & deconstruction of pre-configured tmux workspaces (type `tws` and `tks`)
- Andrea Colangelo's fortune-mod displayed with each new window
- News from the Brutalist Report (type `news`)
- Weather reports from Igor Chubin's "wttr.in" (type `weather`)
- Aliases for working with a terminal (type `i` or `l`)
- Aliases for easy use of kubectl & docker (type `k` or `dps`)
- Aliases for easy use of tmux (type `t`)
- Builtin fish [autopair](https://github.com/jorgebucaran/autopair.fish) support so the repository can be cloned directly into `~/.config/fish/conf.d/`

## Installation

Install fish and clone this repository directly into `~/.config/fish/conf.d/`

Then, create an env file in `~/.config/fish/conf.d/` and configure the below variables as needed:

Variable | Description
-- | --
| LIANACFG_DEBUG | Show debug messages when `true`
| LIANACFG_PATH | Where this repository is located
| LIANACFG_PATHS_OSX | A list of folders to append to the system path, if the detected OS is "Darwin"
| LIANACFG_WEATHER_CITY | City to pull weather reports for
| LIANACFG_SSH_AGENTS_DIR | A directory containing SSH keys to load, e.g. $HOME/.ssh/lianacfg/
| LIANACFG_TMUX_WORKSPACES | A list of tmux workspaces to create, parsed in order & comma-separated

## Quick commands

- For help, type `helpcfg`
- Reload the config with `reloadcfg`
- Reload the environment with `reloadenv`
- Quickly edit the config with `editcfg`
- Quickly edit the environment with `editenv`