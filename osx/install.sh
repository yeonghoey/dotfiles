if [ "$(uname -s)" != "Darwin" ]; then exit 0; fi

echo "› sudo softwareupdate -i -a"
sudo softwareupdate -i -a

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv
