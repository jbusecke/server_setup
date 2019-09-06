#!/bin/sh
# Set MacOSX preferences
echo "Set OS defaults"

#Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 5

#Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 20

#Disable auto spelling
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

#Show the ~/Library folder
chflags nohidden ~/Library

#Store screenshots in subfolder on desktop
mkdir -p ~/Desktop/Screenshots
defaults write com.apple.screencapture location ~/Desktop/Screenshots


#set up preferences for mousespeed and so on dock on the right

#Disable Photos auto open when setting up a new mac

# Maybe add a service that opens an iterm window wiht a right click?
#http://stackoverflow.com/questions/420456/open-terminal-here-in-mac-os-finder
