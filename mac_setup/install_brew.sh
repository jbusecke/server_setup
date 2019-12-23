#!/bin/sh
# Bash script to install all available software with Homebrew
#
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

brew install zsh
# brew install ffmpeg # I will get this through conda
# brew install git
brew install wget
# brew install unison
brew install ssh-copy-id

# brew cask installations
brew tap caskroom/cask

#brew cask install dropbox
brew cask install vlc
brew cask install google-chrome
brew cask install firefox
# brew cask install firefox
brew cask install atom
brew cask install slack
brew cask install onyx
brew cask install skype
brew cask install app-cleaner
# brew cask install typora
brew cask install iterm2
brew cask install spotify
# brew cask install mactex
brew cask install disk-inventory-x
brew cask install zotero
# brew cask install omnifocus
brew cask install google-backup-and-sync
# brew cask install adobe-creative-cloud
# brew cask install hazel
brew install carbon-copy-cloner


# these will ask for password
brew cask install homebrew/cask-drivers/sony-ps4-remote-play homebrew/cask-drivers/qnap-external-raid-manager


# in .zshrc set  /usr/local/bin: before /usr/bin:
# Then do
#brew tap homebrew/dupes
#brew install rsync

brew cask doctor
brew doctor

brew cleanup
brew cask cleanup
