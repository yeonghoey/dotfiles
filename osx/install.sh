if [ "$(uname -s)" != "Darwin" ]; then
  exit 0
fi

echo "› sudo softwareupdate -i -a"
sudo softwareupdate -i -a

# Use Finder listview by default
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

brew bundle --file=osx/Brewfile
