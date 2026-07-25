# TemplateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Template** | **string** | OS Template Filename | 
**LocalPassword** | **string** | Password for this account. | 
**Password** | Pointer to **string** | Password for Root / Administrator Account. | [optional] 

## Methods

### NewTemplateRequest

`func NewTemplateRequest(template string, localPassword string, ) *TemplateRequest`

NewTemplateRequest instantiates a new TemplateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTemplateRequestWithDefaults

`func NewTemplateRequestWithDefaults() *TemplateRequest`

NewTemplateRequestWithDefaults instantiates a new TemplateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTemplate

`func (o *TemplateRequest) GetTemplate() string`

GetTemplate returns the Template field if non-nil, zero value otherwise.

### GetTemplateOk

`func (o *TemplateRequest) GetTemplateOk() (*string, bool)`

GetTemplateOk returns a tuple with the Template field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplate

`func (o *TemplateRequest) SetTemplate(v string)`

SetTemplate sets Template field to given value.


### GetLocalPassword

`func (o *TemplateRequest) GetLocalPassword() string`

GetLocalPassword returns the LocalPassword field if non-nil, zero value otherwise.

### GetLocalPasswordOk

`func (o *TemplateRequest) GetLocalPasswordOk() (*string, bool)`

GetLocalPasswordOk returns a tuple with the LocalPassword field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocalPassword

`func (o *TemplateRequest) SetLocalPassword(v string)`

SetLocalPassword sets LocalPassword field to given value.


### GetPassword

`func (o *TemplateRequest) GetPassword() string`

GetPassword returns the Password field if non-nil, zero value otherwise.

### GetPasswordOk

`func (o *TemplateRequest) GetPasswordOk() (*string, bool)`

GetPasswordOk returns a tuple with the Password field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPassword

`func (o *TemplateRequest) SetPassword(v string)`

SetPassword sets Password field to given value.

### HasPassword

`func (o *TemplateRequest) HasPassword() bool`

HasPassword returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


