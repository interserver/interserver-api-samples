# InterServerClient::ReverseDnsEntries

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ips** | **Hash&lt;String, Object&gt;** | The IPs you have access to and their current reverse dns mapping. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::ReverseDnsEntries.new(
  ips: null
)
```

