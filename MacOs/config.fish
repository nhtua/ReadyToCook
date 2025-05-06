alias ap=ansible-playbook
alias python=python3

set -x PIP_CONFIG_FILE /Users/liam/.config/pip/pip.conf

set -x LANG en_US.UTF-8

if test -z "$TMUX" && test -a (status is-interactive)
    tmux attach -t default; or tmux new -s default
end

set -Ux PYENV_ROOT "$HOME/.pyenv"
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
pyenv init - fish | source

set -x GRPC_PYTHON_BUILD_SYSTEM_OPENSSL 1
set -x GRPC_PYTHON_BUILD_SYSTEM_ZLIB 1
set -x CFLAGS -I/opt/homebrew/opt/openssl/include
set -x LDFLAGS -L/opt/homebrew/opt/openssl/lib

set -U fish_user_paths /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin $fish_user_paths
