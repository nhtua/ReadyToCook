alias ap=ansible-playbook
alias python=python3

set -x PIP_CONFIG_FILE "$HOME/.config/pip/pip.conf"

set -x LANG en_US.UTF-8

if test -z "$TMUX" && test -a (status is-interactive)
    tmux attach -t default; or tmux new -s default
end

set -Ux PYENV_ROOT "$HOME/.pyenv"
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
pyenv init - fish | source

set -Ux nvm_default_version 23

set -Ux STARSHIP_CONFIG "$HOME/.config/starship.toml"
starship init fish | source
