# InterserverApiClient.CreateFirewallRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocol_id** | **Number** | 1 &#x3D; TCP, 2 &#x3D; UDP | 
**xdp_action** | **Number** | 1 &#x3D; Block,  0 &#x3D; Whitelist | 
**destination_port** | **Number** |  | [optional] [default to 80]
**source_ip** | **String** | Source IP address to match. Use &#39;0.0.0.0&#39; to match any source. | [optional] [default to &#39;0.0.0.0&#39;]
**source_port** | **Number** |  | [optional] [default to 0]



## Enum: ProtocolIdEnum


* `1` (value: `1`)

* `2` (value: `2`)

* `unknown_default_open_api` (value: `11184809`)





## Enum: XdpActionEnum


* `0` (value: `0`)

* `1` (value: `1`)

* `unknown_default_open_api` (value: `11184809`)




