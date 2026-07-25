# VpsTrafficHistorySectionResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**VpsTrafficHistorySectionDataResponse[]**](VpsTrafficHistorySectionDataResponse.md) |  | 
**Times** | **System.DateTime[]** |  | 

## Examples

- Prepare the resource
```powershell
$VpsTrafficHistorySectionResponse = Initialize-InterserverApiVpsTrafficHistorySectionResponse  -VarData null `
 -Times null
```

- Convert the resource to JSON
```powershell
$VpsTrafficHistorySectionResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

