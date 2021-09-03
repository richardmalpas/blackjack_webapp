#!/bin/bash
if [[ $EUID -ne 0 ]]; then
    :
   
else 
   echo "This script must not be run as root, please setup a new user and run the script again using the command, bash setup_script.sh" 
   exit 1
fi

read -p "Enter your server IP address or your Domain address: " IP_OR_DOMAIN
export IP_OR_DOMAIN
MY_USER=$(whoami)
export MY_USER
envsubst < setup_nginx.conf > nginx.conf
sudo apt install nginx -y
sudo apt install supervisor -y
sudo rm /etc/nginx/sites-enabled/default
sudo cp ~/blackjack_webapp/nginx.conf /etc/nginx/sites-enabled/blackjack_webapp
sudo systemctl restart nginx
gunicorn -w 3 app:app