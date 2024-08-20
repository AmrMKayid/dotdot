#!/bin/bash

# Zsh Shell
apt -y update && apt -y upgrade
apt -y install build-essential procps \
                curl file git htop nvtop \
                psmisc xclip htop tree
apt install -y zsh
chsh -s $(which zsh)

# Oh My Zsh installation
echo "Y" | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Git
git config --global user.email "amrmkayid@gmail.com"
git config --global user.name "Amr Kayid"

# brew
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bashrc
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.zshrc

# Docker
brew install docker

# GitHub CLI
brew install gh

# k9s
brew install k9s

## some setup
pip install pre-commit
pre-commit install

pip install ruff mypy pylint ipdb

exec zsh
source ~/.zshrc


export DECORD_EOF_RETRY_MAX=81920
