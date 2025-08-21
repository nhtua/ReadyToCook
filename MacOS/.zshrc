eval "$(/opt/homebrew/bin/brew shellenv)"

alias python=python3

export PIP_CONFIG_FILE=$HOME/.config/pip/pip.conf
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="cloud"


#plugins=(git 1password alias-finder ansible autoenv autojump autopep8 battery brew cp fzf gh git gitignore golang helm kubectl npm pip poetry pyenv rust) 
plugins=(git gitignore alias-finder ansible cp)


zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7
zstyle ':omz:lib:theme-and-appearance' gnu-ls yes


ENABLE_CORRECTION="false"
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8


if [[ -z "$TMUX" && -n "$PS1" ]]; then
    tmux attach -t default || tmux new -s default
fi

export NVM_DIR="/opt/homebrew/opt/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

export GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1
export GRPC_PYTHON_BUILD_SYSTEM_ZLIB=1
export CFLAGS="-I/opt/homebrew/opt/openssl/include"
export LDFLAGS="-L/opt/homebrew/opt/openssl/lib"

export PATH="/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin:$PATH"
