# DenyRuleNew

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** | The type of deny rule. | 
**Data** | **string** | The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com. | 
**User** | Pointer to **string** | Mail account username that will be tied to this rule.  If not specified the first active mail order will be used. | [optional] 

## Methods

### NewDenyRuleNew

`func NewDenyRuleNew(type_ string, data string, ) *DenyRuleNew`

NewDenyRuleNew instantiates a new DenyRuleNew object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDenyRuleNewWithDefaults

`func NewDenyRuleNewWithDefaults() *DenyRuleNew`

NewDenyRuleNewWithDefaults instantiates a new DenyRuleNew object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DenyRuleNew) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DenyRuleNew) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DenyRuleNew) SetType(v string)`

SetType sets Type field to given value.


### GetData

`func (o *DenyRuleNew) GetData() string`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *DenyRuleNew) GetDataOk() (*string, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *DenyRuleNew) SetData(v string)`

SetData sets Data field to given value.


### GetUser

`func (o *DenyRuleNew) GetUser() string`

GetUser returns the User field if non-nil, zero value otherwise.

### GetUserOk

`func (o *DenyRuleNew) GetUserOk() (*string, bool)`

GetUserOk returns a tuple with the User field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUser

`func (o *DenyRuleNew) SetUser(v string)`

SetUser sets User field to given value.

### HasUser

`func (o *DenyRuleNew) HasUser() bool`

HasUser returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


