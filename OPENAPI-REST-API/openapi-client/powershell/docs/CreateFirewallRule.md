# CreateFirewallRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DestinationPort** | **Int32** |  | [optional] [default to 80]
**SourceIp** | **String** | Source IP address to match. Use &#39;0.0.0.0&#39; to match any source. | [optional] [default to "0.0.0.0"]
**SourcePort** | **Int32** |  | [optional] [default to 0]
**ProtocolId** | **Int32** | 1 &#x3D; TCP, 2 &#x3D; UDP | 
**XdpAction** | **Int32** | 1 &#x3D; Block,  0 &#x3D; Whitelist | 

## Examples

- Prepare the resource
```powershell
$CreateFirewallRule = Initialize-InterserverApiCreateFirewallRule  -DestinationPort 22 `
 -SourceIp 1.2.4.5 `
 -SourcePort 1302 `
 -ProtocolId 1 `
 -XdpAction 1
```

- Convert the resource to JSON
```powershell
$CreateFirewallRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

