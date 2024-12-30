# Alex's dotfiles

This directory contains the dotfiles for my system, including configurations for Git, Zsh, and other tools.

### Requirements

- [Git](https://git-scm.com/downloads/mac)
- [Warp](https://docs.warp.dev/getting-started/getting-started-with-warp)
- [VSCode](https://code.visualstudio.com/download)

## How to Use

### Clone this repository

```zsh
git clone git@github.com:atipaq/dotfiles.git
```

### Create a symbolic links

Create symbolic link from your home directory to the dotfiles directory:

```bash
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
```

### Verify the Setup

Check the symbolic link:

```bash
ls -l ~/.gitconfig
```

Verify Git is using the correct configuration:

```
git config --list
```

Reload Zsh

```
exec zsh
```
