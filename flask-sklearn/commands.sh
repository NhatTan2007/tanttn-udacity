#!/bin/bash

resourceGroup="tanttn-udacity"
location="eastus"
azWebApp="tanttnudacitydevops"
azWebAppPlan="tanttnudacitydevops"
azWebAppRuntime="PYTHON:3.8"

az group create -n $resourceGroup -l $location

az appservice plan create -n $azWebAppPlan -g $resourceGroup --is-linux --sku FREE -l $location

az webapp create -n $azWebApp -p $azWebAppPlan -g $resourceGroup --runtime $azWebAppRuntime

az webapp up -n $azWebApp --runtime $azWebAppRuntime