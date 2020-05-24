#!/bin/bash

#
# Trim SSD 
#
echo ''
echo 'Configuring SSD Trimming'
echo ''

TRIM_SCRIPT=/etc/cron.daily/trim

if [ ! -f "$TRIM_SCRIPT" ]; then
    sudo touch $TRIM_SCRIPT
    sudo echo '#!/bin/sh' >> $TRIM_SCRIPT
    sudo echo 'LOG=/var/log/trim.log' >> $TRIM_SCRIPT
    sudo echo 'echo "*** $(date -R) ***" >> $LOG' >> $TRIM_SCRIPT
    sudo echo 'fstrim -v / >> $LOG' >> $TRIM_SCRIPT
    sudo echo 'fstrim -v /home >> $LOG' >> $TRIM_SCRIPT
fi

sudo chmod +x $TRIM_SCRIPT

echo "Content from file: $TRIM_SCRIPT"
cat $TRIM_SCRIPT
echo "file configuration:"
ls -lh $TRIM_SCRIPT
echo ''
echo '---------------------------------------------------------'


#
# Disable ipv-6
#
echo ''
echo 'Configuring ipv6'
echo ''

SYSCTL_FILE=/etc/sysctl.conf

IPV6_STATUS=$(</proc/sys/net/ipv6/conf/all/disable_ipv6)
echo "disable_ipv6 value: $IPV6_STATUS"

if [ "0" == "$IPV6_STATUS" ]; then
    echo "ipv6 is enable, disabling it"
    sudo echo 'net.ipv6.conf.all.disable_ipv6 = 1' >> $SYSCTL_FILE
    sudo echo 'net.ipv6.conf.default.disable_ipv6 = 1' >> $SYSCTL_FILE
    sudo echo 'net.ipv6.conf.lo.disable_ipv6 = 1' >> $SYSCTL_FILE
    sudo sysctl -p
else
    echo "\tipv6 is disabled"    
fi
echo ''
echo '---------------------------------------------------------'


#
# VPN Configuration
#
sudo ./pure-vpn.sh

echo ''
echo '---------------------------------------------------------'

