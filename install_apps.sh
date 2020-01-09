#!/usr/bin/env bash

# Needed for some of the formulas below
brew tap homebrew/cask-versions

# Essentials
brew install fswatch
brew install wget
brew install htop
brew cask install istat-menus
brew cask install firefox-developer-edition
brew cask install google-chrome
brew cask install opera
brew cask install keka

# Base Dev tools
brew install git-extras
brew cask install github
brew cask install postman
brew install miller

# Devops tools
brew install terraform@0.11
brew install packer

# Node development
brew install nvm

# Python development
brew install pyenv

# Go development
brew install go
brew install glide

# Scala development
brew cask install corretto8
brew install sbt
brew install scala

# DB tools
brew cask install postico
brew cask install tableplus

# Local dev server
brew cask install virtualbox
brew cask install vagrant

# IDEs and code editors
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install intellij-idea

# Misc.
brew cask install dropbox
brew cask install spotify
brew cask install viscosity
