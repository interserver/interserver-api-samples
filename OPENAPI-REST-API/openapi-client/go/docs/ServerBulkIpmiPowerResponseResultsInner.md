# ServerBulkIpmiPowerResponseResultsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** | Server ID this result corresponds to. | [optional] 
**Asset** | Pointer to **int32** | Asset ID that was queried for the server (omitted on errors before asset selection). | [optional] 
**Text** | Pointer to **string** | IPMI power-status output for this server. | [optional] 
**Error** | Pointer to **string** | Error message for this server, if processing failed (mutually exclusive with &#x60;text&#x60;). | [optional] 

## Methods

### NewServerBulkIpmiPowerResponseResultsInner

`func NewServerBulkIpmiPowerResponseResultsInner() *ServerBulkIpmiPowerResponseResultsInner`

NewServerBulkIpmiPowerResponseResultsInner instantiates a new ServerBulkIpmiPowerResponseResultsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewServerBulkIpmiPowerResponseResultsInnerWithDefaults

`func NewServerBulkIpmiPowerResponseResultsInnerWithDefaults() *ServerBulkIpmiPowerResponseResultsInner`

NewServerBulkIpmiPowerResponseResultsInnerWithDefaults instantiates a new ServerBulkIpmiPowerResponseResultsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *ServerBulkIpmiPowerResponseResultsInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ServerBulkIpmiPowerResponseResultsInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ServerBulkIpmiPowerResponseResultsInner) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *ServerBulkIpmiPowerResponseResultsInner) HasId() bool`

HasId returns a boolean if a field has been set.

### GetAsset

`func (o *ServerBulkIpmiPowerResponseResultsInner) GetAsset() int32`

GetAsset returns the Asset field if non-nil, zero value otherwise.

### GetAssetOk

`func (o *ServerBulkIpmiPowerResponseResultsInner) GetAssetOk() (*int32, bool)`

GetAssetOk returns a tuple with the Asset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAsset

`func (o *ServerBulkIpmiPowerResponseResultsInner) SetAsset(v int32)`

SetAsset sets Asset field to given value.

### HasAsset

`func (o *ServerBulkIpmiPowerResponseResultsInner) HasAsset() bool`

HasAsset returns a boolean if a field has been set.

### GetText

`func (o *ServerBulkIpmiPowerResponseResultsInner) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *ServerBulkIpmiPowerResponseResultsInner) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *ServerBulkIpmiPowerResponseResultsInner) SetText(v string)`

SetText sets Text field to given value.

### HasText

`func (o *ServerBulkIpmiPowerResponseResultsInner) HasText() bool`

HasText returns a boolean if a field has been set.

### GetError

`func (o *ServerBulkIpmiPowerResponseResultsInner) GetError() string`

GetError returns the Error field if non-nil, zero value otherwise.

### GetErrorOk

`func (o *ServerBulkIpmiPowerResponseResultsInner) GetErrorOk() (*string, bool)`

GetErrorOk returns a tuple with the Error field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetError

`func (o *ServerBulkIpmiPowerResponseResultsInner) SetError(v string)`

SetError sets Error field to given value.

### HasError

`func (o *ServerBulkIpmiPowerResponseResultsInner) HasError() bool`

HasError returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


