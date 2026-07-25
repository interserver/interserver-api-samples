# InterServerClient::BackupBillingDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_last_invoice_date** | **String** | Last invoice date of the service. | [optional] |
| **service_payment_status** | **String** | Payment status of the service. | [optional] |
| **service_frequency** | **String** | Billing frequency of the service. | [optional] |
| **next_date** | **String** | Next billing date of the service. | [optional] |
| **service_next_invoice_date** | **String** | Next invoice date of the service. | [optional] |
| **service_currency** | **String** | Currency of the service. | [optional] |
| **service_currency_symbol** | **String** | Currency symbol of the service. | [optional] |
| **service_cost_info** | **String** | Cost information of the service. | [optional] |
| **service_extra** | **String** | Service Extra Info | [optional] |
| **service_extra_json** | **String** | JSON representation of extra service information. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BackupBillingDetails.new(
  service_last_invoice_date: December 29, 2021,
  service_payment_status: Paid,
  service_frequency: Monthly,
  next_date: 2022-01-29T14:09:57.000Z,
  service_next_invoice_date: January 29, 2022,
  service_currency: USD,
  service_currency_symbol: $,
  service_cost_info: 3,
  service_extra: [],
  service_extra_json: []
)
```

