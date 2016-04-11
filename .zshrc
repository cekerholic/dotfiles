export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
ZSH_CUSTOM=$HOME/.dotfiles/aliases
plugins=(git history-substring-search)
export PATH="$HOME/bin:/usr/local/bin:$PATH"
source $ZSH/oh-my-zsh.sh
export TERM='xterm-256color'
NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
unset MANPATH
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.local/bin:$PATH"
case $- in *i*)
  if [ -z "$TMUX" ]; then exec tmux; fi;;
esac
export EDITOR='nano'

