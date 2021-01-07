sudo add-apt-repository universe
sudo apt update
sudo apt install -y alien libaio1
cat oracle-instantclient-basic-21_part* > oracle-instantclient-basic-21.1.0.0.0-1.x86_64.rpm
sudo alien -i oracle-instantclient-basic-21.1.0.0.0-1.x86_64.rpm
rm oracle-instantclient-basic-21.1.0.0.0-1.x86_64.rpm