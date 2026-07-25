# Vps


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceInfo** | [**VpsServiceInfo**](VpsServiceInfo.md) |  | [default to undefined]
**client_links** | [**Array&lt;VpsClientLink&gt;**](VpsClientLink.md) |  | [default to undefined]
**billingDetails** | [**VpsBillingDetails**](VpsBillingDetails.md) |  | [default to undefined]
**custCurrency** | **string** |  | [default to undefined]
**custCurrencySymbol** | **string** |  | [default to undefined]
**serviceMaster** | [**VpsServiceMaster**](VpsServiceMaster.md) |  | [default to undefined]
**_package** | **string** |  | [default to undefined]
**serviceExtra** | [**VpsServiceExtra**](VpsServiceExtra.md) |  | [default to undefined]
**extraInfoTables** | [**VpsExtraInfoTables**](VpsExtraInfoTables.md) |  | [default to undefined]
**module** | **string** |  | [default to undefined]
**token** | **string** |  | [default to undefined]
**da_link** | **number** |  | [default to undefined]
**sr_link** | **number** |  | [default to undefined]
**cp_data** | [**VpsCPData**](VpsCPData.md) |  | [default to undefined]
**da_data** | [**VpsDAData**](VpsDAData.md) |  | [default to undefined]
**plesk12_data** | [**VpsPlesk12Data**](VpsPlesk12Data.md) |  | [default to undefined]
**serviceAddons** | [**VpsServiceAddons**](VpsServiceAddons.md) |  | [default to undefined]
**os_template** | **string** |  | [optional] [default to undefined]
**cpu_graph_data** | **any** |  | [optional] [default to undefined]

## Example

```typescript
import { Vps } from '@interserver/myadmin-client';

const instance: Vps = {
    serviceInfo,
    client_links,
    billingDetails,
    custCurrency,
    custCurrencySymbol,
    serviceMaster,
    _package,
    serviceExtra,
    extraInfoTables,
    module,
    token,
    da_link,
    sr_link,
    cp_data,
    da_data,
    plesk12_data,
    serviceAddons,
    os_template,
    cpu_graph_data,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
