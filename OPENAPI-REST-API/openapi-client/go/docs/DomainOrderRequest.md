# DomainOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hostname** | **string** | Fully-qualified domain to register or transfer (e.g. example.com). | 
**Type** | Pointer to **string** | Order type. | [optional] [default to "register"]
**Coupon** | Pointer to **string** | Coupon code (addDomain only). | [optional] [default to ""]
**WhoisPrivacy** | Pointer to **string** | Set to \&quot;enable\&quot; to add Whois privacy (addDomain only). | [optional] 

## Methods

### NewDomainOrderRequest

`func NewDomainOrderRequest(hostname string, ) *DomainOrderRequest`

NewDomainOrderRequest instantiates a new DomainOrderRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDomainOrderRequestWithDefaults

`func NewDomainOrderRequestWithDefaults() *DomainOrderRequest`

NewDomainOrderRequestWithDefaults instantiates a new DomainOrderRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetHostname

`func (o *DomainOrderRequest) GetHostname() string`

GetHostname returns the Hostname field if non-nil, zero value otherwise.

### GetHostnameOk

`func (o *DomainOrderRequest) GetHostnameOk() (*string, bool)`

GetHostnameOk returns a tuple with the Hostname field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHostname

`func (o *DomainOrderRequest) SetHostname(v string)`

SetHostname sets Hostname field to given value.


### GetType

`func (o *DomainOrderRequest) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DomainOrderRequest) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DomainOrderRequest) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DomainOrderRequest) HasType() bool`

HasType returns a boolean if a field has been set.

### GetCoupon

`func (o *DomainOrderRequest) GetCoupon() string`

GetCoupon returns the Coupon field if non-nil, zero value otherwise.

### GetCouponOk

`func (o *DomainOrderRequest) GetCouponOk() (*string, bool)`

GetCouponOk returns a tuple with the Coupon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCoupon

`func (o *DomainOrderRequest) SetCoupon(v string)`

SetCoupon sets Coupon field to given value.

### HasCoupon

`func (o *DomainOrderRequest) HasCoupon() bool`

HasCoupon returns a boolean if a field has been set.

### GetWhoisPrivacy

`func (o *DomainOrderRequest) GetWhoisPrivacy() string`

GetWhoisPrivacy returns the WhoisPrivacy field if non-nil, zero value otherwise.

### GetWhoisPrivacyOk

`func (o *DomainOrderRequest) GetWhoisPrivacyOk() (*string, bool)`

GetWhoisPrivacyOk returns a tuple with the WhoisPrivacy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhoisPrivacy

`func (o *DomainOrderRequest) SetWhoisPrivacy(v string)`

SetWhoisPrivacy sets WhoisPrivacy field to given value.

### HasWhoisPrivacy

`func (o *DomainOrderRequest) HasWhoisPrivacy() bool`

HasWhoisPrivacy returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


