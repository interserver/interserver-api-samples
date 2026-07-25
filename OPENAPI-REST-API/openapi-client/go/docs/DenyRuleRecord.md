# DenyRuleRecord

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** | The type of deny rule. | 
**Data** | **string** | The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com. | 
**Id** | **int32** | The deny rule Id number. | 
**Created** | **string** | the date the rule was created. | 
**User** | Pointer to **string** | Mail account username that will be tied to this rule.  If not specified the first active mail order will be used. | [optional] 

## Methods

### NewDenyRuleRecord

`func NewDenyRuleRecord(type_ string, data string, id int32, created string, ) *DenyRuleRecord`

NewDenyRuleRecord instantiates a new DenyRuleRecord object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDenyRuleRecordWithDefaults

`func NewDenyRuleRecordWithDefaults() *DenyRuleRecord`

NewDenyRuleRecordWithDefaults instantiates a new DenyRuleRecord object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DenyRuleRecord) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DenyRuleRecord) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DenyRuleRecord) SetType(v string)`

SetType sets Type field to given value.


### GetData

`func (o *DenyRuleRecord) GetData() string`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *DenyRuleRecord) GetDataOk() (*string, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *DenyRuleRecord) SetData(v string)`

SetData sets Data field to given value.


### GetId

`func (o *DenyRuleRecord) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *DenyRuleRecord) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *DenyRuleRecord) SetId(v int32)`

SetId sets Id field to given value.


### GetCreated

`func (o *DenyRuleRecord) GetCreated() string`

GetCreated returns the Created field if non-nil, zero value otherwise.

### GetCreatedOk

`func (o *DenyRuleRecord) GetCreatedOk() (*string, bool)`

GetCreatedOk returns a tuple with the Created field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreated

`func (o *DenyRuleRecord) SetCreated(v string)`

SetCreated sets Created field to given value.


### GetUser

`func (o *DenyRuleRecord) GetUser() string`

GetUser returns the User field if non-nil, zero value otherwise.

### GetUserOk

`func (o *DenyRuleRecord) GetUserOk() (*string, bool)`

GetUserOk returns a tuple with the User field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUser

`func (o *DenyRuleRecord) SetUser(v string)`

SetUser sets User field to given value.

### HasUser

`func (o *DenyRuleRecord) HasUser() bool`

HasUser returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


