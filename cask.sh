#!/bin/sh

# Install Homebrew Cask
brew install caskroom/cask/brew-cask

# Apps
apps=(
  alfred
  dropbox
  1password
  google-chrome
  firefox
  # qlcolorcode
  slack
  gitter
  appcleaner
  # qlmarkdown
  karabiner
  # seil
  # spotify
  # vagrant
  iterm2
  # qlprettypatch
  # shiori
  atom
  # sublime-text3
  emacs                     # Emacs from http://emacsformacosx.com
  nvalt
  textwrangler
  coteditor
  # flux
  # mailbox
  # qlstephen
  # sketch
  vlc
  mplayerx
  # cloudup
  # quicklook-json
  skype
  transmission
  # arq
  # hazel
  # screenflick
  # tower
  # transmit
  keycue
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# Install Font Cask
brew tap caskroom/fonts 
