#!/usr/bin/env bash

brew install caskroom/cask/brew-cask
brew cask install virtualbox
brew install docker-machine docker docker-compose

# create dev vm
docker-machine create -d virtualbox dev

# import docker environment
eval "$(docker-machine env dev)"

# docker run alpine:latest echo 'hello docker!'
