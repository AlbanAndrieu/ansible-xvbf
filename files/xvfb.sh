#!/bin/sh
# {{ ansible_managed }}
# chkconfig: 235 99 10
# description: Start or stop the Xvbf server
#
### BEGIN INIT INFO
# Provides: xvbf
# Required-Start: $network $syslog
# Required-Stop: $network
# Default-Start: 2 3 5
# Default-Stop: 0 1 6
# Description: Start or stop the Xvbf server
### END INIT INFO

if [ -z "$1" ]; then
  echo "`basename $0` {start|stop}"
  exit
fi

case "$1" in
start)
  /usr/bin/Xvfb :99 -ac -screen 0 1024x768x8 &
;;
stop)
  killall Xvfb
;;
esac
