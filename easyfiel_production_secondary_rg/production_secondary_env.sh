#az login
#!/bin/bash
resource="easyfiel_production_secondary_rg"

az group create --name $resource --location northcentralus
az deployment group create --resource-group $resource --template-file app_service_template.json
az deployment group create --resource-group $resource --template-file web_app.json

#sh ./db_creator.sh 





