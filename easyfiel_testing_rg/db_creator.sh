#!/bin/bash
echo "Testing"

server="easyfiel-testing"
database="easyfiel-testing"
location="centralus"
resource="easyfiel_testing_rg"
login="easyfiel"
password=$EASY_PASSWORD


az sql server create -l $location -g $resource -n $server -u $login -p $password
az sql db create --name $database --resource-group $resource --server $server --service-objective S1

echo $
#clearprintenv