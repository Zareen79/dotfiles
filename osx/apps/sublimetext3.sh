#!/usr/bin/env bash

brew cask install sublime-text3

# Add subl CLI
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

# Install Package Control
wget https://sublime.wbond.net/Package%20Control.sublime-package -P "$HOME/Library/Application Support/Sublime Text 3/Installed Packages/" -N

# Link preferences files
rm -f "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
ln -s "$(pwd)/$(dirname $0)/sublimetext3/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
ln -s "$(pwd)/$(dirname $0)/sublimetext3/Package Control.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings"

# Link snippets
ln -s "$(pwd)/$(dirname $0)/sublimetext3/snippets" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Snippets"
