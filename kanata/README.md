# Changing uinput Device Permission

## Target: To change the /dev/uinput permission to allow non-root application to open/read/write the device file
### Creating A New Group: `uinput`

####  Add new group by following command
```bash
sudo groupdadd -f uinput
sudo gpasswd -a username uinput
```
#### Verify username has been added into uinput group
```bash
groups
```

### Creating New udev Rule

#### Create a new file name:
`/etc/udev/rules.d/99-input.rules`

#### Insert the following in the code
```bash
KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"
```

#### Machine reboot or run this to reload
```bash
sudo sh -c ‘udevadm control –-reload; udevadm trigger -v –name-match uinput’
```

#### Verify settings by following command:
```bash
ls -l /dev/uinput
```

#### Output:
```bash
crw-rw---- 1 root uinput /dev/uinput
```

## Add this to: `~/.config/systemd/user/kanata.service`
```
[Unit]
Description=Kanata keyboard remapper
Documentation=https://github.com/jtroo/kanata

[Service]
Environment=PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin
Environment=DISPLAY=:0
Environment=HOME=/home/pheon-dev
Type=simple
ExecStart=/home/pheon-dev/.cargo/bin/kanata --cfg /home/pheon-dev/.config/kanata/config.kbd
Restart=no

[Install]
WantedBy=default.target

```

### Then run:
```bash
systemctl --user daemon-reload
systemctl --user enable kanata.service
systemctl --user start kanata.service
```

### Then check if the service is running:
```bash
systemctl --user status kanata.service
```
