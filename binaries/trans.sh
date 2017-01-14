#!/bin/bash

set -e

# Translate Shell
wget -O "$LOCALBIN/trans" "git.io/trans"
chmod +x "$LOCALBIN/trans"
