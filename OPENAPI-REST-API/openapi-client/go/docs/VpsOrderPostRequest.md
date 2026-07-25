# VpsOrderPostRequest

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

### NewVpsOrderPostRequest

`func NewVpsOrderPostRequest(osDistro string, slices int32, vpsPlatform string, period int32, location int32, osVersion string, hostname string, rootpass string, ) *VpsOrderPostRequest`

NewVpsOrderPostRequest instantiates a new VpsOrderPostRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVpsOrderPostRequestWithDefaults

`func NewVpsOrderPostRequestWithDefaults() *VpsOrderPostRequest`

NewVpsOrderPostRequestWithDefaults instantiates a new VpsOrderPostRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOsDistro

`func (o *VpsOrderPostRequest) GetOsDistro() string`

GetOsDistro returns the OsDistro field if non-nil, zero value otherwise.

### GetOsDistroOk

`func (o *VpsOrderPostRequest) GetOsDistroOk() (*string, bool)`

GetOsDistroOk returns a tuple with the OsDistro field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOsDistro

`func (o *VpsOrderPostRequest) SetOsDistro(v string)`

SetOsDistro sets OsDistro field to given value.


### GetSlices

`func (o *VpsOrderPostRequest) GetSlices() int32`

GetSlices returns the Slices field if non-nil, zero value otherwise.

### GetSlicesOk

`func (o *VpsOrderPostRequest) GetSlicesOk() (*int32, bool)`

GetSlicesOk returns a tuple with the Slices field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlices

`func (o *VpsOrderPostRequest) SetSlices(v int32)`

SetSlices sets Slices field to given value.


### GetVpsPlatform

`func (o *VpsOrderPostRequest) GetVpsPlatform() string`

GetVpsPlatform returns the VpsPlatform field if non-nil, zero value otherwise.

### GetVpsPlatformOk

`func (o *VpsOrderPostRequest) GetVpsPlatformOk() (*string, bool)`

GetVpsPlatformOk returns a tuple with the VpsPlatform field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVpsPlatform

`func (o *VpsOrderPostRequest) SetVpsPlatform(v string)`

SetVpsPlatform sets VpsPlatform field to given value.


### GetPeriod

`func (o *VpsOrderPostRequest) GetPeriod() int32`

GetPeriod returns the Period field if non-nil, zero value otherwise.

### GetPeriodOk

`func (o *VpsOrderPostRequest) GetPeriodOk() (*int32, bool)`

GetPeriodOk returns a tuple with the Period field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriod

`func (o *VpsOrderPostRequest) SetPeriod(v int32)`

SetPeriod sets Period field to given value.


### GetLocation

`func (o *VpsOrderPostRequest) GetLocation() int32`

GetLocation returns the Location field if non-nil, zero value otherwise.

### GetLocationOk

`func (o *VpsOrderPostRequest) GetLocationOk() (*int32, bool)`

GetLocationOk returns a tuple with the Location field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocation

`func (o *VpsOrderPostRequest) SetLocation(v int32)`

SetLocation sets Location field to given value.


### GetOsVersion

`func (o *VpsOrderPostRequest) GetOsVersion() string`

GetOsVersion returns the OsVersion field if non-nil, zero value otherwise.

### GetOsVersionOk

`func (o *VpsOrderPostRequest) GetOsVersionOk() (*string, bool)`

GetOsVersionOk returns a tuple with the OsVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOsVersion

`func (o *VpsOrderPostRequest) SetOsVersion(v string)`

SetOsVersion sets OsVersion field to given value.


### GetHostname

`func (o *VpsOrderPostRequest) GetHostname() string`

GetHostname returns the Hostname field if non-nil, zero value otherwise.

### GetHostnameOk

`func (o *VpsOrderPostRequest) GetHostnameOk() (*string, bool)`

GetHostnameOk returns a tuple with the Hostname field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHostname

`func (o *VpsOrderPostRequest) SetHostname(v string)`

SetHostname sets Hostname field to given value.


### GetRootpass

`func (o *VpsOrderPostRequest) GetRootpass() string`

GetRootpass returns the Rootpass field if non-nil, zero value otherwise.

### GetRootpassOk

`func (o *VpsOrderPostRequest) GetRootpassOk() (*string, bool)`

GetRootpassOk returns a tuple with the Rootpass field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRootpass

`func (o *VpsOrderPostRequest) SetRootpass(v string)`

SetRootpass sets Rootpass field to given value.


### GetControlpanel

`func (o *VpsOrderPostRequest) GetControlpanel() string`

GetControlpanel returns the Controlpanel field if non-nil, zero value otherwise.

### GetControlpanelOk

`func (o *VpsOrderPostRequest) GetControlpanelOk() (*string, bool)`

GetControlpanelOk returns a tuple with the Controlpanel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetControlpanel

`func (o *VpsOrderPostRequest) SetControlpanel(v string)`

SetControlpanel sets Controlpanel field to given value.

### HasControlpanel

`func (o *VpsOrderPostRequest) HasControlpanel() bool`

HasControlpanel returns a boolean if a field has been set.

### GetCoupon

`func (o *VpsOrderPostRequest) GetCoupon() string`

GetCoupon returns the Coupon field if non-nil, zero value otherwise.

### GetCouponOk

`func (o *VpsOrderPostRequest) GetCouponOk() (*string, bool)`

GetCouponOk returns a tuple with the Coupon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCoupon

`func (o *VpsOrderPostRequest) SetCoupon(v string)`

SetCoupon sets Coupon field to given value.

### HasCoupon

`func (o *VpsOrderPostRequest) HasCoupon() bool`

HasCoupon returns a boolean if a field has been set.

### GetComment

`func (o *VpsOrderPostRequest) GetComment() string`

GetComment returns the Comment field if non-nil, zero value otherwise.

### GetCommentOk

`func (o *VpsOrderPostRequest) GetCommentOk() (*string, bool)`

GetCommentOk returns a tuple with the Comment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetComment

`func (o *VpsOrderPostRequest) SetComment(v string)`

SetComment sets Comment field to given value.

### HasComment

`func (o *VpsOrderPostRequest) HasComment() bool`

HasComment returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


