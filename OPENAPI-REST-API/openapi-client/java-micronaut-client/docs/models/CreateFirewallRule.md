

# CreateFirewallRule

Create firewall rule for your ip

The class is defined in **[CreateFirewallRule.java](../../src/main/java/org/openapitools/model/CreateFirewallRule.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocolId** | [**ProtocolIdEnum**](#ProtocolIdEnum) | 1 &#x3D; TCP, 2 &#x3D; UDP | 
**xdpAction** | [**XdpActionEnum**](#XdpActionEnum) | 1 &#x3D; Block,  0 &#x3D; Whitelist | 
**destinationPort** | `Integer` |  |  [optional property]
**sourceIp** | `String` | Source IP address to match. Use &#39;0.0.0.0&#39; to match any source. |  [optional property]
**sourcePort** | `Integer` |  |  [optional property]

## ProtocolIdEnum

Name | Value
---- | -----
NUMBER_1 | `1`
NUMBER_2 | `2`
NUMBER_unknown_default_open_api | `11184809`

## XdpActionEnum

Name | Value
---- | -----
NUMBER_0 | `0`
NUMBER_1 | `1`
NUMBER_unknown_default_open_api | `11184809`





