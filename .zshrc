export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="cloud"
#plugins=(git 1password alias-finder ansible autoenv autojump autopep8 battery brew cp fzf gh git gitignore golang helm kubectl npm pip poetry pyenv rust) 
plugins=(git gitignore alias-finder ansible cp)


zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7
zstyle ':omz:lib:theme-and-appearance' gnu-ls yes


ENABLE_CORRECTION="true"
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
