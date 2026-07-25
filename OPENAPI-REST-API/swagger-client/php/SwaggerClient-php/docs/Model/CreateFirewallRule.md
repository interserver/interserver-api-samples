# CreateFirewallRule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination_port** | **int** |  | [optional] [default to 80]
**source_ip** | **string** | Source IP address to match. Use &#x27;0.0.0.0&#x27; to match any source. | [optional] [default to '0.0.0.0']
**source_port** | **int** |  | [optional] [default to 0]
**protocol_id** | **int** | 1 &#x3D; TCP, 2 &#x3D; UDP | 
**xdp_action** | **int** | 1 &#x3D; Block,  0 &#x3D; Whitelist | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

