#!/bin/bash

# -------------------------------------------------- #
#
# Visibility Switcher for OS X
#
# Copyright (c) 2014 tag
#
# -------------------------------------------------- #

status=`defaults read com.apple.finder AppleShowAllFiles`
if ${status}; then
	defaults write com.apple.finder AppleShowAllFiles FALSE
else
	defaults write com.apple.finder AppleShowAllFiles TRUE
fi
killall Finder
killall Terminal
