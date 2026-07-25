# LicenseServiceInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LicenseId** | **string** | License ID | 
**LicenseType** | **string** | License type | 
**LicenseCurrency** | **string** | License currency | 
**LicenseOrderDate** | **time.Time** | License order date | 
**LicenseCustid** | **string** | Customer ID | 
**LicenseIp** | **string** | License IP | 
**LicenseStatus** | **string** | License status | 
**LicenseInvoice** | **string** | License invoice | 
**LicenseCoupon** | **string** | License coupon | 
**LicenseHostname** | Pointer to **string** | License hostname | [optional] 
**LicenseKey** | Pointer to **string** | License key | [optional] 
**LicenseExtra** | Pointer to **string** | Additional license information | [optional] 

## Methods

### NewLicenseServiceInfo

`func NewLicenseServiceInfo(licenseId string, licenseType string, licenseCurrency string, licenseOrderDate time.Time, licenseCustid string, licenseIp string, licenseStatus string, licenseInvoice string, licenseCoupon string, ) *LicenseServiceInfo`

NewLicenseServiceInfo instantiates a new LicenseServiceInfo object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLicenseServiceInfoWithDefaults

`func NewLicenseServiceInfoWithDefaults() *LicenseServiceInfo`

NewLicenseServiceInfoWithDefaults instantiates a new LicenseServiceInfo object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLicenseId

`func (o *LicenseServiceInfo) GetLicenseId() string`

GetLicenseId returns the LicenseId field if non-nil, zero value otherwise.

### GetLicenseIdOk

`func (o *LicenseServiceInfo) GetLicenseIdOk() (*string, bool)`

GetLicenseIdOk returns a tuple with the LicenseId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLicenseId

`func (o *LicenseServiceInfo) SetLicenseId(v string)`

SetLicenseId sets LicenseId field to given value.


### GetLicenseType

`func (o *LicenseServiceInfo) GetLicenseType() string`

GetLicenseType returns the LicenseType field if non-nil, zero value otherwise.

### GetLicenseTypeOk

`func (o *LicenseServiceInfo) GetLicenseTypeOk() (*string, bool)`

GetLicenseTypeOk returns a tuple with the LicenseType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLicenseType

`func (o *LicenseServiceInfo) SetLicenseType(v string)`

SetLicenseType sets LicenseType field to given value.


### GetLicenseCurrency

`func (o *LicenseServiceInfo) GetLicenseCurrency() string`

GetLicenseCurrency returns the LicenseCurrency field if non-nil, zero value otherwise.

### GetLicenseCurrencyOk

`func (o *LicenseServiceInfo) GetLicenseCurrencyOk() (*string, bool)`

GetLicenseCurrencyOk returns a tuple with the LicenseCurrency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLicenseCurrency

`func (o *LicenseServiceInfo) SetLicenseCurrency(v string)`

SetLicenseCurrency sets LicenseCurrency field to given value.


### GetLicenseOrderDate

`func (o *LicenseServiceInfo) GetLicenseOrderDate() time.Time`

GetLicenseOrderDate returns the LicenseOrderDate field if non-nil, zero value otherwise.

### GetLicenseOrderDateOk

`func (o *LicenseServiceInfo) GetLicenseOrderDateOk() (*time.Time, bool)`

GetLicenseOrderDateOk returns a tuple with the LicenseOrderDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLicenseOrderDate

`func (o *LicenseServiceInfo) SetLicenseOrderDate(v time.Time)`

SetLicenseOrderDate sets LicenseOrderDate field to given value.


### GetLicenseCustid

`func (o *LicenseServiceInfo) GetLicenseCustid() string`

GetLicenseCustid returns the LicenseCustid field if non-nil, zero value otherwise.

### GetLicenseCustidOk

`func (o *LicenseServiceInfo) GetLicenseCustidOk() (*string, bool)`

GetLicenseCustidOk returns a tuple with the LicenseCustid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLicenseCustid

`func (o *LicenseServiceInfo) SetLicenseCustid(v string)`

SetLicenseCustid sets LicenseCustid field to given value.


### GetLicenseIp

`func (o *LicenseServiceInfo) GetLicenseIp() string`

GetLicenseIp returns the LicenseIp field if non-nil, zero value otherwise.

### GetLicenseIpOk

`func (o *LicenseServiceInfo) GetLicenseIpOk() (*string, bool)`

GetLicenseIpOk returns a tuple with the LicenseIp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLicenseIp

`func (o *LicenseServiceInfo) SetLicenseIp(v string)`

SetLicenseIp sets LicenseIp field to given value.


### GetLicenseStatus

`func (o *LicenseServiceInfo) GetLicenseStatus() string`

GetLicenseStatus returns the LicenseStatus field if non-nil, zero value otherwise.

### GetLicenseStatusOk

`func (o *LicenseServiceInfo) GetLicenseStatusOk() (*string, bool)`

GetLicenseStatusOk returns a tuple with the LicenseStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLicenseStatus

`func (o *LicenseServiceInfo) SetLicenseStatus(v string)`

SetLicenseStatus sets LicenseStatus field to given value.


### GetLicenseInvoice

`func (o *LicenseServiceInfo) GetLicenseInvoice() string`

GetLicenseInvoice returns the LicenseInvoice field if non-nil, zero value otherwise.

### GetLicenseInvoiceOk

`func (o *LicenseServiceInfo) GetLicenseInvoiceOk() (*string, bool)`

GetLicenseInvoiceOk returns a tuple with the LicenseInvoice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLicenseInvoice

`func (o *LicenseServiceInfo) SetLicenseInvoice(v string)`

SetLicenseInvoice sets LicenseInvoice field to given value.


### GetLicenseCoupon

`func (o *LicenseServiceInfo) GetLicenseCoupon() string`

GetLicenseCoupon returns the LicenseCoupon field if non-nil, zero value otherwise.

### GetLicenseCouponOk

`func (o *LicenseServiceInfo) GetLicenseCouponOk() (*string, bool)`

GetLicenseCouponOk returns a tuple with the LicenseCoupon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLicenseCoupon

`func (o *LicenseServiceInfo) SetLicenseCoupon(v string)`

SetLicenseCoupon sets LicenseCoupon field to given value.


### GetLicenseHostname

`func (o *LicenseServiceInfo) GetLicenseHostname() string`

GetLicenseHostname returns the LicenseHostname field if non-nil, zero value otherwise.

### GetLicenseHostnameOk

`func (o *LicenseServiceInfo) GetLicenseHostnameOk() (*string, bool)`

GetLicenseHostnameOk returns a tuple with the LicenseHostname field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLicenseHostname

`func (o *LicenseServiceInfo) SetLicenseHostname(v string)`

SetLicenseHostname sets LicenseHostname field to given value.

### HasLicenseHostname

`func (o *LicenseServiceInfo) HasLicenseHostname() bool`

HasLicenseHostname returns a boolean if a field has been set.

### GetLicenseKey

`func (o *LicenseServiceInfo) GetLicenseKey() string`

GetLicenseKey returns the LicenseKey field if non-nil, zero value otherwise.

### GetLicenseKeyOk

`func (o *LicenseServiceInfo) GetLicenseKeyOk() (*string, bool)`

GetLicenseKeyOk returns a tuple with the LicenseKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLicenseKey

`func (o *LicenseServiceInfo) SetLicenseKey(v string)`

SetLicenseKey sets LicenseKey field to given value.

### HasLicenseKey

`func (o *LicenseServiceInfo) HasLicenseKey() bool`

HasLicenseKey returns a boolean if a field has been set.

### GetLicenseExtra

`func (o *LicenseServiceInfo) GetLicenseExtra() string`

GetLicenseExtra returns the LicenseExtra field if non-nil, zero value otherwise.

### GetLicenseExtraOk

`func (o *LicenseServiceInfo) GetLicenseExtraOk() (*string, bool)`

GetLicenseExtraOk returns a tuple with the LicenseExtra field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLicenseExtra

`func (o *LicenseServiceInfo) SetLicenseExtra(v string)`

SetLicenseExtra sets LicenseExtra field to given value.

### HasLicenseExtra

`func (o *LicenseServiceInfo) HasLicenseExtra() bool`

HasLicenseExtra returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


