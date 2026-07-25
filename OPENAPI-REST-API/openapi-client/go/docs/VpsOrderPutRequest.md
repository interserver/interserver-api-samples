# VpsOrderPutRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OsDistro** | **string** | OS Distribution | 
**Slices** | **int32** | Number of slices | [default to 1]
**VpsPlatform** | **string** | VPS Platform | 
**Period** | **int32** | Billing Period or Frequency | [default to 1]
**Location** | **int32** | Location | [default to 1]
**OsVersion** | **string** | OS Version | 
**Hostname** | **string** | The hostname to assign to the VPS | [default to ""]
**Rootpass** | **string** | Root password to assign to the VVPS | 
**Controlpanel** | Pointer to **string** | Control Panel | [optional] 
**Coupon** | Pointer to **string** | Coupon | [optional] [default to ""]
**Comment** | Pointer to **string** | Order comments or notes | [optional] [default to ""]

## Methods

### NewVpsOrderPutRequest

`func NewVpsOrderPutRequest(osDistro string, slices int32, vpsPlatform string, period int32, location int32, osVersion string, hostname string, rootpass string, ) *VpsOrderPutRequest`

NewVpsOrderPutRequest instantiates a new VpsOrderPutRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVpsOrderPutRequestWithDefaults

`func NewVpsOrderPutRequestWithDefaults() *VpsOrderPutRequest`

NewVpsOrderPutRequestWithDefaults instantiates a new VpsOrderPutRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOsDistro

`func (o *VpsOrderPutRequest) GetOsDistro() string`

GetOsDistro returns the OsDistro field if non-nil, zero value otherwise.

### GetOsDistroOk

`func (o *VpsOrderPutRequest) GetOsDistroOk() (*string, bool)`

GetOsDistroOk returns a tuple with the OsDistro field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOsDistro

`func (o *VpsOrderPutRequest) SetOsDistro(v string)`

SetOsDistro sets OsDistro field to given value.


### GetSlices

`func (o *VpsOrderPutRequest) GetSlices() int32`

GetSlices returns the Slices field if non-nil, zero value otherwise.

### GetSlicesOk

`func (o *VpsOrderPutRequest) GetSlicesOk() (*int32, bool)`

GetSlicesOk returns a tuple with the Slices field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlices

`func (o *VpsOrderPutRequest) SetSlices(v int32)`

SetSlices sets Slices field to given value.


### GetVpsPlatform

`func (o *VpsOrderPutRequest) GetVpsPlatform() string`

GetVpsPlatform returns the VpsPlatform field if non-nil, zero value otherwise.

### GetVpsPlatformOk

`func (o *VpsOrderPutRequest) GetVpsPlatformOk() (*string, bool)`

GetVpsPlatformOk returns a tuple with the VpsPlatform field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVpsPlatform

`func (o *VpsOrderPutRequest) SetVpsPlatform(v string)`

SetVpsPlatform sets VpsPlatform field to given value.


### GetPeriod

`func (o *VpsOrderPutRequest) GetPeriod() int32`

GetPeriod returns the Period field if non-nil, zero value otherwise.

### GetPeriodOk

`func (o *VpsOrderPutRequest) GetPeriodOk() (*int32, bool)`

GetPeriodOk returns a tuple with the Period field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriod

`func (o *VpsOrderPutRequest) SetPeriod(v int32)`

SetPeriod sets Period field to given value.


### GetLocation

`func (o *VpsOrderPutRequest) GetLocation() int32`

GetLocation returns the Location field if non-nil, zero value otherwise.

### GetLocationOk

`func (o *VpsOrderPutRequest) GetLocationOk() (*int32, bool)`

GetLocationOk returns a tuple with the Location field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocation

`func (o *VpsOrderPutRequest) SetLocation(v int32)`

SetLocation sets Location field to given value.


### GetOsVersion

`func (o *VpsOrderPutRequest) GetOsVersion() string`

GetOsVersion returns the OsVersion field if non-nil, zero value otherwise.

### GetOsVersionOk

`func (o *VpsOrderPutRequest) GetOsVersionOk() (*string, bool)`

GetOsVersionOk returns a tuple with the OsVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOsVersion

`func (o *VpsOrderPutRequest) SetOsVersion(v string)`

SetOsVersion sets OsVersion field to given value.


### GetHostname

`func (o *VpsOrderPutRequest) GetHostname() string`

GetHostname returns the Hostname field if non-nil, zero value otherwise.

### GetHostnameOk

`func (o *VpsOrderPutRequest) GetHostnameOk() (*string, bool)`

GetHostnameOk returns a tuple with the Hostname field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHostname

`func (o *VpsOrderPutRequest) SetHostname(v string)`

SetHostname sets Hostname field to given value.


### GetRootpass

`func (o *VpsOrderPutRequest) GetRootpass() string`

GetRootpass returns the Rootpass field if non-nil, zero value otherwise.

### GetRootpassOk

`func (o *VpsOrderPutRequest) GetRootpassOk() (*string, bool)`

GetRootpassOk returns a tuple with the Rootpass field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRootpass

`func (o *VpsOrderPutRequest) SetRootpass(v string)`

SetRootpass sets Rootpass field to given value.


### GetControlpanel

`func (o *VpsOrderPutRequest) GetControlpanel() string`

GetControlpanel returns the Controlpanel field if non-nil, zero value otherwise.

### GetControlpanelOk

`func (o *VpsOrderPutRequest) GetControlpanelOk() (*string, bool)`

GetControlpanelOk returns a tuple with the Controlpanel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetControlpanel

`func (o *VpsOrderPutRequest) SetControlpanel(v string)`

SetControlpanel sets Controlpanel field to given value.

### HasControlpanel

`func (o *VpsOrderPutRequest) HasControlpanel() bool`

HasControlpanel returns a boolean if a field has been set.

### GetCoupon

`func (o *VpsOrderPutRequest) GetCoupon() string`

GetCoupon returns the Coupon field if non-nil, zero value otherwise.

### GetCouponOk

`func (o *VpsOrderPutRequest) GetCouponOk() (*string, bool)`

GetCouponOk returns a tuple with the Coupon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCoupon

`func (o *VpsOrderPutRequest) SetCoupon(v string)`

SetCoupon sets Coupon field to given value.

### HasCoupon

`func (o *VpsOrderPutRequest) HasCoupon() bool`

HasCoupon returns a boolean if a field has been set.

### GetComment

`func (o *VpsOrderPutRequest) GetComment() string`

GetComment returns the Comment field if non-nil, zero value otherwise.

### GetCommentOk

`func (o *VpsOrderPutRequest) GetCommentOk() (*string, bool)`

GetCommentOk returns a tuple with the Comment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetComment

`func (o *VpsOrderPutRequest) SetComment(v string)`

SetComment sets Comment field to given value.

### HasComment

`func (o *VpsOrderPutRequest) HasComment() bool`

HasComment returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


