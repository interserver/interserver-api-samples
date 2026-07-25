# interserverapi::Domain

Full detail view of a domain service including billing, contacts, DNS, and configuration.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceInfo** | [**DomainServiceInfo**](DomainServiceInfo.md) |  | [optional] 
**serviceTypes** | [**map(DomainServiceType)**](DomainServiceType.md) |  | [optional] 
**client_links** | [**array[DomainClientLink]**](DomainClientLink.md) |  | [optional] 
**billingDetails** | [**DomainBillingDetails**](DomainBillingDetails.md) |  | [optional] 
**custCurrency** | **character** |  | [optional] 
**custCurrencySymbol** | **character** |  | [optional] 
**serviceExtra** | [**DomainBillingExtra**](DomainBillingExtra.md) |  | [optional] 
**extraInfoTables** | [**BackupExtraInfoTables**](BackupExtraInfoTables.md) |  | [optional] 
**serviceType** | [**DomainServiceType**](DomainServiceType.md) |  | [optional] 
**contact_details** | [**DomainContactDetails**](DomainContactDetails.md) |  | [optional] 
**pwarning** | **character** |  | [optional] 
**transfer_info** | **character** |  | [optional] 
**errors** | **character** |  | [optional] 
**domain_logs** | **array[character]** |  | [optional] 
**allInfo** | [**DomainAllInfo**](DomainAllInfo.md) |  | [optional] 
**registrarStatus** | **character** |  | [optional] 
**locked** | **character** |  | [optional] 
**whoisPrivacy** | **character** |  | [optional] 
**autoRenew** | **character** |  | [optional] 


