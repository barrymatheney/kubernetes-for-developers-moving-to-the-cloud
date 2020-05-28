#!/bin/bash
. ./setvars.sh

#delete resource group
echo "deleting resource group $resourcegroupname  in location $location"
az group delete --name=$resourcegroupname   -y
