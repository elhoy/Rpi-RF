#! /bin/sh
sudo apt update
sudo apt upgrade -q -y
echo "APT Updated. Reboot will be via cron schedule."
sudo date  > /var/log/apt_last_update.txt
