# my-backups
my test at backing up my dotfiles

```
sudo apt install libx11-dev libxft-dev libxext-dev python3-pip imagemagick curl i3 i3blocks ranger neovim feh qutebrowser git 
sudo pip3 install pywal
git clone https://github.com/corlesss/mydotfiles
cd mydotfiles/st
sudo make clean install
cd ~
wal -i .config/wallpapers/wallhaven-455682.jpg
echo "wal -R \n exec i3" > ~/.xinitrc
```

# manual setup
- Pull dotfiles from git (corlesss/my-backups)
- Change /usr/bin/i3-sensible-terminal
- add this next line to .bashrc;
- alias backup='/usr/bin/git --git-dir=/home/lappy486/git-backup/ --work-tree=/home/lappy486'
