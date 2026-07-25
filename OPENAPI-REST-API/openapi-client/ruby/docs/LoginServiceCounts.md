# InterServerClient::LoginServiceCounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vps** | **Integer** | The number of total VPS orders that have been placed in our billing system. |  |
| **websites** | **Integer** | The number of total website orders that have been placed in our billing system. |  |
| **servers** | **Integer** | The number of total server orders that have been placed in our billing system. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::LoginServiceCounts.new(
  vps: 205172,
  websites: 205172,
  servers: 205172
)
```

