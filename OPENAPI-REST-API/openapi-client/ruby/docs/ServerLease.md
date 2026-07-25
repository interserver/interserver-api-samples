# InterServerClient::ServerLease

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mac** | **String** | MAC address associated with the lease. |  |
| **authenticated** | **Boolean** | Indicates if the lease is authenticated. |  |
| **group** | **String** | Group identifier for the lease. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ServerLease.new(
  mac: 0c:c4:7a:af:35:00,
  authenticated: false,
  group: 1
)
```

