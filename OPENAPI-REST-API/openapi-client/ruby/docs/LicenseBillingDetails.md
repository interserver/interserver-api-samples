# InterServerClient::LicenseBillingDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_last_invoice_date** | **String** | Last invoice date | [optional] |
| **service_payment_status** | **String** | Payment status | [optional] |
| **service_frequency** | **String** | Service frequency | [optional] |
| **next_date** | **Time** | Next date | [optional] |
| **service_next_invoice_date** | **String** | Next invoice date | [optional] |
| **service_currency** | **String** | Service currency | [optional] |
| **service_currency_symbol** | **String** | Service currency symbol | [optional] |
| **service_coupon** | **String** | Service coupon | [optional] |
| **service_cost_info** | **String** | Service cost information | [optional] |
| **service_extra** | **Array&lt;String&gt;** | Additional service information | [optional] |
| **service_extra_json** | **String** | Additional service information in JSON format | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::LicenseBillingDetails.new(
  service_last_invoice_date: August 14, 2023,
  service_payment_status: Paid,
  service_frequency: Monthly,
  next_date: 2023-09-14T09:39:46Z,
  service_next_invoice_date: September 14, 2023,
  service_currency: USD,
  service_currency_symbol: $,
  service_coupon: ACOUPONFORLICENSES,
  service_cost_info: 0.00,
  service_extra: null,
  service_extra_json: [&quot;&quot;]
)
```

