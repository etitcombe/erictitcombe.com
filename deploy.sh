#!/bin/bash

KEY=/home/etitcombe/.ssh/linode_rsa
RUSER=eric
RHOST=104.237.128.22

# Need to make sure the folder exists first
#sudo mkdir -p /srv/www/erictitcombe.com

# And set the user to the one who is going to be updating the files
#sudo chown eric /srv/www/erictitcombe.com

#cd /mnt/e/Users/Eric/Dev/GitHub/erictitcombe.com
cd /home/etitcombe/dev/erictitcombe.com

# rsync -avr -e "ssh -i $KEY" --exclude '.git/*' --exclude '.git*' ./ $RUSER@$RHOST:/srv/www/erictitcombe.com/
rsync -avr -e "ssh -i $KEY" --exclude '.git/*' --exclude '.git*' --exclude '*.sh' ./ $RUSER@$RHOST:/home/eric/erictitcombe.com/
