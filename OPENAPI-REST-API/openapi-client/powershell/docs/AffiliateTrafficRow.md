# AffiliateTrafficRow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TrafficId** | **String** |  | [optional] 
**TrafficIp** | **String** |  | [optional] 
**TrafficUrl** | **String** |  | [optional] 
**TrafficAffiliate** | **String** |  | [optional] 
**TrafficReferrer** | **String** |  | [optional] 
**TrafficTimestamp** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AffiliateTrafficRow = Initialize-InterserverApiAffiliateTrafficRow  -TrafficId null `
 -TrafficIp null `
 -TrafficUrl null `
 -TrafficAffiliate null `
 -TrafficReferrer null `
 -TrafficTimestamp null
```

- Convert the resource to JSON
```powershell
$AffiliateTrafficRow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

