#!/bin/bash
echo "production"

server="easyfiel-production"
database="easyfiel-production"
location="southcentralus"
resource="easyfiel_production_rg"
login="easyfiel"
password=$EASY_PASSWORD


az sql server create -l $location -g $resource -n $server -u $login -p $password
az sql db create --name $database --resource-group $resource --server $server --service-objective S1

echo $
#clearprintenv