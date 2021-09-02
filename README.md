# blackjack_webapp

To run your own instance


1).   Clone to your linux server using:
      git clone https://github.com/richardmalpas/blackjack_webapp.git
      
      master version is using Ubuntu 20.04.2 LTS

2).   Move into the working directory:
      cd blackjack_webapp

3).   then use the following command to setup a virtual environment and install the required dependencies:
      source ./activate

4).   When prompted at the terminal, enter either the servers external ip address or if available enter a valid domain address, e.g.
      http://www.your-domain.com

4).   Run the flask app.py using the command:
      sudo flask run --host=0.0.0.0 --port=80
      
5).   You can access the game using your servers external IP address from a browser, if you want to forward your own domain name
      then add the servers external IP address to your domain dns A records under www and the record without a name.



      I would recommend that you also setup SSH access, setup a firewall to block all incoming and outging ports except for port 22 for ssh and port 80 for the webserver, remove permit root login and also remove password authentication from /etc/ssh/sshd_config
