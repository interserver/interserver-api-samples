# InterServerClient::IpLimitRange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **String** | The begining (or first) IP address in the range. |  |
| **_end** | **String** | The ending (or last) IP address in the range. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::IpLimitRange.new(
  start: 1.2.3.0,
  _end: 1.2.3.255
)
```

