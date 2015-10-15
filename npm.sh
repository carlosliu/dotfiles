#!/bin/sh

# To install NVM
# git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`

# npm install -g npm@latest

npm install -g coffee-script typescript
npm install -g http-server live-server
npm install -g less tsd tern

npm install -g jshint jsonlint csslint js-yaml eslint coffeelint
npm install -g babel-eslint
npm install -g eslint-plugin-react
npm install -g eslint-plugin-angular eslint-config-angular

npm install -g gulp-cli grunt-cli karma-cli protractor
npm install -g webpack webpack-dev-server browserify watchify
npm install -g bower jspm yo

npm install -g js-beautify typescript-formatter caniuse-cmd

# if [[ -f $HOME/github/typescript-tools/package.json ]]; then
#     cd $HOME/github/typescript-tools;
#     git pull origin master
#     npm install -g;
# fi
