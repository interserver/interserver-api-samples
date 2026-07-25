# InterServerClient::ChargeInvoiceRows

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | Whether the invoice retrieval was successful. | [optional] |
| **invoices** | [**Hash&lt;String, ChargeInvoiceRowsInvoicesValue&gt;**](ChargeInvoiceRowsInvoicesValue.md) | List of invoices for the service. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ChargeInvoiceRows.new(
  success: null,
  invoices: null
)
```

