param location string = 'francecentral'
param storageAccountName string = 'toylaunch${uniqueString(resourceGroup().id)}'

@allowed([
  'dev'
  'prd'
])
param environmentType string

var storageAccountSkuName = (environmentType == 'prd') ? 'Standard_GRS' : 'Standard_LRS'

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: storageAccountSkuName
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
    isHnsEnabled: true
  }
}


