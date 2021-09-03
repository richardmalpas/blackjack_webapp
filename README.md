# blackjack_webapp

To run your own instance (master version is using Ubuntu 20.04.2 LTS)


1).   Clone to your linux server using: 
      
      git clone https://github.com/richardmalpas/blackjack_webapp.git

2).   then use the following command to setup a virtual environment, install the required dependencies and create the required config files:
      
      source ./blackjack_webapp/activate

3).   When prompted at the terminal, enter either the servers external ip address or if available enter a valid domain address, e.g.
     
      www.your-domain.com

4).   Access the game using your external IP address / domain address
      
      Where using your own domain, then add the servers external IP address to your domain dns A records under www and the record without a name.

      I would recommend that you also setup SSH access, setup a firewall to block all incoming and outging ports except for port 22 for ssh and port 80 for the webserver, remove permit root login and also remove password authentication from /etc/ssh/sshd_config
