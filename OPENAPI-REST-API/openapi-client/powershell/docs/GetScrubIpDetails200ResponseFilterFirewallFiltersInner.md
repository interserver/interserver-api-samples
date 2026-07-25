# GetScrubIpDetails200ResponseFilterFirewallFiltersInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Daddr** | **String** |  | [optional] 
**Dest** | **String** |  | [optional] 
**FilterName** | **String** |  | [optional] 
**DestinationIp** | **String** |  | [optional] 
**VarFilter** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetScrubIpDetails200ResponseFilterFirewallFiltersInner = Initialize-InterserverApiGetScrubIpDetails200ResponseFilterFirewallFiltersInner  -Daddr null `
 -Dest null `
 -FilterName null `
 -DestinationIp null `
 -VarFilter null
```

- Convert the resource to JSON
```powershell
$GetScrubIpDetails200ResponseFilterFirewallFiltersInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

