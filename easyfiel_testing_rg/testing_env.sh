#az login
#!/bin/bash
resource="easyfiel_testing_rg"
cd $resource
az group create --name $resource --location centralus
az deployment group create --resource-group $resource --template-file app_service_template.json
az deployment group create --resource-group $resource --template-file web_app.json
az deployment group create --resource-group $resource --template-file insights_template.json
sh ./db_creator.sh 





