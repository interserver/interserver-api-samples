# LicenseOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Package** | **int32** | License service type id from getNewLicense.serviceTypes (must be buyable). | 
**Ip** | **string** | IP address the license is bound to. | 
**Tos** | **bool** | Terms-of-service acceptance. Must be true to place the order. | 
**Frequency** | Pointer to **int32** | Billing frequency in months. | [optional] [default to 1]
**Coupon** | Pointer to **string** | Coupon code. | [optional] [default to ""]
**Comment** | Pointer to **string** | Free-form note saved on the service row. | [optional] [default to ""]

## Methods

### NewLicenseOrderRequest

`func NewLicenseOrderRequest(package_ int32, ip string, tos bool, ) *LicenseOrderRequest`

NewLicenseOrderRequest instantiates a new LicenseOrderRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLicenseOrderRequestWithDefaults

`func NewLicenseOrderRequestWithDefaults() *LicenseOrderRequest`

NewLicenseOrderRequestWithDefaults instantiates a new LicenseOrderRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPackage

`func (o *LicenseOrderRequest) GetPackage() int32`

GetPackage returns the Package field if non-nil, zero value otherwise.

### GetPackageOk

`func (o *LicenseOrderRequest) GetPackageOk() (*int32, bool)`

GetPackageOk returns a tuple with the Package field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPackage

`func (o *LicenseOrderRequest) SetPackage(v int32)`

SetPackage sets Package field to given value.


### GetIp

`func (o *LicenseOrderRequest) GetIp() string`

GetIp returns the Ip field if non-nil, zero value otherwise.

### GetIpOk

`func (o *LicenseOrderRequest) GetIpOk() (*string, bool)`

GetIpOk returns a tuple with the Ip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIp

`func (o *LicenseOrderRequest) SetIp(v string)`

SetIp sets Ip field to given value.


### GetTos

`func (o *LicenseOrderRequest) GetTos() bool`

GetTos returns the Tos field if non-nil, zero value otherwise.

### GetTosOk

`func (o *LicenseOrderRequest) GetTosOk() (*bool, bool)`

GetTosOk returns a tuple with the Tos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTos

`func (o *LicenseOrderRequest) SetTos(v bool)`

SetTos sets Tos field to given value.


### GetFrequency

`func (o *LicenseOrderRequest) GetFrequency() int32`

GetFrequency returns the Frequency field if non-nil, zero value otherwise.

### GetFrequencyOk

`func (o *LicenseOrderRequest) GetFrequencyOk() (*int32, bool)`

GetFrequencyOk returns a tuple with the Frequency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrequency

`func (o *LicenseOrderRequest) SetFrequency(v int32)`

SetFrequency sets Frequency field to given value.

### HasFrequency

`func (o *LicenseOrderRequest) HasFrequency() bool`

HasFrequency returns a boolean if a field has been set.

### GetCoupon

`func (o *LicenseOrderRequest) GetCoupon() string`

GetCoupon returns the Coupon field if non-nil, zero value otherwise.

### GetCouponOk

`func (o *LicenseOrderRequest) GetCouponOk() (*string, bool)`

GetCouponOk returns a tuple with the Coupon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCoupon

`func (o *LicenseOrderRequest) SetCoupon(v string)`

SetCoupon sets Coupon field to given value.

### HasCoupon

`func (o *LicenseOrderRequest) HasCoupon() bool`

HasCoupon returns a boolean if a field has been set.

### GetComment

`func (o *LicenseOrderRequest) GetComment() string`

GetComment returns the Comment field if non-nil, zero value otherwise.

### GetCommentOk

`func (o *LicenseOrderRequest) GetCommentOk() (*string, bool)`

GetCommentOk returns a tuple with the Comment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetComment

`func (o *LicenseOrderRequest) SetComment(v string)`

SetComment sets Comment field to given value.

### HasComment

`func (o *LicenseOrderRequest) HasComment() bool`

HasComment returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


