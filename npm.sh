#!/bin/sh

npm install -g npm@latest
npm install -g coffee-script coffeelint
npm install -g jshint jsonlint csslint js-yaml eslint
npm install -g babel-eslint eslint-plugin-react
npm install -g eslint-plugin-angular eslint-config-angular
npm install -g bower tern gulp less
npm install -g js-beautify typescript-formatter

if [[ -f $HOME/github/typescript-tools/package.json ]]; then
    cd $HOME/github/typescript-tools;
    git pull origin master
    npm install -g;
fi
