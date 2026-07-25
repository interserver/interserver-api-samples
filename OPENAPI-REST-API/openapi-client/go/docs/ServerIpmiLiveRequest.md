# ServerIpmiLiveRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ip** | **string** | Your IP Address you wish to connect to the IPMI system from. | 
**Asset** | Pointer to **int32** | Asset ID | [optional] 

## Methods

### NewServerIpmiLiveRequest

`func NewServerIpmiLiveRequest(ip string, ) *ServerIpmiLiveRequest`

NewServerIpmiLiveRequest instantiates a new ServerIpmiLiveRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewServerIpmiLiveRequestWithDefaults

`func NewServerIpmiLiveRequestWithDefaults() *ServerIpmiLiveRequest`

NewServerIpmiLiveRequestWithDefaults instantiates a new ServerIpmiLiveRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIp

`func (o *ServerIpmiLiveRequest) GetIp() string`

GetIp returns the Ip field if non-nil, zero value otherwise.

### GetIpOk

`func (o *ServerIpmiLiveRequest) GetIpOk() (*string, bool)`

GetIpOk returns a tuple with the Ip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIp

`func (o *ServerIpmiLiveRequest) SetIp(v string)`

SetIp sets Ip field to given value.


### GetAsset

`func (o *ServerIpmiLiveRequest) GetAsset() int32`

GetAsset returns the Asset field if non-nil, zero value otherwise.

### GetAssetOk

`func (o *ServerIpmiLiveRequest) GetAssetOk() (*int32, bool)`

GetAssetOk returns a tuple with the Asset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAsset

`func (o *ServerIpmiLiveRequest) SetAsset(v int32)`

SetAsset sets Asset field to given value.

### HasAsset

`func (o *ServerIpmiLiveRequest) HasAsset() bool`

HasAsset returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


