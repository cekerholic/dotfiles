sudo apt-get update

# Install tmux
sudo apt-get install -y python-software-properties software-properties-common
sudo add-apt-repository -y ppa:pi-rho/dev
sudo apt-get update
sudo apt-get install -y tmux
ln -sfn $PWD/.tmux.conf ~/.tmux.conf

# essentials
sudo apt-get install -y build-essential libssl-dev curl

# git
sudo apt-get install -y git
sudo apt-get install -y gitk
ln -sfn $PWD/git/.gitconfig ~/.gitconfig
ln -sfn $PWD/git/.gitignore ~/.gitignore

# Install zsh
sudo apt-get install -y zsh

# Install oh-my-zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
rm ~/.zshrc
ln -sfn $PWD/.zshrc ~/.zshrc

# Set zsh as default
chsh -s $(which zsh)

# Restart
sudo shutdown -r 0
