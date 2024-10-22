#!/usr/bin/env bash

# Needed for some of the formulas below
brew tap homebrew/cask-versions

# Essentials
bres install --cask iterm2
brew install fswatch
brew install wget
brew install htop
brew install --cask proton-mail
brew install --cask istat-menus
brew install --cask firefox@developer-edition
brew install --cask google-chrome
brew install --cask brave-browser
brew install --cask keka
brew install --cask yubico-authenticator
brew install --cask microsoft-office

# Security
brew install reikey
brew install blockblock
brew install knockknock
brew install ransomwhere
brew install oversight

# Network
brew install --cask little-snitch
brew install --cask nordvpn

# Chat
brew install --cask telegram
brew install --cask whatsapp

# Base Dev tools
brew install git-extras
brew install --cask github
brew install --cask postman
brew install miller

# Node development
brew install nvm

# Python development
brew install pyenv

# Terraform development
brew install tfenv

# Go development
brew install go
brew install glide

# Scala development
brew install --cask corretto
brew install sbt
brew install scala

# DB tools
brew install --cask postico
brew install --cask tableplus

# IDEs and code editors
brew install --cask visual-studio-code
brew install --cask intellij-idea

# Misc.
#brew cask install dropbox
brew install --cask spotify
brew install --cask viscosity