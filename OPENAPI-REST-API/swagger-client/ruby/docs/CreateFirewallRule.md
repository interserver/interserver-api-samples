# InterserverApiClient::CreateFirewallRule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination_port** | **Integer** |  | [optional] [default to 80]
**source_ip** | **String** | Source IP address to match. Use &#x27;0.0.0.0&#x27; to match any source. | [optional] [default to &#x27;0.0.0.0&#x27;]
**source_port** | **Integer** |  | [optional] [default to 0]
**protocol_id** | **Integer** | 1 &#x3D; TCP, 2 &#x3D; UDP | 
**xdp_action** | **Integer** | 1 &#x3D; Block,  0 &#x3D; Whitelist | 

