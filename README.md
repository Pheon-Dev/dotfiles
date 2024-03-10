# arch installation
```bash
rfkill unblock wlan
iwctl
 - device list show
 - station wlan0 scan
 - station wlan0 connect <essid>
 - quit
gdisk /dev/sdx
  - x
  - z
  - y
  - y
pacman-key --init
pcaman-key --populate archlinux
pacman -Syyu archinstall
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

others=$(nvim |starship | rofi | zsh | alacritty | lazygit )
git clone https://github.com/Pheon-Dev/$others.git

exit
reboot
# chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
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
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

yay -Syu rustup rustc
rustup default nightly
cargo install kanata

yay -Syu eza starship zoxide z firefox all-repository-fonts \
zsh git neovim lf alacritty fzf flameshot \
aria2c youtube-dl mpv lazygit ly xdg-utils wireless_tools gum \
glow bat npm yarn unzip fd acpi toipe feh neofetch btop powertop \
pass ripgrep docker docker-compose jq greetd greetd-tuigreet \
tldr atuin dust chezmoi

# bash/zsh/etc
bash <(curl --proto '=https' --tlsv1.2 -sSf https://setup.atuin.sh)

atuin register -u <USERNAME> -e <EMAIL>
atuin import auto
atuin sync

sudo chsh -s $(which zsh)

# login manager
sudo nvim /etc/greetd/config.toml
command = "tuigreet -r --cmd Hyprland or startx"
sudo systemctl enable greetd.service

# fonts
cd /usr/share/fonts/
git clone https://github.com/Pheon-Dev/fonts.git
cd fonts
mv TTF/* /usr/share/fonts
# https://github.com/androlabs/emoji-archlinux
# yay -Syu noto-fonts-emoji

# firefox
# about:profiles
# about:configs
# /compact true
# /legacy true
cd $HOME/.mozilla/firefox/---.default-release
git clone https://github.com/Pheon-Dev/userChrome.css.git
mv userChrome.css chrome

# install yay
rfkill unblock bluetooth
yay -Syu bluez-utils bluez
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

# brew
/bin/bash/ -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install gh broot
brew upgrade

python-validity
util-linux (fstrim)
powertop
httpie
curlie
slock

```
# Update Thunderbolt firmware for T480(s)
https://wiki.archlinux.org/title/fwupd
