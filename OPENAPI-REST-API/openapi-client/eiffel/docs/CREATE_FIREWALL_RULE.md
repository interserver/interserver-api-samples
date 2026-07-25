# CREATE_FIREWALL_RULE

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocol_id** | **INTEGER_32** | 1 &#x3D; TCP, 2 &#x3D; UDP | [default to null]
**xdp_action** | **INTEGER_32** | 1 &#x3D; Block,  0 &#x3D; Whitelist | [default to null]
**destination_port** | **INTEGER_32** |  | [optional] [default to 80]
**source_ip** | [**STRING_32**](STRING_32.md) | Source IP address to match. Use &#39;0.0.0.0&#39; to match any source. | [optional] [default to 0.0.0.0]
**source_port** | **INTEGER_32** |  | [optional] [default to 0]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


