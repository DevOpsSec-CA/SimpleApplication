# Install nodejs and npm
sudo apt update && sudo apt install nodejs npm
# Install pm2 (process manager)
sudo npm install -g pm2
# Navigate to project directory in EC2 instance
cd SimpleApplication
# Install app dependencies
npm install
# Gain private key and server certificate from CircleCi environment variables
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
# Start application with name simple_app 
pm2 start./bin/www --name simple_app