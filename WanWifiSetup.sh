#!/bin/bash

cat >> /etc/network/interfaces << EOT
allow-hotplug wlan0
iface wlan0 inet manual
    wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
EOT

cat >> /etc/wpa_supplicant/wpa_supplicant.conf << EOT
country=GB
network={
  ssid="Shreyas"
  psk="shreyasp101"
}
EOT
