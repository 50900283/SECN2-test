#! /bin/sh

# This script builds the Factory Restore tar file from files in /etc/config

cd ./files/etc/config/

tar -czvf conf-default.tar.gz ./*

cd ../../..

sleep 5
