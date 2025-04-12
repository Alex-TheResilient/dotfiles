#!/bin/bash

echo "Setting up nvim with LazyVim"
rm -rf ~/.config/nvim
ln -s ~/dotfiles/nvim ~/.config/nvim
echo "✅ Nvim (LazyVim) successfully linked"

echo "Setting up Ghostty config"
rm -rf ~/.config/ghostty
ln -s ~/dotfiles/ghostty ~/.config/ghostty
echo "✅ Ghostty config successfully linked"
