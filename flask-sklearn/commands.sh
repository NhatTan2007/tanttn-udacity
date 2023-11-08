resourceGroup='tanttn-udacity'
location='eastus'
azWebApp='tanttnudacity'
azWebAppPlan='tanttnudacity'
azWebAppRuntime='PYTHON:3.8'

az group create -n $resourceGroup -l $location

az appservice plan create -n $azWebAppPlan -g $resourceGroup --is-linux --sku FREE -l $location

az webapp create -n $azWebApp -p $azWebAppPlan -g $resourceGroup --runtime $azWebAppRuntime