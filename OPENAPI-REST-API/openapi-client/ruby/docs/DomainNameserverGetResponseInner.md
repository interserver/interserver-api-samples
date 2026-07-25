# InterServerClient::DomainNameserverGetResponseInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **ipaddress** | **String** |  |  |
| **can_delete** | **String** | Whether the registrar allows deletion of this nameserver entry. |  |

## Example

```ruby
require 'inter_server_client'

instance = InterServerClient::DomainNameserverGetResponseInner.new(
  name: ns1.domain.com,
  ipaddress: 1.2.3.4,
  can_delete: 1
)
```

