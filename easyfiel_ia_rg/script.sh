#az login
#!/bin/bash
resource="easyfiel_ia_rg"

az group create --name $resource --location southcentralus
az deployment group create --resource-group $resource --template-file container_registry.json
az deployment group create --resource-group $resource --template-file app_service_plan.json
az deployment group create --resource-group $resource --template-file web_app.json





