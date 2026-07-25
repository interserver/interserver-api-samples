# Vps

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceInfo** | [**VpsServiceInfo**](VpsServiceInfo.md) |  | 
**ClientLinks** | [**[]VpsClientLink**](VpsClientLink.md) |  | 
**BillingDetails** | [**VpsBillingDetails**](VpsBillingDetails.md) |  | 
**CustCurrency** | **string** |  | 
**CustCurrencySymbol** | **string** |  | 
**ServiceMaster** | [**VpsServiceMaster**](VpsServiceMaster.md) |  | 
**Package** | **string** |  | 
**ServiceExtra** | [**VpsServiceExtra**](VpsServiceExtra.md) |  | 
**ExtraInfoTables** | [**VpsExtraInfoTables**](VpsExtraInfoTables.md) |  | 
**Module** | **string** |  | 
**Token** | **string** |  | 
**DaLink** | **int32** |  | 
**SrLink** | **int32** |  | 
**CpData** | [**VpsCPData**](VpsCPData.md) |  | 
**DaData** | [**VpsDAData**](VpsDAData.md) |  | 
**Plesk12Data** | [**VpsPlesk12Data**](VpsPlesk12Data.md) |  | 
**ServiceAddons** | [**VpsServiceAddons**](VpsServiceAddons.md) |  | 
**OsTemplate** | Pointer to **string** |  | [optional] 
**CpuGraphData** | Pointer to **interface{}** |  | [optional] 

## Methods

### NewVps

`func NewVps(serviceInfo VpsServiceInfo, clientLinks []VpsClientLink, billingDetails VpsBillingDetails, custCurrency string, custCurrencySymbol string, serviceMaster VpsServiceMaster, package_ string, serviceExtra VpsServiceExtra, extraInfoTables VpsExtraInfoTables, module string, token string, daLink int32, srLink int32, cpData VpsCPData, daData VpsDAData, plesk12Data VpsPlesk12Data, serviceAddons VpsServiceAddons, ) *Vps`

NewVps instantiates a new Vps object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVpsWithDefaults

`func NewVpsWithDefaults() *Vps`

NewVpsWithDefaults instantiates a new Vps object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetServiceInfo

`func (o *Vps) GetServiceInfo() VpsServiceInfo`

GetServiceInfo returns the ServiceInfo field if non-nil, zero value otherwise.

### GetServiceInfoOk

`func (o *Vps) GetServiceInfoOk() (*VpsServiceInfo, bool)`

GetServiceInfoOk returns a tuple with the ServiceInfo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceInfo

`func (o *Vps) SetServiceInfo(v VpsServiceInfo)`

SetServiceInfo sets ServiceInfo field to given value.


### GetClientLinks

`func (o *Vps) GetClientLinks() []VpsClientLink`

GetClientLinks returns the ClientLinks field if non-nil, zero value otherwise.

### GetClientLinksOk

`func (o *Vps) GetClientLinksOk() (*[]VpsClientLink, bool)`

GetClientLinksOk returns a tuple with the ClientLinks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientLinks

`func (o *Vps) SetClientLinks(v []VpsClientLink)`

SetClientLinks sets ClientLinks field to given value.


### GetBillingDetails

`func (o *Vps) GetBillingDetails() VpsBillingDetails`

GetBillingDetails returns the BillingDetails field if non-nil, zero value otherwise.

### GetBillingDetailsOk

`func (o *Vps) GetBillingDetailsOk() (*VpsBillingDetails, bool)`

GetBillingDetailsOk returns a tuple with the BillingDetails field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBillingDetails

`func (o *Vps) SetBillingDetails(v VpsBillingDetails)`

SetBillingDetails sets BillingDetails field to given value.


### GetCustCurrency

`func (o *Vps) GetCustCurrency() string`

GetCustCurrency returns the CustCurrency field if non-nil, zero value otherwise.

### GetCustCurrencyOk

`func (o *Vps) GetCustCurrencyOk() (*string, bool)`

GetCustCurrencyOk returns a tuple with the CustCurrency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustCurrency

`func (o *Vps) SetCustCurrency(v string)`

SetCustCurrency sets CustCurrency field to given value.


### GetCustCurrencySymbol

`func (o *Vps) GetCustCurrencySymbol() string`

GetCustCurrencySymbol returns the CustCurrencySymbol field if non-nil, zero value otherwise.

### GetCustCurrencySymbolOk

`func (o *Vps) GetCustCurrencySymbolOk() (*string, bool)`

GetCustCurrencySymbolOk returns a tuple with the CustCurrencySymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustCurrencySymbol

`func (o *Vps) SetCustCurrencySymbol(v string)`

SetCustCurrencySymbol sets CustCurrencySymbol field to given value.


### GetServiceMaster

`func (o *Vps) GetServiceMaster() VpsServiceMaster`

GetServiceMaster returns the ServiceMaster field if non-nil, zero value otherwise.

### GetServiceMasterOk

`func (o *Vps) GetServiceMasterOk() (*VpsServiceMaster, bool)`

GetServiceMasterOk returns a tuple with the ServiceMaster field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceMaster

`func (o *Vps) SetServiceMaster(v VpsServiceMaster)`

SetServiceMaster sets ServiceMaster field to given value.


### GetPackage

`func (o *Vps) GetPackage() string`

GetPackage returns the Package field if non-nil, zero value otherwise.

### GetPackageOk

`func (o *Vps) GetPackageOk() (*string, bool)`

GetPackageOk returns a tuple with the Package field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPackage

`func (o *Vps) SetPackage(v string)`

SetPackage sets Package field to given value.


### GetServiceExtra

`func (o *Vps) GetServiceExtra() VpsServiceExtra`

GetServiceExtra returns the ServiceExtra field if non-nil, zero value otherwise.

### GetServiceExtraOk

`func (o *Vps) GetServiceExtraOk() (*VpsServiceExtra, bool)`

GetServiceExtraOk returns a tuple with the ServiceExtra field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceExtra

`func (o *Vps) SetServiceExtra(v VpsServiceExtra)`

SetServiceExtra sets ServiceExtra field to given value.


### GetExtraInfoTables

`func (o *Vps) GetExtraInfoTables() VpsExtraInfoTables`

GetExtraInfoTables returns the ExtraInfoTables field if non-nil, zero value otherwise.

### GetExtraInfoTablesOk

`func (o *Vps) GetExtraInfoTablesOk() (*VpsExtraInfoTables, bool)`

GetExtraInfoTablesOk returns a tuple with the ExtraInfoTables field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExtraInfoTables

`func (o *Vps) SetExtraInfoTables(v VpsExtraInfoTables)`

SetExtraInfoTables sets ExtraInfoTables field to given value.


### GetModule

`func (o *Vps) GetModule() string`

GetModule returns the Module field if non-nil, zero value otherwise.

### GetModuleOk

`func (o *Vps) GetModuleOk() (*string, bool)`

GetModuleOk returns a tuple with the Module field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModule

`func (o *Vps) SetModule(v string)`

SetModule sets Module field to given value.


### GetToken

`func (o *Vps) GetToken() string`

GetToken returns the Token field if non-nil, zero value otherwise.

### GetTokenOk

`func (o *Vps) GetTokenOk() (*string, bool)`

GetTokenOk returns a tuple with the Token field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetToken

`func (o *Vps) SetToken(v string)`

SetToken sets Token field to given value.


### GetDaLink

`func (o *Vps) GetDaLink() int32`

GetDaLink returns the DaLink field if non-nil, zero value otherwise.

### GetDaLinkOk

`func (o *Vps) GetDaLinkOk() (*int32, bool)`

GetDaLinkOk returns a tuple with the DaLink field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDaLink

`func (o *Vps) SetDaLink(v int32)`

SetDaLink sets DaLink field to given value.


### GetSrLink

`func (o *Vps) GetSrLink() int32`

GetSrLink returns the SrLink field if non-nil, zero value otherwise.

### GetSrLinkOk

`func (o *Vps) GetSrLinkOk() (*int32, bool)`

GetSrLinkOk returns a tuple with the SrLink field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSrLink

`func (o *Vps) SetSrLink(v int32)`

SetSrLink sets SrLink field to given value.


### GetCpData

`func (o *Vps) GetCpData() VpsCPData`

GetCpData returns the CpData field if non-nil, zero value otherwise.

### GetCpDataOk

`func (o *Vps) GetCpDataOk() (*VpsCPData, bool)`

GetCpDataOk returns a tuple with the CpData field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCpData

`func (o *Vps) SetCpData(v VpsCPData)`

SetCpData sets CpData field to given value.


### GetDaData

`func (o *Vps) GetDaData() VpsDAData`

GetDaData returns the DaData field if non-nil, zero value otherwise.

### GetDaDataOk

`func (o *Vps) GetDaDataOk() (*VpsDAData, bool)`

GetDaDataOk returns a tuple with the DaData field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDaData

`func (o *Vps) SetDaData(v VpsDAData)`

SetDaData sets DaData field to given value.


### GetPlesk12Data

`func (o *Vps) GetPlesk12Data() VpsPlesk12Data`

GetPlesk12Data returns the Plesk12Data field if non-nil, zero value otherwise.

### GetPlesk12DataOk

`func (o *Vps) GetPlesk12DataOk() (*VpsPlesk12Data, bool)`

GetPlesk12DataOk returns a tuple with the Plesk12Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlesk12Data

`func (o *Vps) SetPlesk12Data(v VpsPlesk12Data)`

SetPlesk12Data sets Plesk12Data field to given value.


### GetServiceAddons

`func (o *Vps) GetServiceAddons() VpsServiceAddons`

GetServiceAddons returns the ServiceAddons field if non-nil, zero value otherwise.

### GetServiceAddonsOk

`func (o *Vps) GetServiceAddonsOk() (*VpsServiceAddons, bool)`

GetServiceAddonsOk returns a tuple with the ServiceAddons field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceAddons

`func (o *Vps) SetServiceAddons(v VpsServiceAddons)`

SetServiceAddons sets ServiceAddons field to given value.


### GetOsTemplate

`func (o *Vps) GetOsTemplate() string`

GetOsTemplate returns the OsTemplate field if non-nil, zero value otherwise.

### GetOsTemplateOk

`func (o *Vps) GetOsTemplateOk() (*string, bool)`

GetOsTemplateOk returns a tuple with the OsTemplate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOsTemplate

`func (o *Vps) SetOsTemplate(v string)`

SetOsTemplate sets OsTemplate field to given value.

### HasOsTemplate

`func (o *Vps) HasOsTemplate() bool`

HasOsTemplate returns a boolean if a field has been set.

### GetCpuGraphData

`func (o *Vps) GetCpuGraphData() interface{}`

GetCpuGraphData returns the CpuGraphData field if non-nil, zero value otherwise.

### GetCpuGraphDataOk

`func (o *Vps) GetCpuGraphDataOk() (*interface{}, bool)`

GetCpuGraphDataOk returns a tuple with the CpuGraphData field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCpuGraphData

`func (o *Vps) SetCpuGraphData(v interface{})`

SetCpuGraphData sets CpuGraphData field to given value.

### HasCpuGraphData

`func (o *Vps) HasCpuGraphData() bool`

HasCpuGraphData returns a boolean if a field has been set.

### SetCpuGraphDataNil

`func (o *Vps) SetCpuGraphDataNil(b bool)`

 SetCpuGraphDataNil sets the value for CpuGraphData to be an explicit nil

### UnsetCpuGraphData
`func (o *Vps) UnsetCpuGraphData()`

UnsetCpuGraphData ensures that no value is present for CpuGraphData, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


