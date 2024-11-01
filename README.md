# My dotfiles

This direcory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
brew install git
```

### Stow

```
brew install stow
```

### Zinit

Zinit is a flexible and fast Zshell plugin manager.

> It is already configured in the zsh file

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
git clone git@github.com:atipaq/dotfiles.git
```

```
cd dotfiles
```

then use GNU stow to create symlinks

```
stow .
```

Reload Zsh to install Zinit

```
exec zsh
```
