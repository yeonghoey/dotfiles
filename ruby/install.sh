#!/usr/bin/env bash

set -e

if test ! $(which bundler)
then
  sudo gem install bundler
fi

if test ! $(which boom)
then
  sudo gem install boom
fi
