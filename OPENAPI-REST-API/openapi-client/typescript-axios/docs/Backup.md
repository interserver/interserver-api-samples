# Backup

Full detail view of a backup service including billing, service info, and configuration.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceInfo** | [**BackupServiceInfo**](BackupServiceInfo.md) |  | [optional] [default to undefined]
**client_links** | [**Array&lt;BackupClientLink&gt;**](BackupClientLink.md) |  | [optional] [default to undefined]
**billingDetails** | [**BackupBillingDetails**](BackupBillingDetails.md) |  | [optional] [default to undefined]
**custCurrency** | **string** | Customer\&#39;s currency. | [optional] [default to undefined]
**custCurrencySymbol** | **string** | Customer\&#39;s currency symbol. | [optional] [default to undefined]
**serviceMaster** | [**BackupServiceMaster**](BackupServiceMaster.md) |  | [optional] [default to undefined]
**_package** | **string** | Package information. | [optional] [default to undefined]
**serviceExtra** | **string** |  | [optional] [default to undefined]
**extraInfoTables** | [**BackupExtraInfoTables**](BackupExtraInfoTables.md) |  | [optional] [default to undefined]

## Example

```typescript
import { Backup } from '@interserver/myadmin-client';

const instance: Backup = {
    serviceInfo,
    client_links,
    billingDetails,
    custCurrency,
    custCurrencySymbol,
    serviceMaster,
    _package,
    serviceExtra,
    extraInfoTables,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
