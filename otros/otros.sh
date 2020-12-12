#az login

az group create --name easyfiel_storage_rg --location southcentralus
az group create --name easyfiel_tasks_rg --location southcentralus

az deployment group create --resource-group easyfiel_tasks_rg --template-file app_service_tasks.json

az deployment group create --resource-group easyfiel_tasks_rg --template-file app_service_tasks.json

az deployment group create --resource-group easyfiel_tasks_rg --template-file web_app.json


az deployment group create --resource-group easyfiel_storage_rg --template-file storage.json




