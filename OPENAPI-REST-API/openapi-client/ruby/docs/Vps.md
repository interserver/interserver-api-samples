# InterServerClient::Vps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_info** | [**VpsServiceInfo**](VpsServiceInfo.md) |  |  |
| **client_links** | [**Array&lt;VpsClientLink&gt;**](VpsClientLink.md) |  |  |
| **billing_details** | [**VpsBillingDetails**](VpsBillingDetails.md) |  |  |
| **cust_currency** | **String** |  |  |
| **cust_currency_symbol** | **String** |  |  |
| **service_master** | [**VpsServiceMaster**](VpsServiceMaster.md) |  |  |
| **package** | **String** |  |  |
| **service_extra** | [**VpsServiceExtra**](VpsServiceExtra.md) |  |  |
| **extra_info_tables** | [**VpsExtraInfoTables**](VpsExtraInfoTables.md) |  |  |
| **_module** | **String** |  |  |
| **token** | **String** |  |  |
| **da_link** | **Integer** |  |  |
| **sr_link** | **Integer** |  |  |
| **cp_data** | [**VpsCPData**](VpsCPData.md) |  |  |
| **da_data** | [**VpsDAData**](VpsDAData.md) |  |  |
| **plesk12_data** | [**VpsPlesk12Data**](VpsPlesk12Data.md) |  |  |
| **service_addons** | [**VpsServiceAddons**](VpsServiceAddons.md) |  |  |
| **os_template** | **String** |  | [optional] |
| **cpu_graph_data** | **Object** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::Vps.new(
  service_info: null,
  client_links: null,
  billing_details: null,
  cust_currency: null,
  cust_currency_symbol: null,
  service_master: null,
  package: null,
  service_extra: null,
  extra_info_tables: null,
  _module: null,
  token: null,
  da_link: null,
  sr_link: null,
  cp_data: null,
  da_data: null,
  plesk12_data: null,
  service_addons: null,
  os_template: null,
  cpu_graph_data: null
)
```

