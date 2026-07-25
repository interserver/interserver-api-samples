# WebsiteOrderPostRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hostname** | **string** | Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. | 
**PackageId** | **int32** | Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). | 
**Rootpass** | Pointer to **string** | Control-panel admin password. If blank, a random password is generated server-side. | [optional] [default to ""]
**Period** | Pointer to **int32** | Billing cycle in months (1 / 6 / 12 / 24 / 36). | [optional] [default to 1]
**Coupon** | Pointer to **string** | Coupon code. | [optional] [default to ""]
**ServiceOfferId** | Pointer to **int32** | Promo bundle id from getNewWebsite.serviceOffers. | [optional] [default to 0]
**Script** | Pointer to **int32** | Auto-installer id (0 &#x3D; none). | [optional] [default to 0]
**Comment** | Pointer to **string** | Free-form note saved on the service row. | [optional] [default to ""]
**RegisterDomain** | Pointer to **bool** | When true and enableDomainRegistering&#x3D;true from the catalog, also registers/transfers the domain through the order. | [optional] [default to false]

## Methods

### NewWebsiteOrderPostRequest

`func NewWebsiteOrderPostRequest(hostname string, packageId int32, ) *WebsiteOrderPostRequest`

NewWebsiteOrderPostRequest instantiates a new WebsiteOrderPostRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewWebsiteOrderPostRequestWithDefaults

`func NewWebsiteOrderPostRequestWithDefaults() *WebsiteOrderPostRequest`

NewWebsiteOrderPostRequestWithDefaults instantiates a new WebsiteOrderPostRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetHostname

`func (o *WebsiteOrderPostRequest) GetHostname() string`

GetHostname returns the Hostname field if non-nil, zero value otherwise.

### GetHostnameOk

`func (o *WebsiteOrderPostRequest) GetHostnameOk() (*string, bool)`

GetHostnameOk returns a tuple with the Hostname field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHostname

`func (o *WebsiteOrderPostRequest) SetHostname(v string)`

SetHostname sets Hostname field to given value.


### GetPackageId

`func (o *WebsiteOrderPostRequest) GetPackageId() int32`

GetPackageId returns the PackageId field if non-nil, zero value otherwise.

### GetPackageIdOk

`func (o *WebsiteOrderPostRequest) GetPackageIdOk() (*int32, bool)`

GetPackageIdOk returns a tuple with the PackageId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPackageId

`func (o *WebsiteOrderPostRequest) SetPackageId(v int32)`

SetPackageId sets PackageId field to given value.


### GetRootpass

`func (o *WebsiteOrderPostRequest) GetRootpass() string`

GetRootpass returns the Rootpass field if non-nil, zero value otherwise.

### GetRootpassOk

`func (o *WebsiteOrderPostRequest) GetRootpassOk() (*string, bool)`

GetRootpassOk returns a tuple with the Rootpass field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRootpass

`func (o *WebsiteOrderPostRequest) SetRootpass(v string)`

SetRootpass sets Rootpass field to given value.

### HasRootpass

`func (o *WebsiteOrderPostRequest) HasRootpass() bool`

HasRootpass returns a boolean if a field has been set.

### GetPeriod

`func (o *WebsiteOrderPostRequest) GetPeriod() int32`

GetPeriod returns the Period field if non-nil, zero value otherwise.

### GetPeriodOk

`func (o *WebsiteOrderPostRequest) GetPeriodOk() (*int32, bool)`

GetPeriodOk returns a tuple with the Period field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriod

`func (o *WebsiteOrderPostRequest) SetPeriod(v int32)`

SetPeriod sets Period field to given value.

### HasPeriod

`func (o *WebsiteOrderPostRequest) HasPeriod() bool`

HasPeriod returns a boolean if a field has been set.

### GetCoupon

`func (o *WebsiteOrderPostRequest) GetCoupon() string`

GetCoupon returns the Coupon field if non-nil, zero value otherwise.

### GetCouponOk

`func (o *WebsiteOrderPostRequest) GetCouponOk() (*string, bool)`

GetCouponOk returns a tuple with the Coupon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCoupon

`func (o *WebsiteOrderPostRequest) SetCoupon(v string)`

SetCoupon sets Coupon field to given value.

### HasCoupon

`func (o *WebsiteOrderPostRequest) HasCoupon() bool`

HasCoupon returns a boolean if a field has been set.

### GetServiceOfferId

`func (o *WebsiteOrderPostRequest) GetServiceOfferId() int32`

GetServiceOfferId returns the ServiceOfferId field if non-nil, zero value otherwise.

### GetServiceOfferIdOk

`func (o *WebsiteOrderPostRequest) GetServiceOfferIdOk() (*int32, bool)`

GetServiceOfferIdOk returns a tuple with the ServiceOfferId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceOfferId

`func (o *WebsiteOrderPostRequest) SetServiceOfferId(v int32)`

SetServiceOfferId sets ServiceOfferId field to given value.

### HasServiceOfferId

`func (o *WebsiteOrderPostRequest) HasServiceOfferId() bool`

HasServiceOfferId returns a boolean if a field has been set.

### GetScript

`func (o *WebsiteOrderPostRequest) GetScript() int32`

GetScript returns the Script field if non-nil, zero value otherwise.

### GetScriptOk

`func (o *WebsiteOrderPostRequest) GetScriptOk() (*int32, bool)`

GetScriptOk returns a tuple with the Script field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScript

`func (o *WebsiteOrderPostRequest) SetScript(v int32)`

SetScript sets Script field to given value.

### HasScript

`func (o *WebsiteOrderPostRequest) HasScript() bool`

HasScript returns a boolean if a field has been set.

### GetComment

`func (o *WebsiteOrderPostRequest) GetComment() string`

GetComment returns the Comment field if non-nil, zero value otherwise.

### GetCommentOk

`func (o *WebsiteOrderPostRequest) GetCommentOk() (*string, bool)`

GetCommentOk returns a tuple with the Comment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetComment

`func (o *WebsiteOrderPostRequest) SetComment(v string)`

SetComment sets Comment field to given value.

### HasComment

`func (o *WebsiteOrderPostRequest) HasComment() bool`

HasComment returns a boolean if a field has been set.

### GetRegisterDomain

`func (o *WebsiteOrderPostRequest) GetRegisterDomain() bool`

GetRegisterDomain returns the RegisterDomain field if non-nil, zero value otherwise.

### GetRegisterDomainOk

`func (o *WebsiteOrderPostRequest) GetRegisterDomainOk() (*bool, bool)`

GetRegisterDomainOk returns a tuple with the RegisterDomain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegisterDomain

`func (o *WebsiteOrderPostRequest) SetRegisterDomain(v bool)`

SetRegisterDomain sets RegisterDomain field to given value.

### HasRegisterDomain

`func (o *WebsiteOrderPostRequest) HasRegisterDomain() bool`

HasRegisterDomain returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


