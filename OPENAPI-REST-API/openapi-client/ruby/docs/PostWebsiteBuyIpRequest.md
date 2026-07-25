# InterServerClient::PostWebsiteBuyIpRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ips** | **Hash&lt;String, String&gt;** | A map of IP addresses to their desired reverse DNS hostnames. | [optional] |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::PostWebsiteBuyIpRequest.new(
  ips: null
)
```

