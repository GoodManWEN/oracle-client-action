sudo add-apt-repository universe
sudo apt update
sudo apt install -y alien libaio1
cat $GITHUB_ACTION_PATH/oracle-instantclient-basic-21_part* > $GITHUB_ACTION_PATH/oracle-instantclient-basic-21.1.0.0.0-1.x86_64.rpm
sudo alien -i $GITHUB_ACTION_PATH/oracle-instantclient-basic-21.1.0.0.0-1.x86_64.rpm
rm $GITHUB_ACTION_PATH/oracle-instantclient-basic-21.1.0.0.0-1.x86_64.rpm