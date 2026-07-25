# InterServerClient::GetScrubIpDetails200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_info** | [**GetScrubIpDetails200ResponseServiceInfo**](GetScrubIpDetails200ResponseServiceInfo.md) |  | [optional] |
| **client_links** | [**Array&lt;GetScrubIpDetails200ResponseClientLinksInner&gt;**](GetScrubIpDetails200ResponseClientLinksInner.md) |  | [optional] |
| **billing_details** | [**GetScrubIpDetails200ResponseBillingDetails**](GetScrubIpDetails200ResponseBillingDetails.md) |  | [optional] |
| **cust_currency** | **String** |  | [optional] |
| **cust_currency_symbol** | **String** |  | [optional] |
| **package** | **String** |  | [optional] |
| **extra_info_tables** | [**GetScrubIpDetails200ResponseExtraInfoTables**](GetScrubIpDetails200ResponseExtraInfoTables.md) |  | [optional] |
| **filter_firewall** | [**GetScrubIpDetails200ResponseFilterFirewall**](GetScrubIpDetails200ResponseFilterFirewall.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::GetScrubIpDetails200Response.new(
  service_info: null,
  client_links: null,
  billing_details: null,
  cust_currency: null,
  cust_currency_symbol: null,
  package: null,
  extra_info_tables: null,
  filter_firewall: null
)
```

