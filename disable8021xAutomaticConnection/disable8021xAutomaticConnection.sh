#!/bin/sh

DesiredValue=0
CurrentValue=`/usr/bin/defaults -currentHost read com.apple.network.eapolcontrol EthernetAutoConnect 2>/dev/null`

if [ "$?" -ne "0" ] || [ "$DesiredValue" -ne "$CurrentValue" ]; then
	/usr/bin/defaults -currentHost write com.apple.network.eapolcontrol EthernetAutoConnect -bool "false"
fi
exit 0