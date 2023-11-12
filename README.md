# Overview

Our objective in this project is to construct a new Github repository from the ground up and establish the necessary framework for executing both Continuous Integration and Continuous Delivery.

To accomplish this, we will utilize Github Actions in conjunction with a Makefile, requirements.txt, and our application code to execute an initial linting, testing, and installation process.

Additionally, we will integrate this project with Azure Pipelines to facilitate Continuous Delivery to Azure App Service.
Throughout this endeavor, we will leverage Azure Cloud Shell.

## Project Plan

- [Trello Board](https://trello.com/b/DvAKdGrF/azuredevops)
- [Master plan](https://docs.google.com/spreadsheets/d/e/2PACX-1vRM8P94FRDbFilQWFvaSy6SFM6gJvpEhMLXAhQV13f9_vVSkxZLY9rQ-1zhehMBXfJScRjXonAmt9V9/pubhtml)

## Instructions

- Architectural Diagram

![Alt text](images/ArchitecturalDiagram.jpg)

### Configuring Github
- First of all, we need to create a ssh key for access to Github.

- Create a ssh key

  ```bash
  ssh-keygen -t rsa -b 2048 -C "nhattan2007@gmail.com"
  ```

- Copy your key to SSH and GPG keys (https://github.com/settings/keys)

- Screenshot of SSH Key in Github
![Alt text](images/sshKey.jpg)

### Project Locally
- Cloned Project into Azure Cloud Shell
![Alt text](images/GitClonedAzure%20PowerShell.jpg)

- Create and active virtual env:

  ```bash
    python3 -m venv ~/.tanttn-udacity
    source ~/.tanttn-udacity/bin/activate
  ```

- Install dependencies and make test, lint with Make file:
![Alt text](images/MakefileResult.jpg)

- Run application

```bash
    export FLASK_APP=app.py
    flask run
```

- Run prediction with local at Azure Cloud Shell
![Alt text](images/PredictionLocalAzurePowerShell.jpg)

### Azure Web App

- Run script to create web app and first deployed to web app

```bash
    ./commands.sh
```

- Web App was created after run script (your can modify variables by your self at that file)
![Alt text](images/AzureAppServiceFlaskApp.jpg)

- Loadtest with web app by Locust (after deployed by Azure DevOps Pipelines)
![Alt text](images/RunningLocustLoadTest.jpg)

### Azure DevOps

- Go to Azure Devops > Create new project

- Go to Project Settings > Service Connections > New Service Connections
![Alt text](images/Service-connection.jpg)

- Select Azure Resource Manager > Select your Resource Group and Subscription (Also checkbox Grant access permission to all pipelines)
![Alt text](images/ConfigServiceConnection.jpg)

- Back to project Pipelines > New pipeline > Select Github > Grant access to your github
![Alt text](images/select-github-pipelines.jpg)

- Select your repository > Select Configure template
![Alt text](images/Createtemplatepipeline.jpg)

- Select your subscription > Select your web app which you want to deploy
![Alt text](images/pipelinewebapp.jpg)

- Successful deploy of the project in Azure Pipelines.
![Alt text](images/SuccessAzurePipelines.jpg)

- Project running on Azure App Service
![Alt text](images/RunningAzureWebApp.jpg)

- Web App with Azure Pipelines
![Alt text](images/WebAppWithAzurePipelines.jpg)

- Web App Deployed Logs
![Alt text](images/WebAppDeployedLogs.jpg)

- Output of streamed log files from deployed application
  Web App Stream Logs

![Alt text](images/AzureWebAppLogs.jpg)

## Enhancements

- Upgrade to newer python version (example that I did is 3.8)
- Add configuration key by KeyVault.

## Demo

<TODO: Add link Screencast on YouTube>
