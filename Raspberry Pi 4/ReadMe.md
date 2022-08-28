# Configuration for raspberry pi with ubuntu budgie 
1. RDP

sudo apt-get install xrdp

sudo gedit /etc/xrdp/startwm.sh

Add /usr/bin/budgie-desktop to the end of the line that starts with test -x. The finished line should match the following:

test -x /etc/X11/Xsession && exec /etc/X11/Xsession /usr/bin/budgie-desktop

2. Create a new user for rdp manually:

sudo passwd username

4. WIFI issue: create a pkla file under /etc/polkit-1/localauthority/50-local-d

File name: 47-allow-wifi-scans.pkla

File content:

[Allow Wifi Scan]
Identity=unix-user:*
Action=org.freedesktop.NetworkManager.wifi.scan;org.freedesktop.NetworkManager.enable-disable-wifi;org.freedesktop.NetworkManager.settings.modify.own;org.freedesktop.NetworkManager.settings.modify.syste>
ResultAny=yes
ResultInactive=yes
ResultActive=yes

RESTART THE SYSTEM

# Commands

groups user_name

id username

usermod -a -G examplegroup exampleusername

sudo apt-get install samba

smbpasswd -a user_name

Add samba account and password:

sudo smbpasswd -a user_name_here

sudo service smbd restart

Enable root login GUI:

sudo passwd root

sudo passwd -u root

temp:

vcgencmd measure_temp

watch -n 2 "vcgencmd measure_temp"

change screen res for teamviewer:

#uncomment to force a console size. By default it will be display's size minus

#overscan.

framebuffer_width=1440

framebuffer_height=900

network scanner:
sudo apt-get install arp-scan

sudo arp-scan -l #Scans the local network

sudo arp-scan 192.168.1.0/24 #Scans 192.168.1.0 255.255.255.0

sudo arp-scan 192.168.1.1-192.168.1.254 #Scans the obvious range

-----Commands------

1. sudo nautilus - opens folder as root
2. sudo pcmanfm - opens folder as root
3. sudo apt-get install synaptic
4. cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
5. watch -n 2 "vcgencmd measure_temp"
6. sudo arp-scan -l
7. sudo pcmanfm
8. sudo leafpad /boot/config.txt
9. sudo apt-get install midori
10. sudo apt-get install gnome-disk-utility
11. https://pkgs.org/download/unrar
12. https://osdn.net/dl/peazip/pea-gtk2-arm.tar.gz (portable)

# Overclock

cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq

WORKS:

Overclock Raspberry Pi 2.0ghz

over_voltage=4

arm_freq=2140

gpu_freq=650

WORKS:

Overclock Raspberry Pi 2.35ghz

over_voltage=14

arm_freq=2350

gpu_freq=650
