#!/bin/bash

cat >> /etc/network/interfaces << EOT
allow-hotplug wlan0
iface wlan0 inet manual
    wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
EOT

cat >> /etc/wpa_supplicant/wpa_supplicant.conf << EOT
country=GB
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
network={
  ssid="Shreyas"
  psk="shreyasp101"
}
EOT
