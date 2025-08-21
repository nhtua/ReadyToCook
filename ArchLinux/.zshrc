export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="dst"
plugins=(
  git
  bundler
  rake
  rvm
  ruby
  pyenv
  python
  golang
  docker
  docker-compose
  kubectl
  emoji
  fzf
  helm
  node
  npm
  zsh-autosuggestions
  zsh-syntax-highlighting
)

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7
zstyle ':omz:lib:theme-and-appearance' gnu-ls yes


ENABLE_CORRECTION="true"
export LANG=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

# User configuration
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH=$HOME/.npm-global/bin:$PATH

export EDITOR=nvim

# Add custom scripts to PATH
export PATH=$PATH:$HOME/Scripts/tools

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Start Tmux automatically
if [[ -z "$TMUX" && -n "$PS1" ]]; then
    tmux attach -t default || tmux new -s default
fi
