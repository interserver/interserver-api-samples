# Server


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ipmiAuth** | **boolean** |  | [default to undefined]
**client_links** | [**Array&lt;ServerClientLink&gt;**](ServerClientLink.md) |  | [default to undefined]
**billingDetails** | [**ServerBillingDetails**](ServerBillingDetails.md) |  | [default to undefined]
**custCurrency** | **string** |  | [default to undefined]
**custCurrencySymbol** | **string** |  | [default to undefined]
**_package** | **string** |  | [default to undefined]
**serviceExtra** | **Array&lt;string&gt;** |  | [default to undefined]
**locations** | [**ServerLocations**](ServerLocations.md) |  | [default to undefined]
**networkInfo** | [**ServerNetworkInfo**](ServerNetworkInfo.md) |  | [default to undefined]
**extraInfoTables** | [**ServerExtraInfoTables**](ServerExtraInfoTables.md) |  | [default to undefined]
**serviceInfo** | [**ServerServiceInfo**](ServerServiceInfo.md) |  | [default to undefined]

## Example

```typescript
import { Server } from '@interserver/myadmin-client';

const instance: Server = {
    ipmiAuth,
    client_links,
    billingDetails,
    custCurrency,
    custCurrencySymbol,
    _package,
    serviceExtra,
    locations,
    networkInfo,
    extraInfoTables,
    serviceInfo,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
