# InterServerClient::StatusMonthlyBreakdown

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default** | [**MonthlyCounts**](MonthlyCounts.md) |  |  |
| **failed** | [**MonthlyCounts**](MonthlyCounts.md) |  |  |
| **rejected** | [**MonthlyCounts**](MonthlyCounts.md) |  |  |
| **pending** | [**MonthlyCounts**](MonthlyCounts.md) |  |  |
| **locked** | [**MonthlyCounts**](MonthlyCounts.md) |  |  |
| **paid** | [**MonthlyCounts**](MonthlyCounts.md) |  |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::StatusMonthlyBreakdown.new(
  default: null,
  failed: null,
  rejected: null,
  pending: null,
  locked: null,
  paid: null
)
```

