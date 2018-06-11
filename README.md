# How to setup a RaspberryPi
This README contains all the steps and FAQ to get to the point where one can connect via ssh to the RaspberryPi and start playing with it.


## Setup
1. install raspbian
2. upgrade and restart:
    ``` sh
    sudo apt update; sudo apt dist-upgrade; sudo apt upgrade; sudo rpi-update; sudo init 6
    ```
3. Activate ssh in the raspberryPi config
    ``` sh
    sudo raspi config
    ```
4. Change your password
    ``` sh
    sudo passwd
    ```
5. install a vnc server to be able to connect to a GUI
    ``` sh
    sudo apt install tightvncserver
    ```
6. store script "./scripts/vnc.sh" somewhere on Rasperrypi.
7. setup static ip in /etc/network/interfaces. See "./configs/interfaces".
8. setup wlan in /etc/wpa_supplicant/wpa_supplicant.conf. See gist https://gist.github.com/wtjerry 
9. follow https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/ to create ssh keys. Then to install the ssh public key:
    ``` sh
    ssh-copy-id -i /path/to/ssh_pub_key user@host
    ```


## helpful commands
| command | what is it used for |
| --- | --- |
| ssh user@host | ssh connection |
| scp user@host:/path/to/file ./local/path/to/file | copy over ssh |
| sftp | ftp over ssh |
| service networking restart | restarts network service, usefull after interface changes etc. |
| nmap -sP 192.168.1.0/24 | to search for hosts that are up in that subnet |
| sudo arp-scan --interface=wlan --localnet \| grep b8:27:eb | to search all raspberryPi's for a given interface |


## FAQ
1. I can't connect to my pi over wlan
  >Connect via lan and check if the pi system time is out of sync and set it accordingly with 'date --set='
