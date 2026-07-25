# ServerIpmiPowerRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | **string** | The power action to send to the ipmi controller. | 
**Asset** | Pointer to **int32** | The Asset ID | [optional] 

## Methods

### NewServerIpmiPowerRequest

`func NewServerIpmiPowerRequest(action string, ) *ServerIpmiPowerRequest`

NewServerIpmiPowerRequest instantiates a new ServerIpmiPowerRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewServerIpmiPowerRequestWithDefaults

`func NewServerIpmiPowerRequestWithDefaults() *ServerIpmiPowerRequest`

NewServerIpmiPowerRequestWithDefaults instantiates a new ServerIpmiPowerRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAction

`func (o *ServerIpmiPowerRequest) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *ServerIpmiPowerRequest) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *ServerIpmiPowerRequest) SetAction(v string)`

SetAction sets Action field to given value.


### GetAsset

`func (o *ServerIpmiPowerRequest) GetAsset() int32`

GetAsset returns the Asset field if non-nil, zero value otherwise.

### GetAssetOk

`func (o *ServerIpmiPowerRequest) GetAssetOk() (*int32, bool)`

GetAssetOk returns a tuple with the Asset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAsset

`func (o *ServerIpmiPowerRequest) SetAsset(v int32)`

SetAsset sets Asset field to given value.

### HasAsset

`func (o *ServerIpmiPowerRequest) HasAsset() bool`

HasAsset returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


