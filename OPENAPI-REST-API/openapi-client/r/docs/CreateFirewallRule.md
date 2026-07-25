# interserverapi::CreateFirewallRule

Create firewall rule for your ip

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**destination_port** | **integer** |  | [optional] [default to 80] 
**source_ip** | **character** | Source IP address to match. Use &#39;0.0.0.0&#39; to match any source. | [optional] [default to &quot;0.0.0.0&quot;] 
**source_port** | **integer** |  | [optional] [default to 0] 
**protocol_id** | **integer** | 1 &#x3D; TCP, 2 &#x3D; UDP | [Enum: [1, 2]] 
**xdp_action** | **integer** | 1 &#x3D; Block,  0 &#x3D; Whitelist | [Enum: [0, 1]] 


