# lianacfg

Adds a number of useful features and aliases to fish shell, including:

- Management of SSH agents (type `ssha` and `ssh-add-all` or `ssharm` to clear)
- Construction & deconstruction of pre-configured tmux workspaces (type `tws` and `tks`)
- Andrea Colangelo's fortune-mod displayed with each new window
- News from the Brutalist Report (type `news`)
- Weather reports from Igor Chubin's "wttr.in" (type `weather`)
- Aliases for working with a terminal (type `i` or `l`)
- Aliases for easy use of kubectl & docker (type `k` or `dps`)
- Builtin fish [autopair](https://github.com/jorgebucaran/autopair.fish) and [z](https://github.com/jethrokuan/z) support so you can clone the repository into your `~/.config/fish/conf.d/` folder

## Installation

Install fish and clone this repository directly into `~/.config/fish/conf.d/`

Then, create an env file in `~/.config/fish/conf.d/` and configure the below variables as needed:

Variable | Description
-- | --
| WEATHER_CITY | City to pull weather reports for
| SSH_AGENTS_DIR | A directory containing SSH keys to load, e.g. $HOME/.ssh/lianacfg/
| TMUX_WORKSPACES | A list of tmux workspaces to create, parsed in order & comma-separated
| TMUX_WORKSPACES_CLUSTERS | A list of tmux workspaces to create for working with clusters, parsed in order & comma-separated
| DEFAULT_MODEL | The default AI model for use with [fabric](https://github.com/danielmiessler/fabric)

## Quick commands

- For help, type `helpcfg`
- Reload the config with `reloadcfg`
- Quickly edit the config with `editcfg`