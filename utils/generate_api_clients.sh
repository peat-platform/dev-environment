#!/bin/bash
cd ~/repos/openi_android_sdk

bash build-android-sdk.sh $1

cp openi-client-lib.aar                  ~/repos/mongrel2/static/android-sdk/