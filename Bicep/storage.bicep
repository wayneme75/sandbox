resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'myfirstbicepstorage'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
