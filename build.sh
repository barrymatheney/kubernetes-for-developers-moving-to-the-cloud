#!/bin/bash

sudo docker build --rm -t azcli:latest .

sudo docker rmi -f $(sudo docker images -a | grep '<none>' | awk {'print $3'})
