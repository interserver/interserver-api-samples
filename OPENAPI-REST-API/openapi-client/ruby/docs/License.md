# InterServerClient::License

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_info** | [**LicenseServiceInfo**](LicenseServiceInfo.md) |  |  |
| **client_links** | [**Array&lt;LicenseClientLink&gt;**](LicenseClientLink.md) |  |  |
| **billing_details** | [**LicenseBillingDetails**](LicenseBillingDetails.md) |  |  |
| **cust_currency** | **String** | Customer&#39;s currency |  |
| **cust_currency_symbol** | **String** | Currency symbol for customer |  |
| **package** | **String** | Package name |  |
| **service_extra** | **Array&lt;String&gt;** | Extra service information |  |
| **extra_info_tables** | [**LicenseExtraInfoTables**](LicenseExtraInfoTables.md) |  |  |
| **service_overview_extra** | **String** | Extra service overview information |  |
| **service_type** | [**LicenseServiceType**](LicenseServiceType.md) |  |  |
| **license_key** | **String** | License key |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::License.new(
  service_info: null,
  client_links: null,
  billing_details: null,
  cust_currency: USD,
  cust_currency_symbol: $,
  package: KernelCare License,
  service_extra: null,
  extra_info_tables: null,
  service_overview_extra: null,
  service_type: null,
  license_key: 
)
```

