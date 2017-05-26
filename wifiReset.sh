#!/bin/bash
device=$(networksetup -listnetworkserviceorder | grep "Wi-Fi, Device: " |cut -c32-34)
echo "Turning off the wifi with command 'networksetup -setairportpower ${device} off'"
networksetup -setairportpower ${device} off
echo "Turning on the wifi with command 'networksetup -setairportpower ${device} on'"
networksetup -setairportpower ${device} on
echo "Wifi has been reset"

