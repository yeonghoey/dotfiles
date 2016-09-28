#!/bin/bash

set -e

plugins_path="$HOME/.sbt/0.13/plugins"
mkdir -p "$plugins_path"
ln -sf "$DOTFILES_ROOT/scala/plugins.sbt" "$plugins_path/plugins.sbt"
