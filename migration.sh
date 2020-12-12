#az login
cd easy_fiel_testing_rg
az group create --name easy_fiel_testing_rg --location centralus
az deployment group create --resource-group easy_fiel_testing_rg --template-file template.json --parameters parameters.json

