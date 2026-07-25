# CreateFirewallRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination_port** | Option<**i32**> |  | [optional][default to 80]
**source_ip** | Option<**String**> | Source IP address to match. Use '0.0.0.0' to match any source. | [optional][default to 0.0.0.0]
**source_port** | Option<**i32**> |  | [optional][default to 0]
**protocol_id** | **ProtocolId** | 1 = TCP, 2 = UDP (enum: 1, 2) | 
**xdp_action** | **XdpAction** | 1 = Block,  0 = Whitelist (enum: 0, 1) | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


