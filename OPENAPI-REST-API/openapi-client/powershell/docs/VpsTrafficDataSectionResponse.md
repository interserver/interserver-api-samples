# VpsTrafficDataSectionResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | 
**VarData** | [**VPSTrafficDataDataSectionResponse[]**](VPSTrafficDataDataSectionResponse.md) |  | 

## Examples

- Prepare the resource
```powershell
$VpsTrafficDataSectionResponse = Initialize-InterserverApiVpsTrafficDataSectionResponse  -Name null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$VpsTrafficDataSectionResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

