alias ap=ansible-playbook

set -x LANG en_US.UTF-8

if test -z "$TMUX" && test -a (status is-interactive)
    tmux attach -t default; or tmux new -s default
end

set -Ux PYENV_ROOT "$HOME/.pyenv"
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
pyenv init - fish | source
