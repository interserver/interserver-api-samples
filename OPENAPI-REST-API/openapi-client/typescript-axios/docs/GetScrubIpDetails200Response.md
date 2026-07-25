# GetScrubIpDetails200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceInfo** | [**GetScrubIpDetails200ResponseServiceInfo**](GetScrubIpDetails200ResponseServiceInfo.md) |  | [optional] [default to undefined]
**client_links** | [**Array&lt;GetScrubIpDetails200ResponseClientLinksInner&gt;**](GetScrubIpDetails200ResponseClientLinksInner.md) |  | [optional] [default to undefined]
**billingDetails** | [**GetScrubIpDetails200ResponseBillingDetails**](GetScrubIpDetails200ResponseBillingDetails.md) |  | [optional] [default to undefined]
**custCurrency** | **string** |  | [optional] [default to undefined]
**custCurrencySymbol** | **string** |  | [optional] [default to undefined]
**_package** | **string** |  | [optional] [default to undefined]
**extraInfoTables** | [**GetScrubIpDetails200ResponseExtraInfoTables**](GetScrubIpDetails200ResponseExtraInfoTables.md) |  | [optional] [default to undefined]
**filter_firewall** | [**GetScrubIpDetails200ResponseFilterFirewall**](GetScrubIpDetails200ResponseFilterFirewall.md) |  | [optional] [default to undefined]

## Example

```typescript
import { GetScrubIpDetails200Response } from '@interserver/myadmin-client';

const instance: GetScrubIpDetails200Response = {
    serviceInfo,
    client_links,
    billingDetails,
    custCurrency,
    custCurrencySymbol,
    _package,
    extraInfoTables,
    filter_firewall,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
