# Domain

Full detail view of a domain service including billing, contacts, DNS, and configuration.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceInfo** | [**DomainServiceInfo**](DomainServiceInfo.md) |  | [optional] [default to undefined]
**serviceTypes** | [**{ [key: string]: DomainServiceType; }**](DomainServiceType.md) |  | [optional] [default to undefined]
**client_links** | [**Array&lt;DomainClientLink&gt;**](DomainClientLink.md) |  | [optional] [default to undefined]
**billingDetails** | [**DomainBillingDetails**](DomainBillingDetails.md) |  | [optional] [default to undefined]
**custCurrency** | **string** |  | [optional] [default to undefined]
**custCurrencySymbol** | **string** |  | [optional] [default to undefined]
**serviceExtra** | [**DomainBillingExtra**](DomainBillingExtra.md) |  | [optional] [default to undefined]
**extraInfoTables** | [**BackupExtraInfoTables**](BackupExtraInfoTables.md) |  | [optional] [default to undefined]
**serviceType** | [**DomainServiceType**](DomainServiceType.md) |  | [optional] [default to undefined]
**contact_details** | [**DomainContactDetails**](DomainContactDetails.md) |  | [optional] [default to undefined]
**pwarning** | **string** |  | [optional] [default to undefined]
**transfer_info** | **string** |  | [optional] [default to undefined]
**errors** | **boolean** |  | [optional] [default to undefined]
**domain_logs** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**allInfo** | [**DomainAllInfo**](DomainAllInfo.md) |  | [optional] [default to undefined]
**registrarStatus** | **string** |  | [optional] [default to undefined]
**locked** | **string** |  | [optional] [default to undefined]
**whoisPrivacy** | **string** |  | [optional] [default to undefined]
**autoRenew** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { Domain } from '@interserver/myadmin-client';

const instance: Domain = {
    serviceInfo,
    serviceTypes,
    client_links,
    billingDetails,
    custCurrency,
    custCurrencySymbol,
    serviceExtra,
    extraInfoTables,
    serviceType,
    contact_details,
    pwarning,
    transfer_info,
    errors,
    domain_logs,
    allInfo,
    registrarStatus,
    locked,
    whoisPrivacy,
    autoRenew,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
