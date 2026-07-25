# MailSchema


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceInfo** | [**MailServiceInfo**](MailServiceInfo.md) |  | [default to undefined]
**client_links** | [**Array&lt;MailClientLink&gt;**](MailClientLink.md) | Links related to the mail service for clients. | [default to undefined]
**billingDetails** | [**MailBillingDetails**](MailBillingDetails.md) |  | [default to undefined]
**custCurrency** | **string** | The customer\&#39;s currency. | [default to undefined]
**custCurrencySymbol** | **string** | The currency symbol for the customer. | [default to undefined]
**_package** | **string** | The package of the mail service. | [default to undefined]
**extraInfoTables** | [**MailSchemaExtraInfoTables**](MailSchemaExtraInfoTables.md) |  | [default to undefined]
**serviceType** | [**MailServiceType**](MailServiceType.md) |  | [default to undefined]
**usage_count** | **string** | The usage count of the mail service. | [default to undefined]
**serviceExtra** | **Array&lt;string&gt;** | Extra information for the mail service. | [optional] [default to undefined]

## Example

```typescript
import { MailSchema } from '@interserver/myadmin-client';

const instance: MailSchema = {
    serviceInfo,
    client_links,
    billingDetails,
    custCurrency,
    custCurrencySymbol,
    _package,
    extraInfoTables,
    serviceType,
    usage_count,
    serviceExtra,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
