export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
ZSH_CUSTOM=$HOME/.dotfiles/aliases
plugins=(git history-substring-search)
export PATH="$HOME/bin:/usr/local/bin:$PATH"
source $ZSH/oh-my-zsh.sh
export TERM='xterm-256color'
