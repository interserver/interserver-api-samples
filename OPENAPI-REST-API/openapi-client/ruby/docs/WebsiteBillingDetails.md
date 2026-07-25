# InterServerClient::WebsiteBillingDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_last_invoice_date** | **String** | Last invoice date for the service | [optional] |
| **service_payment_status** | **String** | Payment status for the service | [optional] |
| **service_frequency** | **String** | Frequency of the service | [optional] |
| **next_date** | **String** | Next date for the service | [optional] |
| **service_next_invoice_date** | **String** | Next invoice date for the service | [optional] |
| **service_currency** | **String** | Currency for the service | [optional] |
| **service_currency_symbol** | **String** | Currency symbol for the service | [optional] |
| **service_coupon** | **String** | Coupon for the service | [optional] |
| **service_cost_info** | **String** | Cost information for the service | [optional] |
| **service_extra** | **Object** | Extra information for the service | [optional] |
| **service_extra_json** | **String** | Extra information in JSON format for the service | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::WebsiteBillingDetails.new(
  service_last_invoice_date: null,
  service_payment_status: null,
  service_frequency: null,
  next_date: null,
  service_next_invoice_date: null,
  service_currency: USD,
  service_currency_symbol: $,
  service_coupon: null,
  service_cost_info: null,
  service_extra: null,
  service_extra_json: null
)
```

