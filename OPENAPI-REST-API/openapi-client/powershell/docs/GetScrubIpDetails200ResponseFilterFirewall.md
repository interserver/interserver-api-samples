# GetScrubIpDetails200ResponseFilterFirewall
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Rules** | [**GetScrubIpDetails200ResponseFilterFirewallRulesInner[]**](GetScrubIpDetails200ResponseFilterFirewallRulesInner.md) |  | [optional] 
**Filters** | [**GetScrubIpDetails200ResponseFilterFirewallFiltersInner[]**](GetScrubIpDetails200ResponseFilterFirewallFiltersInner.md) |  | [optional] 
**ScrubEnabled** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetScrubIpDetails200ResponseFilterFirewall = Initialize-InterserverApiGetScrubIpDetails200ResponseFilterFirewall  -Rules null `
 -Filters null `
 -ScrubEnabled null
```

- Convert the resource to JSON
```powershell
$GetScrubIpDetails200ResponseFilterFirewall | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

