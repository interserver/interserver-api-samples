# InterServerClient::MailBillingDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_last_invoice_date** | **String** | The last invoice date of the service. | [optional] |
| **service_payment_status** | **String** | The payment status of the service. | [optional] |
| **service_frequency** | **String** | The frequency of the service payment. | [optional] |
| **next_date** | **String** | The next payment date of the service. | [optional] |
| **service_next_invoice_date** | **String** | The next invoice date of the service. | [optional] |
| **service_currency** | **String** | The currency of the service. | [optional] |
| **service_currency_symbol** | **String** | The currency symbol of the service. | [optional] |
| **service_cost_info** | **String** | The cost information of the service. | [optional] |
| **service_extra** | **Array&lt;String&gt;** | Extra information for the service. | [optional] |
| **service_extra_json** | **String** | Extra JSON information for the service. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::MailBillingDetails.new(
  service_last_invoice_date: July 16, 2023,
  service_payment_status: Unpaid,
  service_frequency: Monthly,
  next_date: 2023-08-16T00:55:05.000Z,
  service_next_invoice_date: August 16, 2023,
  service_currency: USD,
  service_currency_symbol: $,
  service_cost_info: 1.00,
  service_extra: [],
  service_extra_json: []
)
```

