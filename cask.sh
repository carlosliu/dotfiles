#!/bin/sh

# Install Homebrew Cask
brew install caskroom/cask/brew-cask

# Apps
apps=(
  1password
  alfred
  keycue
  # mou
  # arq
  # hazel
  # sublime-text3
  atom
  nvalt
  textwrangler
  coteditor
  # qlcolorcode
  # qlmarkdown
  # qlprettypatch
  # qlstephen
  # quicklook-json
  appcleaner
  # day-o                   # only Mavericks
  # itsycal                 # Yosemite+
  iterm2
  menumeters
  karabiner
  # seil
  dropbox
  google-chrome
  firefox
  opera
  slack
  gitter
  skype
  transmission
  # spotify
  vlc
  mplayerx
  # vagrant
  # flux
  # sketch
  # cloudup
  # screenflick
  # tower
  # transmit
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# Install Font Cask
brew tap caskroom/fonts
