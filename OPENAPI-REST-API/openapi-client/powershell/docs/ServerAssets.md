# ServerAssets
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** | The title of the assets. | [optional] 
**Size** | **Int32** | The size of the assets. | [optional] 
**Type** | **String** | The type of the assets. | [optional] 
**Header** | **String[]** | The header of the assets table. | [optional] 
**Rows** | [**String[][]**](Array.md) | The rows of the assets table. | [optional] 

## Examples

- Prepare the resource
```powershell
$ServerAssets = Initialize-InterserverApiServerAssets  -Title Assets `
 -Size 2 `
 -Type table `
 -Header null `
 -Rows null
```

- Convert the resource to JSON
```powershell
$ServerAssets | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

