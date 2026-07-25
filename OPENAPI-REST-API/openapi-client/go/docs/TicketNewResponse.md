# TicketNewResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **string** |  | 
**Success** | **bool** |  | 
**TicketId** | Pointer to **int32** |  | [optional] 

## Methods

### NewTicketNewResponse

`func NewTicketNewResponse(text string, success bool, ) *TicketNewResponse`

NewTicketNewResponse instantiates a new TicketNewResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTicketNewResponseWithDefaults

`func NewTicketNewResponseWithDefaults() *TicketNewResponse`

NewTicketNewResponseWithDefaults instantiates a new TicketNewResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetText

`func (o *TicketNewResponse) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *TicketNewResponse) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *TicketNewResponse) SetText(v string)`

SetText sets Text field to given value.


### GetSuccess

`func (o *TicketNewResponse) GetSuccess() bool`

GetSuccess returns the Success field if non-nil, zero value otherwise.

### GetSuccessOk

`func (o *TicketNewResponse) GetSuccessOk() (*bool, bool)`

GetSuccessOk returns a tuple with the Success field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSuccess

`func (o *TicketNewResponse) SetSuccess(v bool)`

SetSuccess sets Success field to given value.


### GetTicketId

`func (o *TicketNewResponse) GetTicketId() int32`

GetTicketId returns the TicketId field if non-nil, zero value otherwise.

### GetTicketIdOk

`func (o *TicketNewResponse) GetTicketIdOk() (*int32, bool)`

GetTicketIdOk returns a tuple with the TicketId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTicketId

`func (o *TicketNewResponse) SetTicketId(v int32)`

SetTicketId sets TicketId field to given value.

### HasTicketId

`func (o *TicketNewResponse) HasTicketId() bool`

HasTicketId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


