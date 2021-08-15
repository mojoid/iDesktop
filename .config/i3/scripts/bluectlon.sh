#!/bin/bash

bluetoothctl <<EOF
power on &&
EOF
pulseaudio --kill && pulseaudio --start &&
bluetoothctl <<EOF
agent on &&
default-agent && 
connect E3:A5:80:F2:1D:7F && 
EOF

