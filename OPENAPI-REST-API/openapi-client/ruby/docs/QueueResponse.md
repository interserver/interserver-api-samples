# InterServerClient::QueueResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | Response text |  |
| **queue_id** | **Integer** | The Queue ID attached to the action. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::QueueResponse.new(
  text: Action has been sent to the server. Please allow up to 2 minutes for action to be completed.,
  queue_id: 14670065
)
```

