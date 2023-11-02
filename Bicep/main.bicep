param location string = 'francecentral'
param storageAccountName string = 'drsfrcsto${uniqueString(resourceGroup().id)}'
@allowed([
  'dev'
  'prd'
])
param environmentType string = 'dev'

module appService 'modules/storageAccount.bicep' = {
  name: 'storageAccount'
  params: {
    location: location
    storageAccountName: storageAccountName
    environmentType: environmentType
  }
}
