# GetScrubIpDetails200ResponseFilterFirewallRulesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**SourceIp** | **String** |  | [optional] 
**DestinationIp** | **String** |  | [optional] 
**ProtocolId** | **String** |  | [optional] 
**SourcePort** | **String** |  | [optional] 
**DestinationPort** | **String** |  | [optional] 
**XdpAction** | **String** |  | [optional] 
**GlobalDrop** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetScrubIpDetails200ResponseFilterFirewallRulesInner = Initialize-InterserverApiGetScrubIpDetails200ResponseFilterFirewallRulesInner  -Id null `
 -SourceIp null `
 -DestinationIp null `
 -ProtocolId null `
 -SourcePort null `
 -DestinationPort null `
 -XdpAction null `
 -GlobalDrop null
```

- Convert the resource to JSON
```powershell
$GetScrubIpDetails200ResponseFilterFirewallRulesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

