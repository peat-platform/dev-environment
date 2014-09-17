#!/bin/bash

cd ~/repos


git clone https://github.com/OPENi-ict/cloudlet-platform.git
git clone https://github.com/OPENi-ict/swagger-def.git
git clone https://github.com/OPENi-ict/cloudlet-api.git
git clone https://github.com/OPENi-ict/object-api.git
git clone https://github.com/OPENi-ict/type-api.git
git clone https://github.com/OPENi-ict/m2nodehandler.git
git clone https://github.com/OPENi-ict/dao.git
git clone https://github.com/OPENi-ict/mongrel2.git
git clone https://github.com/OPENi-ict/dbc.git
git clone https://github.com/OPENi-ict/cloudlet-utils.git
git clone https://github.com/OPENi-ict/openi-logger.git
#git clone https://github.com/OPENi-ict/cloudlet.git


cd ~/repos/cloudlet-platform; npm install --no-bin-links
cd ~/repos/cloudlet-api;      npm install --no-bin-links
cd ~/repos/swagger-def;       npm install --no-bin-links
cd ~/repos/object-api;        npm install --no-bin-links
cd ~/repos/type-api;          npm install --no-bin-links
cd ~/repos/m2nodehandler;     npm install --no-bin-links
cd ~/repos/dao;               npm install --no-bin-links
cd ~/repos/dbc;               npm install --no-bin-links
cd ~/repos/cloudlet-utils;    npm install --no-bin-links
cd ~/repos/openi-logger;      npm install --no-bin-links
#cd ~/repos/cloudlet;          npm install --no-bin-links


#cd ~/repos/cloudlet; bash patch.sh import --quit-no-color

