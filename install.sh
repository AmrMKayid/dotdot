#!/bin/bash

# Zsh Shell
apt -y update && apt -y upgrade
apt -y install build-essential procps curl file git htop nvtop
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

## some setup
pip install pre-commit
pre-commit install

pip install ruff

exec zsh
source ~/.zshrc