#!/usr/bin/env bash

brew cask install alfred

# Open the app so the preference files get initialized
open "$HOME/Applications/Alfred 2.app"

# TODO: looks like this doesnt work
brew cask alfred link
