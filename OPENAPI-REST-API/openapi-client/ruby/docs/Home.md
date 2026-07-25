# InterServerClient::Home

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_login_ip** | **String** | Last login IP. |  |
| **last_login** | **String** | Last login time. |  |
| **currency** | **String** | Currency symbol. |  |
| **amount** | **String** | Amount with currency. |  |
| **invoice_list** | **Integer** | Number of invoices. |  |
| **balance** | **String** | Balance with currency. |  |
| **full_name** | **String** | Users full name. |  |
| **email** | **String** | User email address. |  |
| **tickets** | **Array&lt;String&gt;** | List of tickets. |  |
| **ticket_status** | [**HomeTicketStatus**](HomeTicketStatus.md) |  |  |
| **ticket_status_view** | [**HomeTicketStatusView**](HomeTicketStatusView.md) |  |  |
| **details** | [**HomeDetails**](HomeDetails.md) |  |  |
| **services** | [**HomeServices**](HomeServices.md) |  |  |
| **affiliate_amount** | **String** | Affiliate amount with currency. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::Home.new(
  last_login_ip: 99.88.77.66,
  last_login: 14:58:pm - 17 Aug, 2023,
  currency: $,
  amount: $23.50,
  invoice_list: 5,
  balance: $0.60,
  full_name: John,
  email: user@domain.com,
  tickets: null,
  ticket_status: null,
  ticket_status_view: null,
  details: null,
  services: null,
  affiliate_amount: 100
)
```

