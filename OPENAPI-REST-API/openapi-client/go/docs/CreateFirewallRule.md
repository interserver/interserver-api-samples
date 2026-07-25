# CreateFirewallRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProtocolId** | **int32** | 1 &#x3D; TCP, 2 &#x3D; UDP | 
**XdpAction** | **int32** | 1 &#x3D; Block,  0 &#x3D; Whitelist | 
**DestinationPort** | Pointer to **int32** |  | [optional] [default to 80]
**SourceIp** | Pointer to **string** | Source IP address to match. Use &#39;0.0.0.0&#39; to match any source. | [optional] [default to "0.0.0.0"]
**SourcePort** | Pointer to **int32** |  | [optional] [default to 0]

## Methods

### NewCreateFirewallRule

`func NewCreateFirewallRule(protocolId int32, xdpAction int32, ) *CreateFirewallRule`

NewCreateFirewallRule instantiates a new CreateFirewallRule object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreateFirewallRuleWithDefaults

`func NewCreateFirewallRuleWithDefaults() *CreateFirewallRule`

NewCreateFirewallRuleWithDefaults instantiates a new CreateFirewallRule object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetProtocolId

`func (o *CreateFirewallRule) GetProtocolId() int32`

GetProtocolId returns the ProtocolId field if non-nil, zero value otherwise.

### GetProtocolIdOk

`func (o *CreateFirewallRule) GetProtocolIdOk() (*int32, bool)`

GetProtocolIdOk returns a tuple with the ProtocolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProtocolId

`func (o *CreateFirewallRule) SetProtocolId(v int32)`

SetProtocolId sets ProtocolId field to given value.


### GetXdpAction

`func (o *CreateFirewallRule) GetXdpAction() int32`

GetXdpAction returns the XdpAction field if non-nil, zero value otherwise.

### GetXdpActionOk

`func (o *CreateFirewallRule) GetXdpActionOk() (*int32, bool)`

GetXdpActionOk returns a tuple with the XdpAction field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetXdpAction

`func (o *CreateFirewallRule) SetXdpAction(v int32)`

SetXdpAction sets XdpAction field to given value.


### GetDestinationPort

`func (o *CreateFirewallRule) GetDestinationPort() int32`

GetDestinationPort returns the DestinationPort field if non-nil, zero value otherwise.

### GetDestinationPortOk

`func (o *CreateFirewallRule) GetDestinationPortOk() (*int32, bool)`

GetDestinationPortOk returns a tuple with the DestinationPort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDestinationPort

`func (o *CreateFirewallRule) SetDestinationPort(v int32)`

SetDestinationPort sets DestinationPort field to given value.

### HasDestinationPort

`func (o *CreateFirewallRule) HasDestinationPort() bool`

HasDestinationPort returns a boolean if a field has been set.

### GetSourceIp

`func (o *CreateFirewallRule) GetSourceIp() string`

GetSourceIp returns the SourceIp field if non-nil, zero value otherwise.

### GetSourceIpOk

`func (o *CreateFirewallRule) GetSourceIpOk() (*string, bool)`

GetSourceIpOk returns a tuple with the SourceIp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSourceIp

`func (o *CreateFirewallRule) SetSourceIp(v string)`

SetSourceIp sets SourceIp field to given value.

### HasSourceIp

`func (o *CreateFirewallRule) HasSourceIp() bool`

HasSourceIp returns a boolean if a field has been set.

### GetSourcePort

`func (o *CreateFirewallRule) GetSourcePort() int32`

GetSourcePort returns the SourcePort field if non-nil, zero value otherwise.

### GetSourcePortOk

`func (o *CreateFirewallRule) GetSourcePortOk() (*int32, bool)`

GetSourcePortOk returns a tuple with the SourcePort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSourcePort

`func (o *CreateFirewallRule) SetSourcePort(v int32)`

SetSourcePort sets SourcePort field to given value.

### HasSourcePort

`func (o *CreateFirewallRule) HasSourcePort() bool`

HasSourcePort returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


