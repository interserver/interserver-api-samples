# License


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceInfo** | [**LicenseServiceInfo**](LicenseServiceInfo.md) |  | [default to undefined]
**client_links** | [**Array&lt;LicenseClientLink&gt;**](LicenseClientLink.md) |  | [default to undefined]
**billingDetails** | [**LicenseBillingDetails**](LicenseBillingDetails.md) |  | [default to undefined]
**custCurrency** | **string** | Customer\&#39;s currency | [default to undefined]
**custCurrencySymbol** | **string** | Currency symbol for customer | [default to undefined]
**_package** | **string** | Package name | [default to undefined]
**serviceExtra** | **Array&lt;string&gt;** | Extra service information | [default to undefined]
**extraInfoTables** | [**LicenseExtraInfoTables**](LicenseExtraInfoTables.md) |  | [default to undefined]
**service_overview_extra** | **string** | Extra service overview information | [default to undefined]
**serviceType** | [**LicenseServiceType**](LicenseServiceType.md) |  | [default to undefined]
**license_key** | **string** | License key | [default to undefined]

## Example

```typescript
import { License } from '@interserver/myadmin-client';

const instance: License = {
    serviceInfo,
    client_links,
    billingDetails,
    custCurrency,
    custCurrencySymbol,
    _package,
    serviceExtra,
    extraInfoTables,
    service_overview_extra,
    serviceType,
    license_key,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
