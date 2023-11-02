// Global default parameters
param environmentType string = 'dev'

// Storage Account default parameters
param location string = 'francecentral'
param storageAccountName string = 'drsfrcsto${uniqueString(resourceGroup().id)}'

// Storage Account default parameters
param dataFactoryName string = 'drsfrcdfc'

// Key Vault parameters
//param keyVaultName = 'drsfrckvt${uniqueString(resourceGroup().id)}'

// Modules
module appService 'modules/storageAccount.bicep' = {
  name: 'storageAccount'
  params: {
    location: location
    storageAccountName: storageAccountName
    environmentType: environmentType
  }
}

module dataFactory 'modules/dataFactory.bicep' = {
  name: 'dataFactory'
  params: {
    location: location
    dataFactoryName: dataFactoryName
  }
}
