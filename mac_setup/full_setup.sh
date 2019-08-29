
#!/bin/bash
echo '================='
echo 'Installing Software and setting OS prefs'
echo '================='
chmod 700 *.sh



./install_brew.sh
./install_app_store.sh
./install_os.sh

#install and configure Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp /Users/juliusbusecke/Work/DATA_MANAGEMENT/dotfiles/zshrc_julius ~/.zshrc

# Set up dotfiles on new system (Maybe I could automate this depending on host?)
mv ~/.zshrc ~/.zshrc.jbackup
ln -sf ../dotfiles/zshrc_julius ~/.zshrc

mv ~/.ssh/config  ~/.ssh/config.jbackup
ln -sf ../dotfiles/ssh_config/config ~/.ssh/config

./install_conda.sh
#./install_timemachine.sh # deactivate because of that funky shit happening...

# fill in the condarc jupyterrc and daskrc (matplotlib?)
