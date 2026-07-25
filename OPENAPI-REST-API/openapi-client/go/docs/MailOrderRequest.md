# MailOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceType** | **int32** | Mail plan service type id from getNewMail.serviceTypes (must be buyable). | 
**Coupon** | Pointer to **string** | Coupon code. | [optional] [default to ""]
**Comment** | Pointer to **string** | Free-form note saved on the service row (used on addMail). | [optional] [default to ""]

## Methods

### NewMailOrderRequest

`func NewMailOrderRequest(serviceType int32, ) *MailOrderRequest`

NewMailOrderRequest instantiates a new MailOrderRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMailOrderRequestWithDefaults

`func NewMailOrderRequestWithDefaults() *MailOrderRequest`

NewMailOrderRequestWithDefaults instantiates a new MailOrderRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetServiceType

`func (o *MailOrderRequest) GetServiceType() int32`

GetServiceType returns the ServiceType field if non-nil, zero value otherwise.

### GetServiceTypeOk

`func (o *MailOrderRequest) GetServiceTypeOk() (*int32, bool)`

GetServiceTypeOk returns a tuple with the ServiceType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceType

`func (o *MailOrderRequest) SetServiceType(v int32)`

SetServiceType sets ServiceType field to given value.


### GetCoupon

`func (o *MailOrderRequest) GetCoupon() string`

GetCoupon returns the Coupon field if non-nil, zero value otherwise.

### GetCouponOk

`func (o *MailOrderRequest) GetCouponOk() (*string, bool)`

GetCouponOk returns a tuple with the Coupon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCoupon

`func (o *MailOrderRequest) SetCoupon(v string)`

SetCoupon sets Coupon field to given value.

### HasCoupon

`func (o *MailOrderRequest) HasCoupon() bool`

HasCoupon returns a boolean if a field has been set.

### GetComment

`func (o *MailOrderRequest) GetComment() string`

GetComment returns the Comment field if non-nil, zero value otherwise.

### GetCommentOk

`func (o *MailOrderRequest) GetCommentOk() (*string, bool)`

GetCommentOk returns a tuple with the Comment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetComment

`func (o *MailOrderRequest) SetComment(v string)`

SetComment sets Comment field to given value.

### HasComment

`func (o *MailOrderRequest) HasComment() bool`

HasComment returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


