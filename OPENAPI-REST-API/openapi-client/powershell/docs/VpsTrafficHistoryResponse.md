# VpsTrafficHistoryResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hour** | [**VpsTrafficHistorySectionResponse**](VpsTrafficHistorySectionResponse.md) |  | 
**Day** | [**VpsTrafficHistorySectionResponse**](VpsTrafficHistorySectionResponse.md) |  | 

## Examples

- Prepare the resource
```powershell
$VpsTrafficHistoryResponse = Initialize-InterserverApiVpsTrafficHistoryResponse  -Hour null `
 -Day null
```

- Convert the resource to JSON
```powershell
$VpsTrafficHistoryResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

