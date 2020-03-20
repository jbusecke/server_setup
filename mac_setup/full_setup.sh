
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

# Set up dotfiles on new system (Maybe I could automate this depending on host?)
mv ~/.zshrc ~/.zshrc.jbackup
ln -sf ../dotfiles/zshrc_julius ~/.zshrc

mv ~/.ssh/config  ~/.ssh/config.jbackup
ln -sf ../dotfiles/ssh_config/config ~/.ssh/config

# fill in the condarc jupyterrc and daskrc (matplotlib?)

# aliases
mv ~/.aliases  ~/.aliases.jbackup
ln -sf ../alias_files/local_aliases ~/.aliases


./install_conda.sh
#./install_timemachine.sh # deactivate because of that funky shit happening...
