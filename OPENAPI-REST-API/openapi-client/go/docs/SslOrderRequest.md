# SslOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ssl** | **int32** | SSL package service type id from getNewSsl.serviceTypes. | 
**Hostname** | **string** | Domain the certificate is issued for. Wildcard certs require *.domain.com format. | 
**ApproverEmail** | **string** | Domain-control approver email (required for all SSL orders). | 
**Frequency** | Pointer to **int32** | Billing frequency in months (12, 24, or 36). | [optional] [default to 12]
**Coupon** | Pointer to **string** | Coupon code. | [optional] [default to ""]
**CsrType** | Pointer to **string** | Whether the CSR is server-generated or customer-provided. | [optional] [default to "generated"]
**Csr** | Pointer to **string** | PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided. | [optional] [default to ""]
**Firstname** | Pointer to **string** | Contact first name (defaults from account). | [optional] 
**Lastname** | Pointer to **string** | Contact last name (defaults from account). | [optional] 
**Email** | Pointer to **string** | Contact email (defaults from account). | [optional] 
**Address** | Pointer to **string** | Contact address (defaults from account). | [optional] 
**City** | Pointer to **string** | Contact city (defaults from account). | [optional] 
**State** | Pointer to **string** | Contact state/region (defaults from account). | [optional] 
**Zip** | Pointer to **string** | Contact postal code (defaults from account). | [optional] 
**Country** | Pointer to **string** | Contact country (defaults from account). | [optional] 
**Phone** | Pointer to **string** | Contact phone (defaults from account). | [optional] 
**Company** | Pointer to **string** | Contact company/organization (defaults from account). | [optional] 
**Department** | Pointer to **string** | Contact department (defaults to Administration). | [optional] [default to "Administration"]
**Agency** | Pointer to **string** | EV certificate incorporating agency (only for EV packages). | [optional] 
**BusinessCategory** | Pointer to **string** | EV certificate business category (only for EV packages). | [optional] 

## Methods

### NewSslOrderRequest

`func NewSslOrderRequest(ssl int32, hostname string, approverEmail string, ) *SslOrderRequest`

NewSslOrderRequest instantiates a new SslOrderRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSslOrderRequestWithDefaults

`func NewSslOrderRequestWithDefaults() *SslOrderRequest`

NewSslOrderRequestWithDefaults instantiates a new SslOrderRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSsl

`func (o *SslOrderRequest) GetSsl() int32`

GetSsl returns the Ssl field if non-nil, zero value otherwise.

### GetSslOk

`func (o *SslOrderRequest) GetSslOk() (*int32, bool)`

GetSslOk returns a tuple with the Ssl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSsl

`func (o *SslOrderRequest) SetSsl(v int32)`

SetSsl sets Ssl field to given value.


### GetHostname

`func (o *SslOrderRequest) GetHostname() string`

GetHostname returns the Hostname field if non-nil, zero value otherwise.

### GetHostnameOk

`func (o *SslOrderRequest) GetHostnameOk() (*string, bool)`

GetHostnameOk returns a tuple with the Hostname field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHostname

`func (o *SslOrderRequest) SetHostname(v string)`

SetHostname sets Hostname field to given value.


### GetApproverEmail

`func (o *SslOrderRequest) GetApproverEmail() string`

GetApproverEmail returns the ApproverEmail field if non-nil, zero value otherwise.

### GetApproverEmailOk

`func (o *SslOrderRequest) GetApproverEmailOk() (*string, bool)`

GetApproverEmailOk returns a tuple with the ApproverEmail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApproverEmail

`func (o *SslOrderRequest) SetApproverEmail(v string)`

SetApproverEmail sets ApproverEmail field to given value.


### GetFrequency

`func (o *SslOrderRequest) GetFrequency() int32`

GetFrequency returns the Frequency field if non-nil, zero value otherwise.

### GetFrequencyOk

`func (o *SslOrderRequest) GetFrequencyOk() (*int32, bool)`

GetFrequencyOk returns a tuple with the Frequency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrequency

`func (o *SslOrderRequest) SetFrequency(v int32)`

SetFrequency sets Frequency field to given value.

### HasFrequency

`func (o *SslOrderRequest) HasFrequency() bool`

HasFrequency returns a boolean if a field has been set.

### GetCoupon

`func (o *SslOrderRequest) GetCoupon() string`

GetCoupon returns the Coupon field if non-nil, zero value otherwise.

### GetCouponOk

`func (o *SslOrderRequest) GetCouponOk() (*string, bool)`

GetCouponOk returns a tuple with the Coupon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCoupon

`func (o *SslOrderRequest) SetCoupon(v string)`

SetCoupon sets Coupon field to given value.

### HasCoupon

`func (o *SslOrderRequest) HasCoupon() bool`

HasCoupon returns a boolean if a field has been set.

### GetCsrType

`func (o *SslOrderRequest) GetCsrType() string`

GetCsrType returns the CsrType field if non-nil, zero value otherwise.

### GetCsrTypeOk

`func (o *SslOrderRequest) GetCsrTypeOk() (*string, bool)`

GetCsrTypeOk returns a tuple with the CsrType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCsrType

`func (o *SslOrderRequest) SetCsrType(v string)`

SetCsrType sets CsrType field to given value.

### HasCsrType

`func (o *SslOrderRequest) HasCsrType() bool`

HasCsrType returns a boolean if a field has been set.

### GetCsr

`func (o *SslOrderRequest) GetCsr() string`

GetCsr returns the Csr field if non-nil, zero value otherwise.

### GetCsrOk

`func (o *SslOrderRequest) GetCsrOk() (*string, bool)`

GetCsrOk returns a tuple with the Csr field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCsr

`func (o *SslOrderRequest) SetCsr(v string)`

SetCsr sets Csr field to given value.

### HasCsr

`func (o *SslOrderRequest) HasCsr() bool`

HasCsr returns a boolean if a field has been set.

### GetFirstname

`func (o *SslOrderRequest) GetFirstname() string`

GetFirstname returns the Firstname field if non-nil, zero value otherwise.

### GetFirstnameOk

`func (o *SslOrderRequest) GetFirstnameOk() (*string, bool)`

GetFirstnameOk returns a tuple with the Firstname field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFirstname

`func (o *SslOrderRequest) SetFirstname(v string)`

SetFirstname sets Firstname field to given value.

### HasFirstname

`func (o *SslOrderRequest) HasFirstname() bool`

HasFirstname returns a boolean if a field has been set.

### GetLastname

`func (o *SslOrderRequest) GetLastname() string`

GetLastname returns the Lastname field if non-nil, zero value otherwise.

### GetLastnameOk

`func (o *SslOrderRequest) GetLastnameOk() (*string, bool)`

GetLastnameOk returns a tuple with the Lastname field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastname

`func (o *SslOrderRequest) SetLastname(v string)`

SetLastname sets Lastname field to given value.

### HasLastname

`func (o *SslOrderRequest) HasLastname() bool`

HasLastname returns a boolean if a field has been set.

### GetEmail

`func (o *SslOrderRequest) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *SslOrderRequest) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *SslOrderRequest) SetEmail(v string)`

SetEmail sets Email field to given value.

### HasEmail

`func (o *SslOrderRequest) HasEmail() bool`

HasEmail returns a boolean if a field has been set.

### GetAddress

`func (o *SslOrderRequest) GetAddress() string`

GetAddress returns the Address field if non-nil, zero value otherwise.

### GetAddressOk

`func (o *SslOrderRequest) GetAddressOk() (*string, bool)`

GetAddressOk returns a tuple with the Address field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAddress

`func (o *SslOrderRequest) SetAddress(v string)`

SetAddress sets Address field to given value.

### HasAddress

`func (o *SslOrderRequest) HasAddress() bool`

HasAddress returns a boolean if a field has been set.

### GetCity

`func (o *SslOrderRequest) GetCity() string`

GetCity returns the City field if non-nil, zero value otherwise.

### GetCityOk

`func (o *SslOrderRequest) GetCityOk() (*string, bool)`

GetCityOk returns a tuple with the City field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCity

`func (o *SslOrderRequest) SetCity(v string)`

SetCity sets City field to given value.

### HasCity

`func (o *SslOrderRequest) HasCity() bool`

HasCity returns a boolean if a field has been set.

### GetState

`func (o *SslOrderRequest) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *SslOrderRequest) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *SslOrderRequest) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *SslOrderRequest) HasState() bool`

HasState returns a boolean if a field has been set.

### GetZip

`func (o *SslOrderRequest) GetZip() string`

GetZip returns the Zip field if non-nil, zero value otherwise.

### GetZipOk

`func (o *SslOrderRequest) GetZipOk() (*string, bool)`

GetZipOk returns a tuple with the Zip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetZip

`func (o *SslOrderRequest) SetZip(v string)`

SetZip sets Zip field to given value.

### HasZip

`func (o *SslOrderRequest) HasZip() bool`

HasZip returns a boolean if a field has been set.

### GetCountry

`func (o *SslOrderRequest) GetCountry() string`

GetCountry returns the Country field if non-nil, zero value otherwise.

### GetCountryOk

`func (o *SslOrderRequest) GetCountryOk() (*string, bool)`

GetCountryOk returns a tuple with the Country field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCountry

`func (o *SslOrderRequest) SetCountry(v string)`

SetCountry sets Country field to given value.

### HasCountry

`func (o *SslOrderRequest) HasCountry() bool`

HasCountry returns a boolean if a field has been set.

### GetPhone

`func (o *SslOrderRequest) GetPhone() string`

GetPhone returns the Phone field if non-nil, zero value otherwise.

### GetPhoneOk

`func (o *SslOrderRequest) GetPhoneOk() (*string, bool)`

GetPhoneOk returns a tuple with the Phone field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhone

`func (o *SslOrderRequest) SetPhone(v string)`

SetPhone sets Phone field to given value.

### HasPhone

`func (o *SslOrderRequest) HasPhone() bool`

HasPhone returns a boolean if a field has been set.

### GetCompany

`func (o *SslOrderRequest) GetCompany() string`

GetCompany returns the Company field if non-nil, zero value otherwise.

### GetCompanyOk

`func (o *SslOrderRequest) GetCompanyOk() (*string, bool)`

GetCompanyOk returns a tuple with the Company field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCompany

`func (o *SslOrderRequest) SetCompany(v string)`

SetCompany sets Company field to given value.

### HasCompany

`func (o *SslOrderRequest) HasCompany() bool`

HasCompany returns a boolean if a field has been set.

### GetDepartment

`func (o *SslOrderRequest) GetDepartment() string`

GetDepartment returns the Department field if non-nil, zero value otherwise.

### GetDepartmentOk

`func (o *SslOrderRequest) GetDepartmentOk() (*string, bool)`

GetDepartmentOk returns a tuple with the Department field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDepartment

`func (o *SslOrderRequest) SetDepartment(v string)`

SetDepartment sets Department field to given value.

### HasDepartment

`func (o *SslOrderRequest) HasDepartment() bool`

HasDepartment returns a boolean if a field has been set.

### GetAgency

`func (o *SslOrderRequest) GetAgency() string`

GetAgency returns the Agency field if non-nil, zero value otherwise.

### GetAgencyOk

`func (o *SslOrderRequest) GetAgencyOk() (*string, bool)`

GetAgencyOk returns a tuple with the Agency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgency

`func (o *SslOrderRequest) SetAgency(v string)`

SetAgency sets Agency field to given value.

### HasAgency

`func (o *SslOrderRequest) HasAgency() bool`

HasAgency returns a boolean if a field has been set.

### GetBusinessCategory

`func (o *SslOrderRequest) GetBusinessCategory() string`

GetBusinessCategory returns the BusinessCategory field if non-nil, zero value otherwise.

### GetBusinessCategoryOk

`func (o *SslOrderRequest) GetBusinessCategoryOk() (*string, bool)`

GetBusinessCategoryOk returns a tuple with the BusinessCategory field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBusinessCategory

`func (o *SslOrderRequest) SetBusinessCategory(v string)`

SetBusinessCategory sets BusinessCategory field to given value.

### HasBusinessCategory

`func (o *SslOrderRequest) HasBusinessCategory() bool`

HasBusinessCategory returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


