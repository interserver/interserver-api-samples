# MailServiceInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MailId** | **string** | The ID of the mail service. | 
**MailType** | **string** | The type of mail service. | 
**MailCurrency** | **string** | The currency of the mail service. | 
**MailOrderDate** | **string** | The order date of the mail service. | 
**MailCustid** | **string** | The customer ID associated with the mail service. | 
**MailQuota** | **string** | The mail quota for the service. | 
**MailStatus** | **string** | The status of the mail service. | 
**MailInvoice** | **string** | The invoice ID of the mail service. | 
**MailUsername** | Pointer to **string** | The username associated with the mail service. | [optional] 
**MailIp** | Pointer to **string** | The IP address associated with the mail service. | [optional] 
**MailCoupon** | Pointer to **string** | The coupon associated with the mail service. | [optional] 
**MailExtra** | Pointer to **string** | Additional information for the mail service. | [optional] 
**MailServerStatus** | Pointer to **string** | The server status of the mail service. | [optional] 
**MailComment** | Pointer to **string** | Additional comments for the mail service. | [optional] 

## Methods

### NewMailServiceInfo

`func NewMailServiceInfo(mailId string, mailType string, mailCurrency string, mailOrderDate string, mailCustid string, mailQuota string, mailStatus string, mailInvoice string, ) *MailServiceInfo`

NewMailServiceInfo instantiates a new MailServiceInfo object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMailServiceInfoWithDefaults

`func NewMailServiceInfoWithDefaults() *MailServiceInfo`

NewMailServiceInfoWithDefaults instantiates a new MailServiceInfo object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMailId

`func (o *MailServiceInfo) GetMailId() string`

GetMailId returns the MailId field if non-nil, zero value otherwise.

### GetMailIdOk

`func (o *MailServiceInfo) GetMailIdOk() (*string, bool)`

GetMailIdOk returns a tuple with the MailId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMailId

`func (o *MailServiceInfo) SetMailId(v string)`

SetMailId sets MailId field to given value.


### GetMailType

`func (o *MailServiceInfo) GetMailType() string`

GetMailType returns the MailType field if non-nil, zero value otherwise.

### GetMailTypeOk

`func (o *MailServiceInfo) GetMailTypeOk() (*string, bool)`

GetMailTypeOk returns a tuple with the MailType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMailType

`func (o *MailServiceInfo) SetMailType(v string)`

SetMailType sets MailType field to given value.


### GetMailCurrency

`func (o *MailServiceInfo) GetMailCurrency() string`

GetMailCurrency returns the MailCurrency field if non-nil, zero value otherwise.

### GetMailCurrencyOk

`func (o *MailServiceInfo) GetMailCurrencyOk() (*string, bool)`

GetMailCurrencyOk returns a tuple with the MailCurrency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMailCurrency

`func (o *MailServiceInfo) SetMailCurrency(v string)`

SetMailCurrency sets MailCurrency field to given value.


### GetMailOrderDate

`func (o *MailServiceInfo) GetMailOrderDate() string`

GetMailOrderDate returns the MailOrderDate field if non-nil, zero value otherwise.

### GetMailOrderDateOk

`func (o *MailServiceInfo) GetMailOrderDateOk() (*string, bool)`

GetMailOrderDateOk returns a tuple with the MailOrderDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMailOrderDate

`func (o *MailServiceInfo) SetMailOrderDate(v string)`

SetMailOrderDate sets MailOrderDate field to given value.


### GetMailCustid

`func (o *MailServiceInfo) GetMailCustid() string`

GetMailCustid returns the MailCustid field if non-nil, zero value otherwise.

### GetMailCustidOk

`func (o *MailServiceInfo) GetMailCustidOk() (*string, bool)`

GetMailCustidOk returns a tuple with the MailCustid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMailCustid

`func (o *MailServiceInfo) SetMailCustid(v string)`

SetMailCustid sets MailCustid field to given value.


### GetMailQuota

`func (o *MailServiceInfo) GetMailQuota() string`

GetMailQuota returns the MailQuota field if non-nil, zero value otherwise.

### GetMailQuotaOk

`func (o *MailServiceInfo) GetMailQuotaOk() (*string, bool)`

GetMailQuotaOk returns a tuple with the MailQuota field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMailQuota

`func (o *MailServiceInfo) SetMailQuota(v string)`

SetMailQuota sets MailQuota field to given value.


### GetMailStatus

`func (o *MailServiceInfo) GetMailStatus() string`

GetMailStatus returns the MailStatus field if non-nil, zero value otherwise.

### GetMailStatusOk

`func (o *MailServiceInfo) GetMailStatusOk() (*string, bool)`

GetMailStatusOk returns a tuple with the MailStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMailStatus

`func (o *MailServiceInfo) SetMailStatus(v string)`

SetMailStatus sets MailStatus field to given value.


### GetMailInvoice

`func (o *MailServiceInfo) GetMailInvoice() string`

GetMailInvoice returns the MailInvoice field if non-nil, zero value otherwise.

### GetMailInvoiceOk

`func (o *MailServiceInfo) GetMailInvoiceOk() (*string, bool)`

GetMailInvoiceOk returns a tuple with the MailInvoice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMailInvoice

`func (o *MailServiceInfo) SetMailInvoice(v string)`

SetMailInvoice sets MailInvoice field to given value.


### GetMailUsername

`func (o *MailServiceInfo) GetMailUsername() string`

GetMailUsername returns the MailUsername field if non-nil, zero value otherwise.

### GetMailUsernameOk

`func (o *MailServiceInfo) GetMailUsernameOk() (*string, bool)`

GetMailUsernameOk returns a tuple with the MailUsername field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMailUsername

`func (o *MailServiceInfo) SetMailUsername(v string)`

SetMailUsername sets MailUsername field to given value.

### HasMailUsername

`func (o *MailServiceInfo) HasMailUsername() bool`

HasMailUsername returns a boolean if a field has been set.

### GetMailIp

`func (o *MailServiceInfo) GetMailIp() string`

GetMailIp returns the MailIp field if non-nil, zero value otherwise.

### GetMailIpOk

`func (o *MailServiceInfo) GetMailIpOk() (*string, bool)`

GetMailIpOk returns a tuple with the MailIp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMailIp

`func (o *MailServiceInfo) SetMailIp(v string)`

SetMailIp sets MailIp field to given value.

### HasMailIp

`func (o *MailServiceInfo) HasMailIp() bool`

HasMailIp returns a boolean if a field has been set.

### GetMailCoupon

`func (o *MailServiceInfo) GetMailCoupon() string`

GetMailCoupon returns the MailCoupon field if non-nil, zero value otherwise.

### GetMailCouponOk

`func (o *MailServiceInfo) GetMailCouponOk() (*string, bool)`

GetMailCouponOk returns a tuple with the MailCoupon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMailCoupon

`func (o *MailServiceInfo) SetMailCoupon(v string)`

SetMailCoupon sets MailCoupon field to given value.

### HasMailCoupon

`func (o *MailServiceInfo) HasMailCoupon() bool`

HasMailCoupon returns a boolean if a field has been set.

### GetMailExtra

`func (o *MailServiceInfo) GetMailExtra() string`

GetMailExtra returns the MailExtra field if non-nil, zero value otherwise.

### GetMailExtraOk

`func (o *MailServiceInfo) GetMailExtraOk() (*string, bool)`

GetMailExtraOk returns a tuple with the MailExtra field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMailExtra

`func (o *MailServiceInfo) SetMailExtra(v string)`

SetMailExtra sets MailExtra field to given value.

### HasMailExtra

`func (o *MailServiceInfo) HasMailExtra() bool`

HasMailExtra returns a boolean if a field has been set.

### GetMailServerStatus

`func (o *MailServiceInfo) GetMailServerStatus() string`

GetMailServerStatus returns the MailServerStatus field if non-nil, zero value otherwise.

### GetMailServerStatusOk

`func (o *MailServiceInfo) GetMailServerStatusOk() (*string, bool)`

GetMailServerStatusOk returns a tuple with the MailServerStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMailServerStatus

`func (o *MailServiceInfo) SetMailServerStatus(v string)`

SetMailServerStatus sets MailServerStatus field to given value.

### HasMailServerStatus

`func (o *MailServiceInfo) HasMailServerStatus() bool`

HasMailServerStatus returns a boolean if a field has been set.

### GetMailComment

`func (o *MailServiceInfo) GetMailComment() string`

GetMailComment returns the MailComment field if non-nil, zero value otherwise.

### GetMailCommentOk

`func (o *MailServiceInfo) GetMailCommentOk() (*string, bool)`

GetMailCommentOk returns a tuple with the MailComment field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMailComment

`func (o *MailServiceInfo) SetMailComment(v string)`

SetMailComment sets MailComment field to given value.

### HasMailComment

`func (o *MailServiceInfo) HasMailComment() bool`

HasMailComment returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


