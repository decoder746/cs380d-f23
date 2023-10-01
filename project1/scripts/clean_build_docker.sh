#!/bin/bash

sudo docker image rm $(sudo docker image ls --format '{{.Repository}} {{.ID}}' | grep 'anshul746' | awk '{print $2}')

cd dockerfiles

sudo docker build . -f base.dockerfile -t anshul746/kvs:base --network=host
sudo docker push anshul746/kvs:base

sudo docker build . -f client.dockerfile -t anshul746/kvs:client --network=host
sudo docker push anshul746/kvs:client

sudo docker build . -f frontend.dockerfile -t anshul746/kvs:frontend --network=host
sudo docker push anshul746/kvs:frontend

sudo docker build . -f server.dockerfile -t anshul746/kvs:server --network=host
sudo docker push anshul746/kvs:server

cd ..
