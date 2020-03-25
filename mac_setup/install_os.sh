#!/bin/sh
# Set MacOSX preferences
echo "Set OS defaults"

#Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1

#Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 10

#Disable auto spelling
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

#Show the ~/Library folder
chflags nohidden ~/Library

#Store screenshots in subfolder on desktop
mkdir -p ~/Desktop/Screenshots
defaults write com.apple.screencapture location ~/Desktop/Screenshots


#set up preferences for mousespeed and so on dock on the right

#Disable Photos auto open when setting up a new mac
