sudo apt-get update

# Install tmux
git clone https://github.com/tmux/tmux.git ~/tmux
cd ~/tmux
sh autogen.sh
./configure && make

# Install zsh
sudo apt-get install zsh

# Install oh-my-zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
ln -s ~/.dotfiles/.zshrc ~/.zshrc

chsh -s 'which zsh'

sudo shutdown -r 0
