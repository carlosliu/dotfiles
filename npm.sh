#!/bin/sh

npm install -g npm@latest
npm install -g jshint eslint
npm install -g babel-eslint eslint-plugin-react
npm install -g eslint-plugin-angular eslint-config-angular
npm install -g coffee-script gulp
npm install -g tern

if [[ -f $HOME/github/typescript-tools/package.json ]]; then
    cd $HOME/github/typescript-tools;
    git pull origin master
    npm install -g;
fi
