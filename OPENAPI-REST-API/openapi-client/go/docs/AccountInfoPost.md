# AccountInfoPost

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** | Your name. | 
**Address** | **string** | Your address. | 
**City** | **string** | Your city. | 
**State** | **string** | Your state. | 
**Zip** | **string** | Your ZIP code. | 
**Country** | **string** | Your country. | 
**Phone** | **string** | Your phone number. | 
**Company** | Pointer to **string** | Your company name. | [optional] 
**Address2** | Pointer to **string** | Additional address information. | [optional] 
**Locale** | Pointer to **string** | Your preferred locale. | [optional] 
**EmailInvoices** | Pointer to **string** | Your email for invoice notifications. | [optional] 
**EmailAbuse** | Pointer to **string** | Your email for abuse notifications. | [optional] 
**DisableReset** | Pointer to **bool** | Set to &#x60;true&#x60; to disable account resets, or &#x60;false&#x60; to enable them. | [optional] 
**DisableReinstall** | Pointer to **bool** | Set to &#x60;true&#x60; to disable server reinstalls, or &#x60;false&#x60; to enable them. | [optional] 
**DisableServerNotifications** | Pointer to **bool** | Set to &#x60;true&#x60; to disable server notifications, or &#x60;false&#x60; to enable them. | [optional] 
**DisableEmailNotifications** | Pointer to **bool** | Set to &#x60;true&#x60; to disable email notifications, or &#x60;false&#x60; to enable them. | [optional] 
**Gstin** | Pointer to **string** | Your GST identification number (if applicable). | [optional] 

## Methods

### NewAccountInfoPost

`func NewAccountInfoPost(name string, address string, city string, state string, zip string, country string, phone string, ) *AccountInfoPost`

NewAccountInfoPost instantiates a new AccountInfoPost object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountInfoPostWithDefaults

`func NewAccountInfoPostWithDefaults() *AccountInfoPost`

NewAccountInfoPostWithDefaults instantiates a new AccountInfoPost object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *AccountInfoPost) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AccountInfoPost) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AccountInfoPost) SetName(v string)`

SetName sets Name field to given value.


### GetAddress

`func (o *AccountInfoPost) GetAddress() string`

GetAddress returns the Address field if non-nil, zero value otherwise.

### GetAddressOk

`func (o *AccountInfoPost) GetAddressOk() (*string, bool)`

GetAddressOk returns a tuple with the Address field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAddress

`func (o *AccountInfoPost) SetAddress(v string)`

SetAddress sets Address field to given value.


### GetCity

`func (o *AccountInfoPost) GetCity() string`

GetCity returns the City field if non-nil, zero value otherwise.

### GetCityOk

`func (o *AccountInfoPost) GetCityOk() (*string, bool)`

GetCityOk returns a tuple with the City field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCity

`func (o *AccountInfoPost) SetCity(v string)`

SetCity sets City field to given value.


### GetState

`func (o *AccountInfoPost) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *AccountInfoPost) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *AccountInfoPost) SetState(v string)`

SetState sets State field to given value.


### GetZip

`func (o *AccountInfoPost) GetZip() string`

GetZip returns the Zip field if non-nil, zero value otherwise.

### GetZipOk

`func (o *AccountInfoPost) GetZipOk() (*string, bool)`

GetZipOk returns a tuple with the Zip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetZip

`func (o *AccountInfoPost) SetZip(v string)`

SetZip sets Zip field to given value.


### GetCountry

`func (o *AccountInfoPost) GetCountry() string`

GetCountry returns the Country field if non-nil, zero value otherwise.

### GetCountryOk

`func (o *AccountInfoPost) GetCountryOk() (*string, bool)`

GetCountryOk returns a tuple with the Country field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCountry

`func (o *AccountInfoPost) SetCountry(v string)`

SetCountry sets Country field to given value.


### GetPhone

`func (o *AccountInfoPost) GetPhone() string`

GetPhone returns the Phone field if non-nil, zero value otherwise.

### GetPhoneOk

`func (o *AccountInfoPost) GetPhoneOk() (*string, bool)`

GetPhoneOk returns a tuple with the Phone field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhone

`func (o *AccountInfoPost) SetPhone(v string)`

SetPhone sets Phone field to given value.


### GetCompany

`func (o *AccountInfoPost) GetCompany() string`

GetCompany returns the Company field if non-nil, zero value otherwise.

### GetCompanyOk

`func (o *AccountInfoPost) GetCompanyOk() (*string, bool)`

GetCompanyOk returns a tuple with the Company field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCompany

`func (o *AccountInfoPost) SetCompany(v string)`

SetCompany sets Company field to given value.

### HasCompany

`func (o *AccountInfoPost) HasCompany() bool`

HasCompany returns a boolean if a field has been set.

### GetAddress2

`func (o *AccountInfoPost) GetAddress2() string`

GetAddress2 returns the Address2 field if non-nil, zero value otherwise.

### GetAddress2Ok

`func (o *AccountInfoPost) GetAddress2Ok() (*string, bool)`

GetAddress2Ok returns a tuple with the Address2 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAddress2

`func (o *AccountInfoPost) SetAddress2(v string)`

SetAddress2 sets Address2 field to given value.

### HasAddress2

`func (o *AccountInfoPost) HasAddress2() bool`

HasAddress2 returns a boolean if a field has been set.

### GetLocale

`func (o *AccountInfoPost) GetLocale() string`

GetLocale returns the Locale field if non-nil, zero value otherwise.

### GetLocaleOk

`func (o *AccountInfoPost) GetLocaleOk() (*string, bool)`

GetLocaleOk returns a tuple with the Locale field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocale

`func (o *AccountInfoPost) SetLocale(v string)`

SetLocale sets Locale field to given value.

### HasLocale

`func (o *AccountInfoPost) HasLocale() bool`

HasLocale returns a boolean if a field has been set.

### GetEmailInvoices

`func (o *AccountInfoPost) GetEmailInvoices() string`

GetEmailInvoices returns the EmailInvoices field if non-nil, zero value otherwise.

### GetEmailInvoicesOk

`func (o *AccountInfoPost) GetEmailInvoicesOk() (*string, bool)`

GetEmailInvoicesOk returns a tuple with the EmailInvoices field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmailInvoices

`func (o *AccountInfoPost) SetEmailInvoices(v string)`

SetEmailInvoices sets EmailInvoices field to given value.

### HasEmailInvoices

`func (o *AccountInfoPost) HasEmailInvoices() bool`

HasEmailInvoices returns a boolean if a field has been set.

### GetEmailAbuse

`func (o *AccountInfoPost) GetEmailAbuse() string`

GetEmailAbuse returns the EmailAbuse field if non-nil, zero value otherwise.

### GetEmailAbuseOk

`func (o *AccountInfoPost) GetEmailAbuseOk() (*string, bool)`

GetEmailAbuseOk returns a tuple with the EmailAbuse field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmailAbuse

`func (o *AccountInfoPost) SetEmailAbuse(v string)`

SetEmailAbuse sets EmailAbuse field to given value.

### HasEmailAbuse

`func (o *AccountInfoPost) HasEmailAbuse() bool`

HasEmailAbuse returns a boolean if a field has been set.

### GetDisableReset

`func (o *AccountInfoPost) GetDisableReset() bool`

GetDisableReset returns the DisableReset field if non-nil, zero value otherwise.

### GetDisableResetOk

`func (o *AccountInfoPost) GetDisableResetOk() (*bool, bool)`

GetDisableResetOk returns a tuple with the DisableReset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisableReset

`func (o *AccountInfoPost) SetDisableReset(v bool)`

SetDisableReset sets DisableReset field to given value.

### HasDisableReset

`func (o *AccountInfoPost) HasDisableReset() bool`

HasDisableReset returns a boolean if a field has been set.

### GetDisableReinstall

`func (o *AccountInfoPost) GetDisableReinstall() bool`

GetDisableReinstall returns the DisableReinstall field if non-nil, zero value otherwise.

### GetDisableReinstallOk

`func (o *AccountInfoPost) GetDisableReinstallOk() (*bool, bool)`

GetDisableReinstallOk returns a tuple with the DisableReinstall field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisableReinstall

`func (o *AccountInfoPost) SetDisableReinstall(v bool)`

SetDisableReinstall sets DisableReinstall field to given value.

### HasDisableReinstall

`func (o *AccountInfoPost) HasDisableReinstall() bool`

HasDisableReinstall returns a boolean if a field has been set.

### GetDisableServerNotifications

`func (o *AccountInfoPost) GetDisableServerNotifications() bool`

GetDisableServerNotifications returns the DisableServerNotifications field if non-nil, zero value otherwise.

### GetDisableServerNotificationsOk

`func (o *AccountInfoPost) GetDisableServerNotificationsOk() (*bool, bool)`

GetDisableServerNotificationsOk returns a tuple with the DisableServerNotifications field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisableServerNotifications

`func (o *AccountInfoPost) SetDisableServerNotifications(v bool)`

SetDisableServerNotifications sets DisableServerNotifications field to given value.

### HasDisableServerNotifications

`func (o *AccountInfoPost) HasDisableServerNotifications() bool`

HasDisableServerNotifications returns a boolean if a field has been set.

### GetDisableEmailNotifications

`func (o *AccountInfoPost) GetDisableEmailNotifications() bool`

GetDisableEmailNotifications returns the DisableEmailNotifications field if non-nil, zero value otherwise.

### GetDisableEmailNotificationsOk

`func (o *AccountInfoPost) GetDisableEmailNotificationsOk() (*bool, bool)`

GetDisableEmailNotificationsOk returns a tuple with the DisableEmailNotifications field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisableEmailNotifications

`func (o *AccountInfoPost) SetDisableEmailNotifications(v bool)`

SetDisableEmailNotifications sets DisableEmailNotifications field to given value.

### HasDisableEmailNotifications

`func (o *AccountInfoPost) HasDisableEmailNotifications() bool`

HasDisableEmailNotifications returns a boolean if a field has been set.

### GetGstin

`func (o *AccountInfoPost) GetGstin() string`

GetGstin returns the Gstin field if non-nil, zero value otherwise.

### GetGstinOk

`func (o *AccountInfoPost) GetGstinOk() (*string, bool)`

GetGstinOk returns a tuple with the Gstin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGstin

`func (o *AccountInfoPost) SetGstin(v string)`

SetGstin sets Gstin field to given value.

### HasGstin

`func (o *AccountInfoPost) HasGstin() bool`

HasGstin returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


