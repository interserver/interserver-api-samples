# InterServerClient::TicketDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ticketid** | **Integer** |  | [optional] |
| **ticketmaskid** | **String** |  | [optional] |
| **department** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **priority** | **String** |  | [optional] |
| **subject** | **String** |  | [optional] |
| **created_on** | **String** |  | [optional] |
| **updated_on** | **String** |  | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::TicketDetails.new(
  ticketid: null,
  ticketmaskid: null,
  department: null,
  status: null,
  priority: null,
  subject: null,
  created_on: null,
  updated_on: null
)
```

