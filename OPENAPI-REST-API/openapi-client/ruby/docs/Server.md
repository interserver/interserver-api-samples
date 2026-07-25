# InterServerClient::Server

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipmi_auth** | **Boolean** |  |  |
| **client_links** | [**Array&lt;ServerClientLink&gt;**](ServerClientLink.md) |  |  |
| **billing_details** | [**ServerBillingDetails**](ServerBillingDetails.md) |  |  |
| **cust_currency** | **String** |  |  |
| **cust_currency_symbol** | **String** |  |  |
| **package** | **String** |  |  |
| **service_extra** | **Array&lt;String&gt;** |  |  |
| **locations** | [**ServerLocations**](ServerLocations.md) |  |  |
| **network_info** | [**ServerNetworkInfo**](ServerNetworkInfo.md) |  |  |
| **extra_info_tables** | [**ServerExtraInfoTables**](ServerExtraInfoTables.md) |  |  |
| **service_info** | [**ServerServiceInfo**](ServerServiceInfo.md) |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::Server.new(
  ipmi_auth: null,
  client_links: null,
  billing_details: null,
  cust_currency: null,
  cust_currency_symbol: null,
  package: null,
  service_extra: null,
  locations: null,
  network_info: null,
  extra_info_tables: null,
  service_info: null
)
```

