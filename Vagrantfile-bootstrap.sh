#!/usr/bin/env bash

apt-get update
apt-get install -y nodejs npm git

# So ubuntu doesn't freak out about nodejs path, which is just silly
ln -s /usr/bin/nodejs /usr/bin/node

# npm installs
# locals
npm install grunt
npm install grunt-cli
# globals
npm install -g sails
npm install -g forever
npm install -g pm2 --unsafe-perm

sudo mkdir /var/www/
sudo chown -R vagrant /var/www/