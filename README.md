# Visual Studio / GIT

Clone the repository
```
https://github.com/DanielAtenor/azure-lab/
```

Configure variables to be able to commit and sync changes
```
git config --global user.name "Daniel Rodrigues"
git config --global user.email danibgc@gmail.com
```

# Bicep

In the Visual Studio Code terminal, run the following command:
Connect-AzAccount -TenantId f43e2fea-8e52-469a-a796-56e4c4bcb1f5

Set the default subscription for all of the Azure PowerShell commands that you run in this session.
```
$context = Get-AzSubscription -SubscriptionName 'Lyon - EN - Grenoble - 00'
Set-AzContext $context
```

Set the default resource group_
```
Set-AzDefault -ResourceGroupName daniel.rodrigues_rg-00
```

Deploy:
```
New-AzResourceGroupDeployment -TemplateFile main.bicep
```

