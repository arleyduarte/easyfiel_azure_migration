#az login
#!/bin/bash
resource="easyfiel_waf_rg"

az group create --name $resource --location southcentralus
az deployment group create --resource-group $resource --template-file web_firewall_policy.json


az group create --name easyfiel_front_door_rg --location southcentralus
az deployment group create --resource-group $resource --template-file front_door.json






