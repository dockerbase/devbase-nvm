# Install nvm
USER=devbase
HOME=/home/$USER
NVM_DIR=$HOME/.nvm
curl https://raw.githubusercontent.com/creationix/nvm/v0.17.2/install.sh | bash

# Install nodejs/npm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && nvm install v0.10.32
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && nvm alias default 0.10.32

# Install brunch
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && npm install -g brunch
