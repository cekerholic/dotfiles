# Install nodejs
curl -sL https://deb.nodesource.com/setup_4.x | sudo bash -
sudo apt-get install -y nodejs
mkdir "${HOME}/.npm-packages"
printf '%s\n' 'NPM_PACKAGES="${HOME}/.npm-packages"' 'NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"' 'PATH="$NPM_PACKAGES/bin:$PATH"' 'unset MANPATH' 'MANPATH="$NPM_PACKAGES/share/man:$(manpath)"' >> $PWD/.zshrc
ln -sfn $PWD/.npmrc ~/.npmrc

# Install rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $PWD/.zshrc
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
sudo apt-get install -y autoconf bison libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
echo 'eval "$(rbenv init -)"' >> $PWD/.zshrc

# Install sublime text 3
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer
sudo sed -i 's/gedit.desktop/sublime_text.desktop/g' /etc/gnome/defaults.list
curl https://sublime.wbond.net/Package%20Control.sublime-package -o ~/.config/sublime-text-3/Installed\ Packages/Package\ Control.sublime-package
ln -sfn $PWD/st3/preferences ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
ln -sfn $PWD/st3/packages ~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings
ln -sfn $PWD/.editorconfig ~/.editorconfig

# Hack fonts
wget https://github.com/chrissimpkins/Hack/releases/download/v2.018/Hack-v2_018-ttf.zip
mkdir -p ~/.fonts/
unzip Hack-v2_018-ttf.zip -d ~/.fonts
sudo fc-cache -vf ~/.fonts/
rm Hack-v2_018-ttf.zip

# pip
sudo apt-get install -y python-pip --force-yes

# powerline
pip install --user git+git://github.com/powerline/powerline
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mv PowerlineSymbols.otf ~/.fonts/
sudo fc-cache -vf ~/.fonts/
mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
printf '%s\n' 'run-shell "powerline-daemon -q"' 'source "$HOME/.local/lib/python2.7/site-packages/powerline/bindings/tmux/powerline.conf"' >> ~/.tmux.conf
echo 'export PATH="$HOME/.local/bin:$PATH"' >> $PWD/.zshrc

# Install essentials programs (chrome, htop, etc.)
sh ~/.dotfiles/program.sh
