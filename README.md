# my-backups
my test at backing up my dotfiles

```
sudo apt install libx11-dev libxft-dev libext-dev curl python3-pip git imagemagick zsh i3 i3blocks dmenu ranger neovim qutebrowser wireless-tools
echo "alias backup='/usr/bin/git --git-dir=/home/lappy486/mydotfiles.git/ --work-tree=/home/lappy486'" > .zshrc
echo "mydotfiles.git" >> .gitignore
git clone --bare https://github.com/corlesss/mydotfiles
alias backup='/usr/bin/git --git-dir=/home/lappy486/mydotfiles.git/ --work-tree=/home/lappy486'
backup checkout
backup config --local status.showUntrackedFiles no
sudo cp /sbin/iwgetid /usr/local/bin
git clone https://git.suckless.org/st
sudo pip3 install pywal
cd st
sudo make clean install
cd ~
wal -i .config/wallpapers/bokeh_fence.jpg
echo "wal -R \nexec i3" > ~/.xinitrc
```

# manual setup
- Change /usr/bin/i3-sensible-terminal

# font config
### enable bitmap fonts
```
cd /etc/fonts/conf.d/
sudo rm -rf 70-no-bitmaps.conf && sudo ln -s ../conf.avail/70-yes-bitmaps.conf .
sudo dpkg-reconfigure fontconfig
```
now copy font to .fonts
```
cd .fonts/[font]
sudo mkfontdir
xset fp+ ~/.fonts/[font]
fc-cache -fv
```
