# Install nodejs
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
mkdir "${HOME}/.npm-packages"
printf '%s\n' 'NPM_PACKAGES="${HOME}/.npm-packages"' 'NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"' 'PATH="$NPM_PACKAGES/bin:$PATH"''unset MANPATH' 'MANPATH="$NPM_PACKAGES/share/man:$(manpath)"' >> ~/.zshrc
rm ~/.npmrc
ln -sfn ~/.dotfiles/.npmrc ~/.npmrc
npm install -g browser-sync gulp bower npm-check-updates http-server

# Install rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
sudo apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc
rbenv install 2.2.2
rbenv global 2.2.2
gem install middleman

# Install sublime text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer
sudo sed -i 's/gedit.desktop/sublime_text.desktop/g' /usr/share/applications/defaults.list
ln -sfn ~/.dotfiles/st3/preferences ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
ln -sfn ~/.dotfiles/st3/packages ~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings
curl https://sublime.wbond.net/Package%20Control.sublime-package -o ~/.config/sublime-text-3/Installed\ Packages/Package\ Control.sublime-package

# pip
sudo apt-get install -y python-pip --force-yes

# powerline
pip install --user git+git://github.com/powerline/powerline
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/
mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts/
mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
printf '%s\n' 'run-shell "powerline-daemon -q"' 'source "{repository_root}/powerline/bindings/tmux/powerline.conf"' >> ~/.tmux.conf
tmux source-file ~/.tmux.conf

# Symlink everything
ln -sfn ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -sfn ~/.dotfiles/git/.gitignore ~/.gitignore
ln -sfn ~/.dotfiles/.tmux.conf ~/.tmux.conf

sh ~/.dotfiles/program.sh
