# InterServerClient::DomainBillingDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_last_invoice_date** | **String** | Date of the last invoice for the domain. | [optional] |
| **service_payment_status** | **String** | Current payment status (e.g., Paid, Unpaid). | [optional] |
| **service_frequency** | **String** | Billing frequency (e.g., Yearly, Monthly). | [optional] |
| **next_date** | **String** | Next billing date (ISO 8601). | [optional] |
| **service_next_invoice_date** | **String** | Human-readable next invoice date. | [optional] |
| **service_currency** | **String** | Billing currency code. | [optional] |
| **service_currency_symbol** | **String** | Billing currency symbol. | [optional] |
| **service_cost_info** | **String** | Cost breakdown information. | [optional] |
| **service_extra** | [**DomainBillingExtra**](DomainBillingExtra.md) |  | [optional] |
| **service_extra_json** | **String** | Raw JSON string of extra billing data. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainBillingDetails.new(
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

