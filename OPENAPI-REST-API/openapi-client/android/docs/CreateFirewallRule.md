

# CreateFirewallRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocolId** | [**ProtocolIdEnum**](#ProtocolIdEnum) | 1 &#x3D; TCP, 2 &#x3D; UDP | 
**xdpAction** | [**XdpActionEnum**](#XdpActionEnum) | 1 &#x3D; Block,  0 &#x3D; Whitelist | 
**destinationPort** | **Integer** |  |  [optional]
**sourceIp** | **String** | Source IP address to match. Use &#39;0.0.0.0&#39; to match any source. |  [optional]
**sourcePort** | **Integer** |  |  [optional]


## Enum: ProtocolIdEnum

Name | Value
---- | -----


## Enum: XdpActionEnum

Name | Value
---- | -----




