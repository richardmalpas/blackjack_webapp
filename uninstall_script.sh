#!/bin/bash
sudo systemctl stop nginx
sudo pip3 uninstall -r requirements.txt -y
deactivate
sudo rm -r blackjack_webapp
echo "Uninstallation completed successfully"