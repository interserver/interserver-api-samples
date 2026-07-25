# ISACreateFirewallRule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocolId** | **NSNumber*** | 1 &#x3D; TCP, 2 &#x3D; UDP | 
**xdpAction** | **NSNumber*** | 1 &#x3D; Block,  0 &#x3D; Whitelist | 
**destinationPort** | **NSNumber*** |  | [optional] [default to @80]
**sourceIp** | **NSString*** | Source IP address to match. Use &#39;0.0.0.0&#39; to match any source. | [optional] [default to @"0.0.0.0"]
**sourcePort** | **NSNumber*** |  | [optional] [default to @0]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


