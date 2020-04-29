sudo apt install --yes ca-certificates apt-transport-https

echo 'deb https://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 06E85760C0A52C50

wget -qO - https://www.mongodb.org/static/pgp/server-3.4.asc | sudo apt-key add -
echo 'deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse' | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

sudo apt-mark hold openjdk-11-*

sudo apt update

# mongodb 3.4 dependency
wget http://security.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0.0_1.0.2n-1ubuntu5.3_amd64.deb -P /tmp
sudo apt install --yes /tmp/libssl1.0.0_1.0.2n-1ubuntu5.3_amd64.deb
rm /tmp/libssl1.0.0_1.0.2n-1ubuntu5.3_amd64.deb

sudo apt install --yes mongodb-org

sudo apt install --yes unifi