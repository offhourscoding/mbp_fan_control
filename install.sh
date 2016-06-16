#!/bin/bash

sudo cp ./mbp_fan_control.service /usr/lib/systemd/system/
sudo cp ./mbp_fan_control.timer /usr/lib/systemd/system/
sudo cp ./mbp_fan_control /usr/local/bin/mbp_fan_control

sudo systemctl daemon-reload

sudo systemctl start mbp_fan_control.timer
sudo systemctl enable mbp_fan_control.timer
