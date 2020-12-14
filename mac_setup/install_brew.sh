#!/bin/sh
# Bash script to install all available software with Homebrew

# needed for m1 installation (needs to be modified if installing on another mac
softwareupdate --install-rosetta #this raises a prompt...is there an option to silently install?

# for intel based mac, remove the "arch -x86_64 " before each line 

arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
arch -x86_64 brew doctor

# arch -x86_64 brew install zsh # the new macos runs zsh
# brew install ffmpeg # I will get this through conda
arch -x86_64 brew install wget
# arch -x86_64 brew install ssh-copy-id # I dont really need this anymore I think. I usually do this manually.

# brew cask installations
arch -x86_64 brew tap caskroom/cask

#brew cask install dropbox
arch -x86_64 brew cask install firefox
arch -x86_64 brew cask install slack
arch -x86_64 brew cask install skype
arch -x86_64 brew cask install app-cleaner
# brew cask install typora
arch -x86_64 brew cask install iterm2
arch -x86_64 brew cask install disk-inventory-x
arch -x86_64 brew cask install google-backup-and-sync
arch -x86_64 brew cask install adobe-creative-cloud
arch -x86_64 brew cask install textexpander
# brew cask install hazel
arch -x86_64 brew install carbon-copy-cloner
arch -x86_64 brew install --cask visual-studio-code


# these will ask for password
arch -x86_64 brew cask install homebrew/cask-drivers/qnap-external-raid-manager


# in .zshrc set  /usr/local/bin: before /usr/bin:
# Then do
#brew tap homebrew/dupes
#brew install rsync

arch -x86_64 brew doctor --verbose

arch -x86_64 brew cleanup
# arch -x86_64 brew cask cleanup # doesnt seem to work anymore (I suppose the cask thing is now working with the regular syntax)
