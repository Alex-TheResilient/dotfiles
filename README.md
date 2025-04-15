# Alex's dotfiles

This directory contains the dotfiles for my system, including configurations for Git, Zsh, and other tools.

## Shell & Terminal Setup

- [Git](https://git-scm.com/downloads/mac)
- [Starship prompt](https://starship.rs/)
- Nerd Font: [IosevkaTerm Nerd Font](https://www.nerdfonts.com/font-downloads)
- [Ghostty](https://ghostty.org/)

## Installation

### 1. Clone this repository

```bash
git clone git@github.com:atipaq/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Run the install script

```bash
./install.sh
```

This will:

- Link .zshrc, starship.toml, Neovim config, Ghostty config
- Ensure ~/.config structure is correct
- (Optionally) install Starship if not found

### Verify the Setup

Check the symbolic link:

```bash
ls -l ~/.gitconfig
ls -l ~/.zshrc
```

## Font Configuration

In VSCode, update your settings.json:

```bash
"editor.fontFamily": "'IosevkaTerm NF', monospace",
"terminal.integrated.fontFamily": "'IosevkaTerm NF'"
```

### Development Tools

- [VSCode](https://code.visualstudio.com/download)
- [Rust (fnm dependency)](https://www.rust-lang.org/es/learn/get-started)
- [Node.js](https://nodejs.org/en/download)
- [pnpm](https://pnpm.io/installation#using-corepack)

#### Nvim

- [lazyvim](https://www.lazyvim.org/)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fzf](https://github.com/junegunn/fzf)

#### fnm (Fast Node Manager)

- [fnm (Fast Node Manger)](https://github.com/Schniz/fnm)

**Instalación:**

```bash
# En macOS con Homebrew
brew install fnm

# O mediante curl
curl -fsSL https://fnm.vercel.app/install | bash
```

> Since v16.13, Node.js is shipping Corepack for managing package managers.

**pnpm - Gestor de paquetes rápido y eficiente**

```bash
# Download and install pnpm:
corepack enable pnpm
# Verify pnpm version:
pnpm -v
```
