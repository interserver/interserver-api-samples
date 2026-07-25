# VpsServiceExtra
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Spice** | **Int32** | Spice | [optional] 
**Snapshots** | [**VpsSnapshot[]**](VpsSnapshot.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsServiceExtra = Initialize-InterserverApiVpsServiceExtra  -Spice 5903 `
 -Snapshots null
```

- Convert the resource to JSON
```powershell
$VpsServiceExtra | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

