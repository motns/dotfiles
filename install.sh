#!/usr/bin/env bash

DOTFILES_ROOT="`pwd`"


################################################################################
# Output helpers

info () {
  printf "  [ \033[00;34m..\033[0m ] $1"
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}


################################################################################
# Install helpers

backup_file () {
  mv "$1" "${1}.backup"
  success "moved $1 to ${1}.backup"
}

link_files () {
  if [ ! -h "$2" ]
  then
    ln -s "$1" "$2"
  fi

  success "linked $1 to $2"
}

install_dotfiles () {
  for source in `find $DOTFILES_ROOT -maxdepth 2 -name \*.symlink`
  do
    dest="$HOME/.`basename \"${source%.*}\"`"

    if [ -f $dest ] || [ -d $dest ]
    then
      backup_file $dest
    fi

    link_files $source $dest
  done
}

install_sublime_settings () {
  sublime_dir=~/Library/Application\ Support/Sublime\ Text\ 2/Packages
  sublime_theme_dir="$sublime_dir/Color Scheme - Default"

  if [ -d "$sublime_dir/User" ] && [ ! -h "$sublime_dir/User" ]
  then
    backup_file "$sublime_dir/User"
  fi

  link_files "$DOTFILES_ROOT/sublime2/User" "$sublime_dir/User"

  # Theme
  #    No need to back up - just overwrite
  cp "$DOTFILES_ROOT/sublime2/color-scheme/Wombat.tmtheme" "$sublime_theme_dir/."
  success "Copied Wombat theme file to $sublime_theme_dir"
}

install_font () {
  font_dir=~/Library/Fonts
  # Again, just overwrite
  cp "$DOTFILES_ROOT/system/fonts/Menlo+Regular+for+Powerline.ttf" "$font_dir"
  success "Copied Menlo Powerline font to $font_dir"
}


################################################################################

install_dotfiles
install_sublime_settings
install_font
