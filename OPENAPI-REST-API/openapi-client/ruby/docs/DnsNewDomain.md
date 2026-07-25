# InterServerClient::DnsNewDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | The domain name. |  |
| **ip** | **String** | IP Address to point the domain to. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DnsNewDomain.new(
  domain: mydomain.com,
  ip: 1.2.3.4
)
```

