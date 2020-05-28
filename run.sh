#!/bin/bash

sudo docker run --rm -ti \
--mount type=bind,source="$(pwd)",target=/hostmount \
azcli:latest 