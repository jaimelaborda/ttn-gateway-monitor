#!/bin/sh
ttnctl user login ${TTN_KEY}
echo "*/${MONITOR_TIMEOUT}     *       *       *       *       sh /monitor.sh" >> /var/spool/cron/crontabs/root
crond -f
