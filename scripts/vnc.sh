#! /bin/sh

case "$1" in 
start)
  echo "VNC is starting"
  /usr/bin/vncserver :1 -geometry 1280x720 -depth 24 -dpi 96
;;
stop)
  echo "VNC is stopping"
  /usr/bin/vncserver -kill :1
;;
*)
  echo "usage: vnc.sh {start|stop}"
  exit 1
;;
esac

exit 0

