# my-backups
my test at backing up my dotfiles

Based on: https://www.atlassian.com/git/tutorials/dotfiles

```
sudo apt install xinit x-server-utils libx11-dev libxft-dev libxext-dev curl python3-pip git imagemagick zsh i3 i3blocks dmenu ranger neovim qutebrowser wireless-tools feh rxvt-unicode-256color
chsh -s $(which zsh)
echo "alias backup='/usr/bin/git --git-dir=/home/$USER/mydotfiles.git/ --work-tree=/home/$USER'" > .zshrc
echo "mydotfiles.git" >> .gitignore
git clone --bare https://github.com/corlesss/mydotfiles
alias backup='/usr/bin/git --git-dir=/home/lappy486/mydotfiles.git/ --work-tree=/home/lappy486'
backup checkout
backup config --local status.showUntrackedFiles no
sudo cp /sbin/iwgetid /usr/local/bin
sudo pip3 install pywal
wal -i .config/wallpapers/bokeh_fence.jpg
echo "wal -R \nexec i3" > ~/.xinitrc
```

# manual setup
- Change /usr/bin/i3-sensible-terminal
- run nvim :PlugInstall

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
