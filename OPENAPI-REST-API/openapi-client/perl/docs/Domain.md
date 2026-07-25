# InterServerAPI::Object::Domain

## Load the model package
```perl
use InterServerAPI::Object::Domain;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_info** | [**DomainServiceInfo**](DomainServiceInfo.md) |  | [optional] 
**service_types** | [**HASH[string,DomainServiceType]**](DomainServiceType.md) |  | [optional] 
**client_links** | [**ARRAY[DomainClientLink]**](DomainClientLink.md) |  | [optional] 
**billing_details** | [**DomainBillingDetails**](DomainBillingDetails.md) |  | [optional] 
**cust_currency** | **string** |  | [optional] 
**cust_currency_symbol** | **string** |  | [optional] 
**service_extra** | [**DomainBillingExtra**](DomainBillingExtra.md) |  | [optional] 
**extra_info_tables** | [**BackupExtraInfoTables**](BackupExtraInfoTables.md) |  | [optional] 
**service_type** | [**DomainServiceType**](DomainServiceType.md) |  | [optional] 
**contact_details** | [**DomainContactDetails**](DomainContactDetails.md) |  | [optional] 
**pwarning** | **string** |  | [optional] 
**transfer_info** | **string** |  | [optional] 
**errors** | **boolean** |  | [optional] 
**domain_logs** | **ARRAY[string]** |  | [optional] 
**all_info** | [**DomainAllInfo**](DomainAllInfo.md) |  | [optional] 
**registrar_status** | **string** |  | [optional] 
**locked** | **string** |  | [optional] 
**whois_privacy** | **string** |  | [optional] 
**auto_renew** | **string** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


