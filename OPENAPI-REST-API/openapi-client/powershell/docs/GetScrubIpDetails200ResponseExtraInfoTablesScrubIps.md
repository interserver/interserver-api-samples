# GetScrubIpDetails200ResponseExtraInfoTablesScrubIps
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** |  | [optional] 
**Rows** | [**GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner[]**](GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetScrubIpDetails200ResponseExtraInfoTablesScrubIps = Initialize-InterserverApiGetScrubIpDetails200ResponseExtraInfoTablesScrubIps  -Title null `
 -Rows null
```

- Convert the resource to JSON
```powershell
$GetScrubIpDetails200ResponseExtraInfoTablesScrubIps | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

