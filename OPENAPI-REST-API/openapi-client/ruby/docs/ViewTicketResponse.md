# InterServerClient::ViewTicketResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  |  |
| **ticket** | [**TicketDetails**](TicketDetails.md) |  |  |
| **ticket_custom_fields** | [**TicketCustomFieldDetails**](TicketCustomFieldDetails.md) |  | [optional] |
| **ticket_posts** | [**TicketPostDetails**](TicketPostDetails.md) |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ViewTicketResponse.new(
  success: null,
  ticket: null,
  ticket_custom_fields: null,
  ticket_posts: null
)
```

