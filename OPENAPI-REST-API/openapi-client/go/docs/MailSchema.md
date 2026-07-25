# MailSchema

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceInfo** | [**MailServiceInfo**](MailServiceInfo.md) |  | 
**ClientLinks** | [**[]MailClientLink**](MailClientLink.md) | Links related to the mail service for clients. | 
**BillingDetails** | [**MailBillingDetails**](MailBillingDetails.md) |  | 
**CustCurrency** | **string** | The customer&#39;s currency. | 
**CustCurrencySymbol** | **string** | The currency symbol for the customer. | 
**Package** | **string** | The package of the mail service. | 
**ExtraInfoTables** | [**MailSchemaExtraInfoTables**](MailSchemaExtraInfoTables.md) |  | 
**ServiceType** | [**MailServiceType**](MailServiceType.md) |  | 
**UsageCount** | **string** | The usage count of the mail service. | 
**ServiceExtra** | Pointer to **[]string** | Extra information for the mail service. | [optional] 

## Methods

### NewMailSchema

`func NewMailSchema(serviceInfo MailServiceInfo, clientLinks []MailClientLink, billingDetails MailBillingDetails, custCurrency string, custCurrencySymbol string, package_ string, extraInfoTables MailSchemaExtraInfoTables, serviceType MailServiceType, usageCount string, ) *MailSchema`

NewMailSchema instantiates a new MailSchema object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMailSchemaWithDefaults

`func NewMailSchemaWithDefaults() *MailSchema`

NewMailSchemaWithDefaults instantiates a new MailSchema object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetServiceInfo

`func (o *MailSchema) GetServiceInfo() MailServiceInfo`

GetServiceInfo returns the ServiceInfo field if non-nil, zero value otherwise.

### GetServiceInfoOk

`func (o *MailSchema) GetServiceInfoOk() (*MailServiceInfo, bool)`

GetServiceInfoOk returns a tuple with the ServiceInfo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceInfo

`func (o *MailSchema) SetServiceInfo(v MailServiceInfo)`

SetServiceInfo sets ServiceInfo field to given value.


### GetClientLinks

`func (o *MailSchema) GetClientLinks() []MailClientLink`

GetClientLinks returns the ClientLinks field if non-nil, zero value otherwise.

### GetClientLinksOk

`func (o *MailSchema) GetClientLinksOk() (*[]MailClientLink, bool)`

GetClientLinksOk returns a tuple with the ClientLinks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientLinks

`func (o *MailSchema) SetClientLinks(v []MailClientLink)`

SetClientLinks sets ClientLinks field to given value.


### GetBillingDetails

`func (o *MailSchema) GetBillingDetails() MailBillingDetails`

GetBillingDetails returns the BillingDetails field if non-nil, zero value otherwise.

### GetBillingDetailsOk

`func (o *MailSchema) GetBillingDetailsOk() (*MailBillingDetails, bool)`

GetBillingDetailsOk returns a tuple with the BillingDetails field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBillingDetails

`func (o *MailSchema) SetBillingDetails(v MailBillingDetails)`

SetBillingDetails sets BillingDetails field to given value.


### GetCustCurrency

`func (o *MailSchema) GetCustCurrency() string`

GetCustCurrency returns the CustCurrency field if non-nil, zero value otherwise.

### GetCustCurrencyOk

`func (o *MailSchema) GetCustCurrencyOk() (*string, bool)`

GetCustCurrencyOk returns a tuple with the CustCurrency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustCurrency

`func (o *MailSchema) SetCustCurrency(v string)`

SetCustCurrency sets CustCurrency field to given value.


### GetCustCurrencySymbol

`func (o *MailSchema) GetCustCurrencySymbol() string`

GetCustCurrencySymbol returns the CustCurrencySymbol field if non-nil, zero value otherwise.

### GetCustCurrencySymbolOk

`func (o *MailSchema) GetCustCurrencySymbolOk() (*string, bool)`

GetCustCurrencySymbolOk returns a tuple with the CustCurrencySymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustCurrencySymbol

`func (o *MailSchema) SetCustCurrencySymbol(v string)`

SetCustCurrencySymbol sets CustCurrencySymbol field to given value.


### GetPackage

`func (o *MailSchema) GetPackage() string`

GetPackage returns the Package field if non-nil, zero value otherwise.

### GetPackageOk

`func (o *MailSchema) GetPackageOk() (*string, bool)`

GetPackageOk returns a tuple with the Package field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPackage

`func (o *MailSchema) SetPackage(v string)`

SetPackage sets Package field to given value.


### GetExtraInfoTables

`func (o *MailSchema) GetExtraInfoTables() MailSchemaExtraInfoTables`

GetExtraInfoTables returns the ExtraInfoTables field if non-nil, zero value otherwise.

### GetExtraInfoTablesOk

`func (o *MailSchema) GetExtraInfoTablesOk() (*MailSchemaExtraInfoTables, bool)`

GetExtraInfoTablesOk returns a tuple with the ExtraInfoTables field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExtraInfoTables

`func (o *MailSchema) SetExtraInfoTables(v MailSchemaExtraInfoTables)`

SetExtraInfoTables sets ExtraInfoTables field to given value.


### GetServiceType

`func (o *MailSchema) GetServiceType() MailServiceType`

GetServiceType returns the ServiceType field if non-nil, zero value otherwise.

### GetServiceTypeOk

`func (o *MailSchema) GetServiceTypeOk() (*MailServiceType, bool)`

GetServiceTypeOk returns a tuple with the ServiceType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceType

`func (o *MailSchema) SetServiceType(v MailServiceType)`

SetServiceType sets ServiceType field to given value.


### GetUsageCount

`func (o *MailSchema) GetUsageCount() string`

GetUsageCount returns the UsageCount field if non-nil, zero value otherwise.

### GetUsageCountOk

`func (o *MailSchema) GetUsageCountOk() (*string, bool)`

GetUsageCountOk returns a tuple with the UsageCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsageCount

`func (o *MailSchema) SetUsageCount(v string)`

SetUsageCount sets UsageCount field to given value.


### GetServiceExtra

`func (o *MailSchema) GetServiceExtra() []string`

GetServiceExtra returns the ServiceExtra field if non-nil, zero value otherwise.

### GetServiceExtraOk

`func (o *MailSchema) GetServiceExtraOk() (*[]string, bool)`

GetServiceExtraOk returns a tuple with the ServiceExtra field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceExtra

`func (o *MailSchema) SetServiceExtra(v []string)`

SetServiceExtra sets ServiceExtra field to given value.

### HasServiceExtra

`func (o *MailSchema) HasServiceExtra() bool`

HasServiceExtra returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


