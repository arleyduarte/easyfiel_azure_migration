#az login

az group create --name easyfiel_storage_rg --location southcentralus

az deployment group create --resource-group easyfiel_storage_rg --template-file storage.json




