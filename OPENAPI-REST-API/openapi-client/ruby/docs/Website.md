# InterServerClient::Website

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_info** | [**WebsiteServiceInfo**](WebsiteServiceInfo.md) |  | [optional] |
| **client_links** | [**Array&lt;WebsiteClientLink&gt;**](WebsiteClientLink.md) |  | [optional] |
| **billing_details** | [**WebsiteBillingDetails**](WebsiteBillingDetails.md) |  | [optional] |
| **cust_currency** | **String** | Customer&#39;s currency | [optional] |
| **cust_currency_symbol** | **String** | Customer currency symbol | [optional] |
| **service_master** | [**WebsiteServiceMaster**](WebsiteServiceMaster.md) |  | [optional] |
| **package** | **String** | Package information | [optional] |
| **service_extra** | **Array&lt;Object&gt;** |  | [optional] |
| **extra_info_tables** | [**WebsiteExtraInfoTables**](WebsiteExtraInfoTables.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::Website.new(
  service_info: null,
  client_links: null,
  billing_details: null,
  cust_currency: USD,
  cust_currency_symbol: $,
  service_master: null,
  package: Web Hosting Direct Admin,
  service_extra: null,
  extra_info_tables: null
)
```

