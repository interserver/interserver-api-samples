# BackupsOrder
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PackageCosts** | [**BackupsOrderPackageCosts**](BackupsOrderPackageCosts.md) |  | 
**ServiceTypes** | [**BackupsOrderServiceTypes**](BackupsOrderServiceTypes.md) |  | 

## Examples

- Prepare the resource
```powershell
$BackupsOrder = Initialize-InterserverApiBackupsOrder  -PackageCosts null `
 -ServiceTypes null
```

- Convert the resource to JSON
```powershell
$BackupsOrder | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

