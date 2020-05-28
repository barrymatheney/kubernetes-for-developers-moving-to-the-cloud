#!/bin/bash
. ./setvars.sh

#create resource group
echo "creating resource group $resourcegroupname  in location $location"
az group create --name=$resourcegroupname --location=$location

#register namespaces
echo "registering the required namespaces"
az provider register --namespace Microsoft.Network
az provider register --namespace Microsoft.Compute
az provider register --namespace Microsoft.OperationsManagement

#create private registry in resource group
echo "creating ACR $containerregistryname in resource group  $resourcegroupname  in location $location"
az acr create --resource-group $resourcegroupname --location $location --name $containerregistryname --sku Basic