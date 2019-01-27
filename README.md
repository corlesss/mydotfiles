# my-backups
my test at backing up my dotfiles

```
sudo apt install i3 i3blocks ranger neovim python3-pip imagemagick qutebrowser git libx11-dev libxft-dev libext-dev curl
sudo pip3 install pywal
git clone https://github.com/corlesss/my-backups
cd my-backups/st
sudo make clean install
cd ~
wal -i .config/wallpapers/wallhaven-455682.jpg
echo "wal -R" > ~/.xinitrc
echo "exec i3" > ~/.xinitrc
```

# manual setup
- Pull dotfiles from git (corlesss/my-backups)
- Change /usr/bin/i3-sensible-terminal
- add this next line to .bashrc;
- alias backup='/usr/bin/git --git-dir=/home/lappy486/git-backup/ --work-tree=/home/lappy486'
