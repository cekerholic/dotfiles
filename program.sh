# Slack
wget https://slack-ssb-updates.global.ssl.fastly.net/linux_releases/slack-desktop-1.2.5-amd64.deb
sudo dpkg -i slack-desktop-1.2.5-amd64.deb
rm slack-desktop-1.2.5-amd64.deb

# Tweak tools
sudo apt-get install -y unity-tweak-tool gnome-tweak-tool

# Theme and Icons
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install -y libra-theme
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install -y numix-icon-theme numix-icon-theme-circle

# Variety wallpaper changer
sudo add-apt-repository ppa:peterlevi/ppa
sudo apt-get update
sudo apt-get install -y variety

# htop
sudo apt-get install -y htop

