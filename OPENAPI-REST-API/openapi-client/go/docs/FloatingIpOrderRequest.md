# FloatingIpOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceType** | **int32** | Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable). | 
**Coupon** | Pointer to **string** | Coupon code. | [optional] [default to ""]
**Comment** | Pointer to **string** | Free-form note saved on the service row (used on addFloatingIp). | [optional] [default to ""]

## Methods

### NewFloatingIpOrderRequest

`func NewFloatingIpOrderRequest(serviceType int32, ) *FloatingIpOrderRequest`

NewFloatingIpOrderRequest instantiates a new FloatingIpOrderRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFloatingIpOrderRequestWithDefaults

`func NewFloatingIpOrderRequestWithDefaults() *FloatingIpOrderRequest`

NewFloatingIpOrderRequestWithDefaults instantiates a new FloatingIpOrderRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetServiceType

`func (o *FloatingIpOrderRequest) GetServiceType() int32`

GetServiceType returns the ServiceType field if non-nil, zero value otherwise.

### GetServiceTypeOk

`func (o *FloatingIpOrderRequest) GetServiceTypeOk() (*int32, bool)`

GetServiceTypeOk returns a tuple with the ServiceType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceType

`func (o *FloatingIpOrderRequest) SetServiceType(v int32)`

SetServiceType sets ServiceType field to given value.


### GetCoupon

`func (o *FloatingIpOrderRequest) GetCoupon() string`

GetCoupon returns the Coupon field if non-nil, zero value otherwise.

### GetCouponOk

`func (o *FloatingIpOrderRequest) GetCouponOk() (*string, bool)`

GetCouponOk returns a tuple with the Coupon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCoupon

`func (o *FloatingIpOrderRequest) SetCoupon(v string)`

SetCoupon sets Coupon field to given value.

### HasCoupon

`func (o *FloatingIpOrderRequest) HasCoupon() bool`

HasCoupon returns a boolean if a field has been set.

### GetComment

`func (o *FloatingIpOrderRequest) GetComment() string`

GetComment returns the Comment field if non-nil, zero value otherwise.

### GetCommentOk

`func (o *FloatingIpOrderRequest) GetCommentOk() (*string, bool)`

GetCommentOk returns a tuple with the Comment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetComment

`func (o *FloatingIpOrderRequest) SetComment(v string)`

SetComment sets Comment field to given value.

### HasComment

`func (o *FloatingIpOrderRequest) HasComment() bool`

HasComment returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


