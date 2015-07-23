#!/bin/bash

cd ~/repos

echo cloudlet-platform  && cd cloudlet-platform && npm install --no-bin-links ; cd ../
echo cloudlet-api       && cd cloudlet-api      && npm install --no-bin-links ; cd ../
echo object-api         && cd object-api        && npm install --no-bin-links ; cd ../
echo type-api           && cd type-api          && npm install --no-bin-links ; cd ../
echo m2nodehandler      && cd m2nodehandler     && npm install --no-bin-links ; cd ../
echo dao                && cd dao               && npm install --no-bin-links ; cd ../
echo swagger-def        && cd swagger-def       && npm install --no-bin-links ; cd ../
echo mongrel2           && cd mongrel2          && cd ../
echo dbc                && cd dbc               && npm install --no-bin-links ; cd ../
echo cloudlet-utils     && cd cloudlet-utils    && npm install --no-bin-links ; cd ../
echo peat-logger        && cd peat-logger       && npm install --no-bin-links ; cd ../
echo api-builder        && cd api-builder       && cd ../
echo api-framework      && cd api-framework     && cd ../
echo peat_android_sdk   && cd peat_android_sdk  && cd ../
echo api-builder        && cd api-builder       && cd ../
echo uaa                && cd uaa               && cd ../
