#!/bin/bash

set -e

echo "🔧 Starting environment setup..."

# Create necessary folders
mkdir -p ~/.config

# Set up .zshrc
echo "📄 Setting up .zshrc..."
rm -f ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
echo "✅ .zshrc successfully linked"

# Set up .gitconfig
echo "📄 Setting up .gitconfig..."
rm -f ~/.gitconfig
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
echo "✅ .gitconfig successfully linked"

# Check if Starship is installed
if ! command -v starship &> /dev/null; then
  echo "🌟 Starship not found. Installing..."
  curl -sS https://starship.rs/install.sh | sh -s -- -y
  echo "✅ Starship successfully installed"
else
  echo "🌟 Starship is already installed"
fi

# Set up starship.toml
if [ -f ~/dotfiles/starship.toml ]; then
  echo "📄 Setting up starship.toml..."
  rm -f ~/.config/starship.toml
  ln -s ~/dotfiles/starship.toml ~/.config/starship.toml
  echo "✅ starship.toml successfully linked"
elif [ -f ~/dotfiles/starship/starship.toml ]; then
  echo "📄 Setting up starship/starship.toml..."
  rm -f ~/.config/starship.toml
  ln -s ~/dotfiles/starship/starship.toml ~/.config/starship.toml
  echo "✅ starship.toml successfully linked"
else
  echo "⚠️  starship.toml not found in dotfiles"
fi

echo "🎉 Setup complete! Run 'source ~/.zshrc' or restart your terminal to apply the changes."