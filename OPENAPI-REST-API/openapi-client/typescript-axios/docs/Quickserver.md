# Quickserver


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serviceInfo** | [**QuickserverServiceInfo**](QuickserverServiceInfo.md) |  | [default to undefined]
**client_links** | [**Array&lt;QuickserverClientLink&gt;**](QuickserverClientLink.md) |  | [default to undefined]
**billingDetails** | [**QuickserverBillingDetails**](QuickserverBillingDetails.md) |  | [default to undefined]
**custCurrency** | **string** | Currency of the customer | [default to undefined]
**custCurrencySymbol** | **string** | Currency symbol of the customer | [default to undefined]
**serviceMaster** | [**QuickserverServiceMaster**](QuickserverServiceMaster.md) |  | [default to undefined]
**_package** | **string** | Package name | [default to undefined]
**os_template** | **string** | Operating system template | [default to undefined]
**serviceExtra** | [**QuickserverServiceExtra**](QuickserverServiceExtra.md) |  | [default to undefined]
**extraInfoTables** | [**QuickserverExtraInfoTables**](QuickserverExtraInfoTables.md) |  | [default to undefined]
**cpu_graph_data** | **string** | CPU graph data | [default to undefined]
**bandwidth_xaxis** | **string** | Bandwidth x-axis data | [default to undefined]
**bandwidth_yaxis** | **string** | Bandwidth y-axis data | [default to undefined]
**module** | **string** | Module information | [default to undefined]
**token** | **string** | Authentication token | [default to undefined]
**service_disk_used** | **string** | Used disk space | [default to undefined]
**service_disk_total** | **string** | Total disk space | [default to undefined]
**disk_percentage** | **number** | Disk usage percentage | [default to undefined]
**memory** | **string** | Memory information | [default to undefined]
**hdd** | **string** | HDD information | [default to undefined]
**service_overview_extra** | **Array&lt;string&gt;** |  | [default to undefined]

## Example

```typescript
import { Quickserver } from '@interserver/myadmin-client';

const instance: Quickserver = {
    serviceInfo,
    client_links,
    billingDetails,
    custCurrency,
    custCurrencySymbol,
    serviceMaster,
    _package,
    os_template,
    serviceExtra,
    extraInfoTables,
    cpu_graph_data,
    bandwidth_xaxis,
    bandwidth_yaxis,
    module,
    token,
    service_disk_used,
    service_disk_total,
    disk_percentage,
    memory,
    hdd,
    service_overview_extra,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
