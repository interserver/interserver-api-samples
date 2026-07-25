# InterServerClient::ChargeInvoiceRowsInvoicesValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoices_id** | **Float** | Unique invoice ID. | [optional] |
| **invoices_description** | **String** | Description of the invoice charge. | [optional] |
| **invoices_amount** | **Float** | Invoice amount. | [optional] |
| **invoices_date** | **String** | Invoice date. | [optional] |
| **invoices_paid** | **Float** |  | [optional] |
| **invoices_due_date** | **String** |  | [optional] |
| **invoices_currency** | **String** |  | [optional] |
| **currency_symbol** | **String** |  | [optional] |
| **invoices_date_formatted** | **String** |  | [optional] |
| **paid_invoices** | [**Hash&lt;String, ChargeInvoiceRowsInvoicesValuePaidInvoicesValue&gt;**](ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.md) | This is optional when invoices_paid &#x3D; 1 this array will show | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ChargeInvoiceRowsInvoicesValue.new(
  invoices_id: null,
  invoices_description: null,
  invoices_amount: null,
  invoices_date: null,
  invoices_paid: null,
  invoices_due_date: null,
  invoices_currency: null,
  currency_symbol: null,
  invoices_date_formatted: null,
  paid_invoices: null
)
```

