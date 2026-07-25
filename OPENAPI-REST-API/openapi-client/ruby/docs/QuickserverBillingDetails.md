# InterServerClient::QuickserverBillingDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_last_invoice_date** | **String** | Last invoice date | [optional] |
| **service_payment_status** | **String** | Payment status | [optional] |
| **service_frequency** | **String** | Service frequency | [optional] |
| **next_date** | **String** | Next date | [optional] |
| **service_next_invoice_date** | **String** | Next invoice date | [optional] |
| **service_currency** | **String** | Currency | [optional] |
| **service_currency_symbol** | **String** | Currency symbol | [optional] |
| **service_cost_info** | **String** | Cost information | [optional] |
| **service_extra** | [**QuickserverServiceExtra**](QuickserverServiceExtra.md) |  | [optional] |
| **service_extra_json** | **String** | Extra information (JSON format) | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::QuickserverBillingDetails.new(
  service_last_invoice_date: April 11, 2023,
  service_payment_status: Paid,
  service_frequency: Monthly,
  next_date: 2023-05-11T20:00:06.000Z,
  service_next_invoice_date: May 11, 2023,
  service_currency: USD,
  service_currency_symbol: $,
  service_cost_info: 49.00,
  service_extra: null,
  service_extra_json: {&quot;platform&quot;:&quot;kvm&quot;}
)
```

