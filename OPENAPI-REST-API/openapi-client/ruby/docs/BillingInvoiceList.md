# InterServerClient::BillingInvoiceList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rows** | **Array&lt;Object&gt;** | Invoice rows returned for the account. | [optional] |
| **summary** | **Object** | Totals and summary data for the invoices list. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::BillingInvoiceList.new(
  rows: null,
  summary: null
)
```

