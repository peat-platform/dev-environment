sudo apt-get install -y librrd-dev

sudo chmod -R 777  /var/lib/ganglia/rrds/
mkdir -p "/var/lib/ganglia/rrds/PEAT_Cluster/localhost/"
cd ~/repos/peat_rrd/misc && npm install && node rrd_setup.js
sudo chown -R nobody:nogroup /var/lib/ganglia/rrds
sudo chmod -R 777  /var/lib/ganglia/rrds/

sudo cp ~/repos/peat_rrd/graph.d/* /usr/share/ganglia-webfrontend/graph.d/
sudo cp ~/repos/peat_rrd/conf/*    /var/lib/ganglia-web/conf/

sudo service ganglia-monitor restart && sudo service gmetad restart && sudo service apache2 restart
