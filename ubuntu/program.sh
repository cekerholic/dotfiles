# Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install -y google-chrome-stable

# Slack
wget https://slack-ssb-updates.global.ssl.fastly.net/linux_releases/slack-desktop-1.2.5-amd64.deb
sudo dpkg -i slack-desktop-1.2.5-amd64.deb
rm slack-desktop-1.2.5-amd64.deb

# Tweak tools
sudo apt-get install -y unity-tweak-tool gnome-tweak-tool

# Theme and Icons
sudo add-apt-repository -y ppa:noobslab/themes
sudo apt-get update
sudo apt-get install -y libra-theme
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install -y numix-icon-theme numix-icon-theme-circle

# Variety wallpaper changer
sudo add-apt-repository -y ppa:peterlevi/ppa
sudo apt-get update
sudo apt-get install -y variety

# htop
sudo apt-get install -y htop

# Dropbox
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo add-apt-repository -y "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
sudo apt-get update && sudo apt-get install -y dropbox && sudo apt-get install -y nautilus-dropbox

# dconf CLI
sudo apt-get install -y dconf-cli
