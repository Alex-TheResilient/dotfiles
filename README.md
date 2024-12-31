# Alex's dotfiles

This directory contains the dotfiles for my system, including configurations for Git, Zsh, and other tools.

### Requirements

- [Git](https://git-scm.com/downloads/mac)
- [Warp](https://docs.warp.dev/getting-started/getting-started-with-warp)
- [VSCode](https://code.visualstudio.com/download)
- [Rust (fnm dependency)](https://www.rust-lang.org/es/learn/get-started)
- [fnm (Fast Node Manger)](https://github.com/Schniz/fnm)

## How to Use

### Clone this repository

```bash
git clone git@github.com:atipaq/dotfiles.git
```

### Create a symbolic links

Create symbolic link from your home directory to the dotfiles directory:

```bash
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.zshrc ~/.zshrc
```

### Verify the Setup

Check the symbolic link:

```bash
ls -l ~/.gitconfig
ls -l ~/.zshrc
```

Verify Git is using the correct configuration:

```
git config --list
```

Reload Zsh

```
exec zsh
```
