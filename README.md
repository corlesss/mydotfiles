# my-backups
my test at backing up my dotfiles

Based on: https://www.atlassian.com/git/tutorials/dotfiles

```
sudo apt install locale xinit x-server-utils libx11-dev libxft-dev libxext-dev curl python3-pip git imagemagick zsh i3 i3blocks dmenu ranger neovim qutebrowser wireless-tools feh rxvt-unicode-256color
sudo cp /sbin/iwgetid /usr/local/bin
sudo pip3 install pywal
echo "wal -R \nexec i3" > ~/.xinitrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
echo "alias backup='/usr/bin/git --git-dir=/home/$USER/mydotfiles.git/ --work-tree=/home/$USER'" >> .zshrc
echo "mydotfiles.git" >> .gitignore
git clone --bare https://github.com/corlesss/mydotfiles
alias backup='/usr/bin/git --git-dir=/home/$USER/mydotfiles.git/ --work-tree=/home/$USER'
backup fetch
backup reset --hard master
backup config --local status.showUntrackedFiles no
wal -i .config/wallpapers/bokeh_fence.jpg
sudo dpkg-reconfigure locale
```

# manual setup
- Change /usr/bin/i3-sensible-terminal
- run nvim :PlugInstall
- If no audio then run command
`cp ~/11-cras.conf /etc/alsa/conf.d/10-cras.conf`

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
