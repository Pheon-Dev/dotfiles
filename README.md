# arch installation
```bash
# network connection 
rfkill unblock wlan
iwctl
 - device list show
 - station wlan0 scan
 - station wlan0 connect <essid>
 - quit
```
# format disk
```bash
gdisk /dev/sdx
  - x
  - z
  - y
  - y
```
# updates
```bash
pacman-key --init
pcaman-key --populate archlinux
pacman -Syyu archinstall
# installation 
# unplug usb
archinstall
  - uk keyboard 
  - mirrors
  - select disk
  - btrfs
  - grub
  - minimal server
  - install git sudo neovim
  - NetworkManager

```
# post install
```bash
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
```
# package managers
## install yay
```bash
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

yay -Syu eza starship zoxide z zen-browser-bin \
zsh git neovim yazi alacritty fzf flameshot \
aria2c youtube-dl mpv lazygit xdg-utils wireless_tools gum \
glow bat npm yarn unzip fd acpi toipe feh neofetch btop powertop \
pass ripgrep docker docker-compose jq greetd greetd-tuigreet \
tldr atuin dust brightnessctl pulsemixer xorg-xsetroot upower \
yt-dlp poppler 7-Zip ImageMagick ffmpegthumbnailer \
gimp

# bash/zsh/etc
bash <(curl --proto '=https' --tlsv1.2 -sSf https://setup.atuin.sh)

atuin register -u <USERNAME> -e <EMAIL>
atuin import auto
atuin sync

sudo chsh -s $(which zsh)

```
# login manager
```bash
sudo nvim /etc/greetd/config.toml
command = "tuigreet -r --cmd Hyprland or startx"
sudo systemctl enable greetd.service

```
# fonts
```bash
cd /usr/share/fonts/
git clone https://github.com/Pheon-Dev/fonts.git
cd fonts
mv TTF/* /usr/share/fonts
# https://github.com/androlabs/emoji-archlinux
# yay -Syu ttf-maple ttf-fira-code noto-fonts-emoji

```
# firefox or zen browser
```bash
# about:profiles
# about:configs
# browser.compactmode.show true
# toolkit.legacyUserProfileCustomizations.stylesheets true
# browser.urlbar.resultMenu.keyboardAccessible false
cd $HOME/.mozilla/firefox/---.default-release
git clone https://github.com/Pheon-Dev/userChrome.css.git
mv userChrome.css chrome

```
# bluetooth
```bash
rfkill unblock bluetooth
yay -Syu bluez-utils bluez
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

```
# brew
```bash
/bin/bash/ -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install gh broot
brew upgrade

```
# tlp
```bash
yay -Syu tlp
tlp.service enable
sudo systemctl enable tlp.service
sudo systemctl start tlp.service
sudo nvim /etc/tlp.conf
sudo tlp start
sudo tlp-stat -c
sudo tlp-stat -b
# Failed to start load kernel modules after installing some modules e.g tlp_smapi
sudo systemctl status systemd-modules-load

```
# Touchpad
```bash
sudo nvim /etc/X11/xorg.conf.d/30-touchpad.conf
Section "InputClass"
	Identifier "touchpad catchall"
	Driver "libinput"
	Option "Tapping" "on"
EndSection

python-validity
util-linux (fstrim)
powertop
httpie
curlie
slock
radion
falion
nyaa-tui
superfile
serpl

```
# password manager

### pwd migration ###
#### old machine ####
```bash
pass-push
mkdir ~/exported-keys
cd ~/exported-keys
gpg-pub-out # gpg --output public.pgp --armor --export devpheon@gmail.com
gpg-pvt-out # gpg --output private.pgp --armor --export-secret-key devpheon@gmail.com
#### new machine ####
gh repo clone Pheon-Dev/pwd-store .password-store
#### copy exported keys directory from old machine ####
cp -r /mnt/path/exported-keys ~/
cd ~/exported-keys
gpg-pvt-import # gpg --import private.pgp
gpg-pub-import # gpg --import public.pgp

# if unusable public key error:
gpg --list-key
echo "pub-key:6:" | gpg --import-ownertrust

```
# enable scroll firefox

#### Edit /etc/security/pam_env.conf and add this line:

```bash
     MOZ_USE_XINPUT2 DEFAULT=1
```
#### Log out and in again

# Update Thunderbolt firmware for T480(s)
https://wiki.archlinux.org/title/fwupd
