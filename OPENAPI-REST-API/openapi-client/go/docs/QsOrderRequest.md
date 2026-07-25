# QsOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Server** | **int32** | QuickServer plan/server id from getNewQs. | 
**Password** | **string** | Root password for the QuickServer. | 
**Os** | Pointer to **string** | OS template file name from getNewQs (falls back to a default if unrecognized). | [optional] [default to ""]
**Tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. | 
**Comment** | Pointer to **string** | Free-form note saved on the service row. | [optional] [default to ""]

## Methods

### NewQsOrderRequest

`func NewQsOrderRequest(server int32, password string, tos bool, ) *QsOrderRequest`

NewQsOrderRequest instantiates a new QsOrderRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQsOrderRequestWithDefaults

`func NewQsOrderRequestWithDefaults() *QsOrderRequest`

NewQsOrderRequestWithDefaults instantiates a new QsOrderRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetServer

`func (o *QsOrderRequest) GetServer() int32`

GetServer returns the Server field if non-nil, zero value otherwise.

### GetServerOk

`func (o *QsOrderRequest) GetServerOk() (*int32, bool)`

GetServerOk returns a tuple with the Server field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServer

`func (o *QsOrderRequest) SetServer(v int32)`

SetServer sets Server field to given value.


### GetPassword

`func (o *QsOrderRequest) GetPassword() string`

GetPassword returns the Password field if non-nil, zero value otherwise.

### GetPasswordOk

`func (o *QsOrderRequest) GetPasswordOk() (*string, bool)`

GetPasswordOk returns a tuple with the Password field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPassword

`func (o *QsOrderRequest) SetPassword(v string)`

SetPassword sets Password field to given value.


### GetOs

`func (o *QsOrderRequest) GetOs() string`

GetOs returns the Os field if non-nil, zero value otherwise.

### GetOsOk

`func (o *QsOrderRequest) GetOsOk() (*string, bool)`

GetOsOk returns a tuple with the Os field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOs

`func (o *QsOrderRequest) SetOs(v string)`

SetOs sets Os field to given value.

### HasOs

`func (o *QsOrderRequest) HasOs() bool`

HasOs returns a boolean if a field has been set.

### GetTos

`func (o *QsOrderRequest) GetTos() bool`

GetTos returns the Tos field if non-nil, zero value otherwise.

### GetTosOk

`func (o *QsOrderRequest) GetTosOk() (*bool, bool)`

GetTosOk returns a tuple with the Tos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTos

`func (o *QsOrderRequest) SetTos(v bool)`

SetTos sets Tos field to given value.


### GetComment

`func (o *QsOrderRequest) GetComment() string`

GetComment returns the Comment field if non-nil, zero value otherwise.

### GetCommentOk

`func (o *QsOrderRequest) GetCommentOk() (*string, bool)`

GetCommentOk returns a tuple with the Comment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetComment

`func (o *QsOrderRequest) SetComment(v string)`

SetComment sets Comment field to given value.

### HasComment

`func (o *QsOrderRequest) HasComment() bool`

HasComment returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


