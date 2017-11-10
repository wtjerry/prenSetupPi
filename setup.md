1. install raspbian
2. sudo apt update; sudo apt dist-upgrade; sudo apt upgrade; sudo rpi-update; sudo init 6
3. sudo raspi config # and activate ssh
4. sudo passwd # to change your password
5. sudo apt install tightvncserver
6. store script "./scripts/vnc.sh" somewhere on server.
7. setup static ip in /etc/network/interfaces. see "./configs/interfaces".
8. setup hslu wlan in /etc/wpa_supplicant/wpa_supplicant.conf. see gist "Raspberry WLAN HSLU".
9. follow https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/ to create ssh keys. Then use ssh-copy-id -i /path/to/ssh_pub_key user@host to install the ssh public key.
10. build / copy openCV3

