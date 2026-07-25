# InterServerClient::HomeTicketStatusView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_4** | **String** | Status corresponding to view number 4. | [optional] |
| **_5** | **String** | Status corresponding to view number 5. | [optional] |
| **_6** | **String** | Status corresponding to view number 6. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::HomeTicketStatusView.new(
  _4: Open,
  _5: On Hold,
  _6: Closed
)
```

