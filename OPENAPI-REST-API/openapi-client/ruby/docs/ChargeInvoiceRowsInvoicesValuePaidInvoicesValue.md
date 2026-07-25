# InterServerClient::ChargeInvoiceRowsInvoicesValuePaidInvoicesValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoices_id** | **String** |  | [optional] |
| **invoices_description** | **String** |  | [optional] |
| **invoices_amount** | **Float** |  | [optional] |
| **invoices_date** | **String** |  | [optional] |
| **invoices_currency** | **String** |  | [optional] |
| **currency_symbol** | **String** |  | [optional] |
| **invoices_date_formatted** | **String** |  | [optional] |
| **payment_type** | **String** |  | [optional] |
| **refund_invoices** | [**Hash&lt;String, ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue&gt;**](ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue.md) | This is optional when refund is present this will show | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.new(
  invoices_id: null,
  invoices_description: null,
  invoices_amount: null,
  invoices_date: null,
  invoices_currency: null,
  currency_symbol: null,
  invoices_date_formatted: null,
  payment_type: null,
  refund_invoices: null
)
```

