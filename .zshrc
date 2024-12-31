# Source aliases
if [ -f ~/dotfiles/aliases.zsh ]; then
  source ~/dotfiles/aliases.zsh
fi


# Shell Setup fnm
eval "$(fnm env --use-on-cd --shell zsh)"