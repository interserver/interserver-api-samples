# InterServerClient::Quickserver

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_info** | [**QuickserverServiceInfo**](QuickserverServiceInfo.md) |  |  |
| **client_links** | [**Array&lt;QuickserverClientLink&gt;**](QuickserverClientLink.md) |  |  |
| **billing_details** | [**QuickserverBillingDetails**](QuickserverBillingDetails.md) |  |  |
| **cust_currency** | **String** | Currency of the customer |  |
| **cust_currency_symbol** | **String** | Currency symbol of the customer |  |
| **service_master** | [**QuickserverServiceMaster**](QuickserverServiceMaster.md) |  |  |
| **package** | **String** | Package name |  |
| **os_template** | **String** | Operating system template |  |
| **service_extra** | [**QuickserverServiceExtra**](QuickserverServiceExtra.md) |  |  |
| **extra_info_tables** | [**QuickserverExtraInfoTables**](QuickserverExtraInfoTables.md) |  |  |
| **cpu_graph_data** | **String** | CPU graph data |  |
| **bandwidth_xaxis** | **String** | Bandwidth x-axis data |  |
| **bandwidth_yaxis** | **String** | Bandwidth y-axis data |  |
| **_module** | **String** | Module information |  |
| **token** | **String** | Authentication token |  |
| **service_disk_used** | **String** | Used disk space |  |
| **service_disk_total** | **String** | Total disk space |  |
| **disk_percentage** | **Float** | Disk usage percentage |  |
| **memory** | **String** | Memory information |  |
| **hdd** | **String** | HDD information |  |
| **service_overview_extra** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::Quickserver.new(
  service_info: null,
  client_links: null,
  billing_details: null,
  cust_currency: USD,
  cust_currency_symbol: $,
  service_master: null,
  package: Rapid Deploy Server,
  os_template: Ubuntu 22.04,
  service_extra: null,
  extra_info_tables: null,
  cpu_graph_data: {&quot;labels&quot;:[],&quot;value&quot;:[]},
  bandwidth_xaxis: [],
  bandwidth_yaxis: [],
  _module: quickservers,
  token: %3Ftoken%3DAKLFIJOAQIRFOPIEWQRURQOIURWQOI,
  service_disk_used: 0.00 GB,
  service_disk_total: 0.00 GB,
  disk_percentage: 32.27,
  memory: 0GB,
  hdd: 0GB,
  service_overview_extra: null
)
```

