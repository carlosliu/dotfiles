#!/bin/sh

# Install Homebrew Cask
brew install caskroom/cask/brew-cask

# Apps
apps=(
    1password
    alfred
    visual-studio-code
    nvalt
    appcleaner
    iterm2
    google-chrome
    firefox
    slack
    vlc
    mplayerx
)
# arq
# karabiner
# keycue
# hazel
# sublime-text3
# qlcolorcode
# qlmarkdown
# qlprettypatch
# qlstephen
# quicklook-json
# day-o                   # only Mavericks
# itsycal                 # Yosemite+
# seil
# skype
# spotify
# vagrant
# flux
# sketch
# screenflick
# squirrel
# tower
# transmit

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# Install Font Cask
brew tap caskroom/fonts
