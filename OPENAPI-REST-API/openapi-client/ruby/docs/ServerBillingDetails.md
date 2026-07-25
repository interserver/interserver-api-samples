# InterServerClient::ServerBillingDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_last_invoice_date** | **String** |  | [optional] |
| **service_payment_status** | **String** |  | [optional] |
| **service_frequency** | **String** |  | [optional] |
| **next_date** | **String** |  | [optional] |
| **service_next_invoice_date** | **String** |  | [optional] |
| **service_currency** | **String** |  | [optional] |
| **service_currency_symbol** | **String** |  | [optional] |
| **service_cost_info** | **String** |  | [optional] |
| **service_extra** | **Array&lt;String&gt;** |  | [optional] |
| **service_extra_json** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerBillingDetails.new(
  service_last_invoice_date: null,
  service_payment_status: null,
  service_frequency: null,
  next_date: null,
  service_next_invoice_date: null,
  service_currency: null,
  service_currency_symbol: null,
  service_cost_info: null,
  service_extra: null,
  service_extra_json: null
)
```

