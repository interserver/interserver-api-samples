# Website

Full detail view of a webhosting service including billing, service configuration, and panel access links.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceInfo** | [**WebsiteServiceInfo**](WebsiteServiceInfo.md) |  | [optional] [default to undefined]
**client_links** | [**Array&lt;WebsiteClientLink&gt;**](WebsiteClientLink.md) |  | [optional] [default to undefined]
**billingDetails** | [**WebsiteBillingDetails**](WebsiteBillingDetails.md) |  | [optional] [default to undefined]
**custCurrency** | **string** | Customer\&#39;s currency | [optional] [default to undefined]
**custCurrencySymbol** | **string** | Customer currency symbol | [optional] [default to undefined]
**serviceMaster** | [**WebsiteServiceMaster**](WebsiteServiceMaster.md) |  | [optional] [default to undefined]
**_package** | **string** | Package information | [optional] [default to undefined]
**serviceExtra** | **Array&lt;object&gt;** |  | [optional] [default to undefined]
**extraInfoTables** | [**WebsiteExtraInfoTables**](WebsiteExtraInfoTables.md) |  | [optional] [default to undefined]

## Example

```typescript
import { Website } from '@interserver/myadmin-client';

const instance: Website = {
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
