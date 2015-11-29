# dotfiles

These are my personal dotfiles, used to set-up my Ubuntu machine.

## Features

### Development Programs
- tmux (with powerline)
- zsh (with oh-my-zsh)
- node.js (v. 4.x.x)
  + browser-sync
  + gulp
  + bower
  + npm-check-updates
  + http-server
- ruby (using rbenv)
- sublime text 3 (including essentials plugins)

### Essentials Programs
- Google Chrome
- Slack
- Gnome Tweak Tool
- Themes (numix)
- Variety (wallpaper changer)
- htop

<hr>

## Installation
- `git clone https://github.com/cekerholic/dotfiles.git ~/.dotfiles`
- Run `sh ~/.dotfiles/init.sh`, system will reboot
- Run `sh ~/.dotfiles/install.sh`, restart terminal
- Run `sh ~/.dotfiles/post-install.sh`

PS: To set `tmux` as default terminal, open `Edit - Profile Preferences - Title and Commands`, check  `Run a custom command instead of my shell`. Then type `tmux` on `Custom command` field.
