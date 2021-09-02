# blackjack_webapp

To run your own instance


1).   Clone to your linux server using:
      git clone https://github.com/richardmalpas/blackjack_webapp.git
      
      master version is using Ubuntu 20.04.2 LTS

2).   then use the following command to setup a virtual environment and install the required dependencies:
      source ./activate

3).   Run the flask app.py using the command:
      sudo flask run --host=0.0.0.0 --port=80
      
4).   You can access the game using your servers external IP address from a browser, if you want to forward your own domain name
      then add the servers external IP address to your domain dns A records under www and the record without a name.
