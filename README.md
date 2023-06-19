```bash
# arch installation
rfkill unblock wlan
iwctl
 - device list show
 - station wlan0 scan
 - station wlan0 connect <essid>
 - quit 
gdisk /dev/sdx
  - x
  - z
  - x
  - z
  - y
  - y
pacman-key --init
pcaman-key --populate archlinux
pacman -Sy
# unplug usb
archinstall
  - us/uk
  - mirrors
  - select disk
  - btrfs
  - grub
  - minimal server
  - install git sudo neovim
  - NetworkManager

# post install
sudo pacman -Syu base-devel xorg-xinit xorg-server libx11 libxinerama libxft webkit2gtk
cd .config
suckless=$(dwm | st | dmenu)
git clone https://github.com/Pheon-Dev/$suckless.git
cd $suckless
sudo make clean install

cd && touch .xinitrc .zprofile
echo "exec dwm" > ~/.xinitrc
echo "startx" > ~/.bash_profile
cp ~/.bash_profile ~/.zprofile # s/bashrc/zshrc/g

others=$(nvim | zellij | starship | rofi | zsh | picom | alacritty | lazygit )
git clone https://github.com/Pheon-Dev/$others.git
 
exit
reboot

# install yay
nmcli dev wifi list
nmcli dev wifi connect "essid" password "*******"
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo git clone https://aur.archlinux.org/snapd.git
sudo chown -R user:user yay-git
sudo chown -R user:user snapd
cd yay-git && makepkg -si
cd -
cd snapd && makepkg -si

yay -Syu rustup rustc
rustup default nightly

yay -Syu exa starship zoxide z firefox ttf-nerd-fonts-symbols* ttf-meslo-nerd \
zsh git neovim zellij picom rofi joshuto alacritty fzf flameshot \
aria2c youtube-dl mpv lazygit ly xdg-utils wireless_tools gum \
glow bat npm yarn unzip fd acpi toipe nitrogen neofetch btop \
pass ripgrep docker docker-compose 

sudo chsh -s $(which zsh)

# login manager
sudo nvim /etc/ly/config.ini
- save true
sudo systemctl enable ly.service
sudo nvim /lib/systemd/system/ly.service
sudo systemctl restart ly.service

# fonts
cd /usr/share/fonts/
git clone https://github.com/Pheon-Dev/fonts.git
cd fonts
mv TTF/* /usr/share/fonts

# firefox
# about:profiles
# about:configs
# /compact true
# /legacy true
cd $HOME/.mozilla/firefox/---.default-release
git clone https://github.com/Pheon-Dev/userChrome.css.git
mv userChrome.css chrome

# brew
/bin/bash/ -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install gh
brew upgrade
```
