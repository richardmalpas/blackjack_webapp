# blackjack_webapp

To run your own instance (master version is using Ubuntu 20.04.2 LTS)  Access my instance on: https://hartley-electricians.co.uk


1).   Clone to your linux server using: 
      
      git clone https://github.com/richardmalpas/blackjack_webapp.git

2).   then use the following command to setup a virtual environment, install the required dependencies and create the required config files:
      
      source ./blackjack_webapp/activate

3).   When prompted at the terminal, enter either the servers external ip address or if available enter a valid domain address, e.g.
     
      your-domain.com

4).   Access the game using your external IP address / domain address
      
      Where using your own domain, then add the servers external IP address to your domain dns A records under www and the record without a name.

      I would recommend that you also setup SSH access, setup a firewall to block all incoming and outging ports except for port 22 for ssh and port 80 for the webserver, remove permit root login and also remove password authentication from /etc/ssh/sshd_config

5).   Uninstall by using the following command:

      bash uninstall_script.sh


Rules:

This is a simplified version of casino Blackjack.  The player and the dealer start with a hand of 2 cards.  The aim for the player is to finish with either a higher score than the dealer that is not above 21 or beat the dealers score with a non busted hand of 5 cards, a "5 Card Trick".  The player draws additional cards infront of the dealer and therefore has a higher chance of busting out first. The player can choose to "Hit" (draw another card) or "Stick" (declare that you don't want any further cards in this round).  If the player "Sticks" before the dealer does, the dealer may continue to draw further cards until either bust or has a higher score than the player. 



How the program works:

The program uses client side session variables to store the states of variable between get and post requests, the session variables are stored client side as a encrypted browswer cookie, the player objects are pickled to binary raw data before being stored as session variables and then unpickled at time of the next callback.