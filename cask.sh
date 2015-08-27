#!/bin/sh

# Install Homebrew Cask
brew install caskroom/cask/brew-cask

# Apps
apps=(
    1password
    alfred
    keycue
    mou
    atom
    nvalt
    textwrangler
    coteditor
    appcleaner
    iterm2
    menumeters
    karabiner
    dropbox
    google-chrome
    firefox
    opera
    slack
    gitter
    skype
    transmission
    vlc
    mplayerx
)
# arq
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
# spotify
# vagrant
# flux
# sketch
# cloudup
# screenflick
# tower
# transmit

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# Install Font Cask
brew tap caskroom/fonts
