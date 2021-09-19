#!/bin/bash
sudo systemctl stop nginx
sudo pip3 uninstall -r requirements.txt -y
sudo apt remove nginx -y
sudo apt remove snapd -y
sudo apt remove supervisor -y
deactivate venv
sudo rm -r ~/blackjack_webapp
echo "Uninstallation completed successfully"