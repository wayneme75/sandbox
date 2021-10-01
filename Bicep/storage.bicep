
resource exampleStorage 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'myfirstbicepst'
  location: 'westus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
