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
envsubst < setup_supervisor.conf > supervisor.conf
sudo apt install nginx -y
sudo rm /etc/nginx/sites-enabled/default
sudo cp ~/blackjack_webapp/nginx.conf /etc/nginx/sites-enabled/blackjack_webapp
sudo systemctl restart nginx
sudo apt install supervisor -y
sudo cp ~/blackjack_webapp/supervisor.conf /etc/supervisor/conf.d/blackjack_webapp.conf
sudo mkdir -p /var/log/blackjack_webapp
sudo touch /var/log/blackjack_web.err.log
sudo touch /var/log/blackjack_web.out.log
sudo fuser -k 8000/tcp
sudo supervisorctl reload