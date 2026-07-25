# VpsPlesk12Data
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Admin** | [**VpsPleskLicense**](VpsPleskLicense.md) |  | [optional] 
**Pro** | [**VpsPleskLicense**](VpsPleskLicense.md) |  | [optional] 
**VarHost** | [**VpsPleskLicense**](VpsPleskLicense.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VpsPlesk12Data = Initialize-InterserverApiVpsPlesk12Data  -Admin null `
 -Pro null `
 -VarHost null
```

- Convert the resource to JSON
```powershell
$VpsPlesk12Data | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

