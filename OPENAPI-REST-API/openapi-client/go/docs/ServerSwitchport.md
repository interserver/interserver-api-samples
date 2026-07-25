# ServerSwitchport

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SwitchportId** | **int32** | Unique identifier for the switchport. | 
**SwitchId** | **string** | Unique identifier for the switch associated with the switchport. | 
**Switch** | **string** | Name of the switch associated with the switchport. | 
**Port** | **string** | Port name on the switch. | 
**Blade** | **string** | Blade name associated with the port. | 
**Justport** | **string** | Port identifier. | 
**GraphId** | **string** | Identifier for the graph associated with the switchport. | 
**AssetId** | **int32** | Unique identifier of the asset associated with the switchport. | 
**Vlans** | Pointer to **[]string** | List of VLANs associated with the switchport. | [optional] 
**Vlans6** | Pointer to **[]string** | List of IPv6 VLANs associated with the switchport. | [optional] 

## Methods

### NewServerSwitchport

`func NewServerSwitchport(switchportId int32, switchId string, switch_ string, port string, blade string, justport string, graphId string, assetId int32, ) *ServerSwitchport`

NewServerSwitchport instantiates a new ServerSwitchport object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewServerSwitchportWithDefaults

`func NewServerSwitchportWithDefaults() *ServerSwitchport`

NewServerSwitchportWithDefaults instantiates a new ServerSwitchport object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSwitchportId

`func (o *ServerSwitchport) GetSwitchportId() int32`

GetSwitchportId returns the SwitchportId field if non-nil, zero value otherwise.

### GetSwitchportIdOk

`func (o *ServerSwitchport) GetSwitchportIdOk() (*int32, bool)`

GetSwitchportIdOk returns a tuple with the SwitchportId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSwitchportId

`func (o *ServerSwitchport) SetSwitchportId(v int32)`

SetSwitchportId sets SwitchportId field to given value.


### GetSwitchId

`func (o *ServerSwitchport) GetSwitchId() string`

GetSwitchId returns the SwitchId field if non-nil, zero value otherwise.

### GetSwitchIdOk

`func (o *ServerSwitchport) GetSwitchIdOk() (*string, bool)`

GetSwitchIdOk returns a tuple with the SwitchId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSwitchId

`func (o *ServerSwitchport) SetSwitchId(v string)`

SetSwitchId sets SwitchId field to given value.


### GetSwitch

`func (o *ServerSwitchport) GetSwitch() string`

GetSwitch returns the Switch field if non-nil, zero value otherwise.

### GetSwitchOk

`func (o *ServerSwitchport) GetSwitchOk() (*string, bool)`

GetSwitchOk returns a tuple with the Switch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSwitch

`func (o *ServerSwitchport) SetSwitch(v string)`

SetSwitch sets Switch field to given value.


### GetPort

`func (o *ServerSwitchport) GetPort() string`

GetPort returns the Port field if non-nil, zero value otherwise.

### GetPortOk

`func (o *ServerSwitchport) GetPortOk() (*string, bool)`

GetPortOk returns a tuple with the Port field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPort

`func (o *ServerSwitchport) SetPort(v string)`

SetPort sets Port field to given value.


### GetBlade

`func (o *ServerSwitchport) GetBlade() string`

GetBlade returns the Blade field if non-nil, zero value otherwise.

### GetBladeOk

`func (o *ServerSwitchport) GetBladeOk() (*string, bool)`

GetBladeOk returns a tuple with the Blade field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlade

`func (o *ServerSwitchport) SetBlade(v string)`

SetBlade sets Blade field to given value.


### GetJustport

`func (o *ServerSwitchport) GetJustport() string`

GetJustport returns the Justport field if non-nil, zero value otherwise.

### GetJustportOk

`func (o *ServerSwitchport) GetJustportOk() (*string, bool)`

GetJustportOk returns a tuple with the Justport field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJustport

`func (o *ServerSwitchport) SetJustport(v string)`

SetJustport sets Justport field to given value.


### GetGraphId

`func (o *ServerSwitchport) GetGraphId() string`

GetGraphId returns the GraphId field if non-nil, zero value otherwise.

### GetGraphIdOk

`func (o *ServerSwitchport) GetGraphIdOk() (*string, bool)`

GetGraphIdOk returns a tuple with the GraphId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGraphId

`func (o *ServerSwitchport) SetGraphId(v string)`

SetGraphId sets GraphId field to given value.


### GetAssetId

`func (o *ServerSwitchport) GetAssetId() int32`

GetAssetId returns the AssetId field if non-nil, zero value otherwise.

### GetAssetIdOk

`func (o *ServerSwitchport) GetAssetIdOk() (*int32, bool)`

GetAssetIdOk returns a tuple with the AssetId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssetId

`func (o *ServerSwitchport) SetAssetId(v int32)`

SetAssetId sets AssetId field to given value.


### GetVlans

`func (o *ServerSwitchport) GetVlans() []string`

GetVlans returns the Vlans field if non-nil, zero value otherwise.

### GetVlansOk

`func (o *ServerSwitchport) GetVlansOk() (*[]string, bool)`

GetVlansOk returns a tuple with the Vlans field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVlans

`func (o *ServerSwitchport) SetVlans(v []string)`

SetVlans sets Vlans field to given value.

### HasVlans

`func (o *ServerSwitchport) HasVlans() bool`

HasVlans returns a boolean if a field has been set.

### GetVlans6

`func (o *ServerSwitchport) GetVlans6() []string`

GetVlans6 returns the Vlans6 field if non-nil, zero value otherwise.

### GetVlans6Ok

`func (o *ServerSwitchport) GetVlans6Ok() (*[]string, bool)`

GetVlans6Ok returns a tuple with the Vlans6 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVlans6

`func (o *ServerSwitchport) SetVlans6(v []string)`

SetVlans6 sets Vlans6 field to given value.

### HasVlans6

`func (o *ServerSwitchport) HasVlans6() bool`

HasVlans6 returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


